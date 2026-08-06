# Implementing repo support labels

This implements the "Support labeling" bullet under Extensions
(`github.com/meshery-extensions`) in `GOVERNANCE.md`:

> **Support labeling.** Each extension's documentation indicates its
> support level so that users understand what to expect:
> - **Official.** Maintained by the core maintainers or designated
>   maintainers, with robust support and compatibility testing against
>   supported core releases.
> - **Community.** Maintained by community contributors, with support and
>   release cadence determined by those maintainers.

The "meshery-extensions repos by support type" sheet is the source data: 28
repos in `meshery-extensions` (15 active official, 9 active community, 4
archived official), plus a blanket "official" for every repo in `meshery`
itself, since the core platform is official by definition.

## Mechanism: three layers, one source of truth

| Layer | What it's for | Where it lives |
| --- | --- | --- |
| Org custom property `support` | Machine-readable, queryable, enforced (single-select, no typos) | GitHub org settings, via API |
| Repo topic `support-official` / `support-community` | Public, shows on the repo's own homepage, works on every GitHub plan tier | Repo topics, via API |
| README badge | Human-readable, visible without leaving the README | Each repo's README |

Custom properties are the system of record. GitHub's org-level custom
properties API takes a `single_select` type with an `allowed_values` list,
so a value outside `official` / `community` is rejected outright rather than
caught later by review. Topics exist because they are visible on the repo
page itself and carry no plan-tier risk. Badges exist because a CNCF
reviewer or a prospective adopter reads READMEs, not API responses.

All three are generated from one file, `support-labels/manifest.yaml`, so
there is exactly one place to change a repo's label.

One thing to confirm before rollout: repository custom properties are
documented at `docs.github.com` (not only the `enterprise-cloud` docs tree),
which is a good sign they work on Free/Team org plans and not only GitHub
Enterprise Cloud, but it is worth a five-minute check in
`https://github.com/organizations/meshery-extensions/settings/custom-properties`
before depending on it. Topics have no such dependency and can ship
regardless.

## Rollout

1. **Bootstrap the schema (one time, per org, by an org owner).**

   ```
   GH_TOKEN=<org-owner token> ./scripts/bootstrap-schema.sh meshery official
   GH_TOKEN=<org-owner token> ./scripts/bootstrap-schema.sh meshery-extensions
   ```

   This defines the `support` property as `single_select`, `required: true`,
   `allowed_values: [official, community]`. `meshery` gets a
   `default_value` of `official` since every core repo starts there.
   `meshery-extensions` gets no default, which means GitHub will flag any
   new repo as missing a required property until someone sets one, a
   natural enforcement point for the onboarding step below.

   This step needs the org-level "Custom properties" admin permission,
   which is more privileged than day-to-day automation should carry, so it
   is a manual, human-run script rather than part of the recurring
   workflow.

2. **Apply the manifest (automated).** `.github/workflows/apply-support-labels.yml`
   runs `apply-support-labels.sh` on every push to `manifest.yaml` and on
   demand. It sets the `support` property on each repo via the batched
   `PATCH /orgs/{org}/properties/values` endpoint (30 repos per call, so
   `meshery-extensions` fits in a single call today), then sets the
   matching topic on each repo. For `meshery`, it lists every repo in the
   org and applies `default_label` unless the repo appears in
   `overrides:`, so the "all repos are official" row in the sheet is an
   explicit, auditable value per repo rather than an assumption.

3. **Catch drift (automated, scheduled).**
   `.github/workflows/audit-support-labels.yml` runs weekly, compares the
   live custom property values in `meshery-extensions` against the
   manifest, and files or updates a single tracking issue in
   `meshery-extensions/.github` when they disagree, covering both a
   forgotten manual change on GitHub and a new repo that was never added
   to the manifest.

4. **Wire into onboarding.** GOVERNANCE.md already routes new extensions
   through "Adding a subproject or extension." Add one line to that
   checklist: the admitting PR must add the new repo to
   `support-labels/manifest.yaml` with its label before the repo is
   considered onboarded. That turns this from a one-time cleanup into the
   mechanism that keeps the sheet accurate going forward, which is the
   part a CNCF reviewer will actually care about.

5. **Add badges.** `README-badges.md` has the two snippets to paste into
   each repo's README. This is a one-time manual pass since it touches
   file content in every repo rather than metadata; a scripted PR-per-repo
   pass is possible later if that manual pass is unwanted.

## Security note

`SUPPORT_LABELS_TOKEN` needs write access to custom property values and repo
administration (for topics) across two orgs, which is a broad grant for a
token tied to one person. Since Meshery's TAG-Security self-assessment is
already in progress, this is a reasonable place to use a GitHub App scoped
to exactly these permissions and installed on both orgs, rather than a
personal fine-grained PAT stored as an org secret. The bootstrap script
intentionally requires a separate, more privileged, human-run credential
(`custom_properties_org_definitions_manager`) so the recurring automation
never needs schema-admin rights, only `custom_properties_org_values_editor`.

## Scope note

The audit workflow currently only checks `meshery-extensions`, where every
repo needs an explicit label. `meshery` relies on the required
`default_value` at the schema level, so drift there would show up as a repo
GitHub flags as missing a required property rather than as a manifest
mismatch. If the core org's repo count grows enough to want the same
explicit audit trail, `audit-support-labels.sh` extends to it the same way
`apply-support-labels.sh` already does.
