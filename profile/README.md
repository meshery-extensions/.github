<div>
    <!-- Top section -->
    <div>
        <img src="https://raw.githubusercontent.com/meshery-extensions/.github/master/profile/assets/img/meshery-extensions-github.png" usemap="#workmap"  />
    </div>
    <!-- Overview section -->
    <div align="center">
        <h3>Meshery is an extensible, self-service engineering plaform for the collaborative management of cloud and cloud native infrastructure.</h3>
        <h3 align="center"><a href="https://meshery.io/extensions">Browse all extensions</a></h3>
        <h5 align="center">
            <a href="https://meshery.io#getting-started">Installation</a> |
            <a href="https://docs.meshery.io">Documentation</a> |
            <a href="https://discuss.meshery.io">Forum</a> |
            <a href="https://play.meshery.io">Playground</a> |
            <a href="https://meshery.io/catalog">Catalog</a>
        </h5>
        <br />
    </div>
This organization is home to [Meshery's extensions](https://meshery.io/extensions): the adapters, integrations, and plugins that connect Meshery to the cloud native tools you already use. Core platform development happens over in [github.com/meshery](https://github.com/meshery); everything here in **meshery-extensions** builds on that core, adding new [integrations](https://meshery.io/integrations) and extending what Meshery can do.
Extensions come in several flavors, covering the different [types of extensions](https://docs.meshery.io/extensions/) Meshery supports:
- [Academies](https://docs.meshery.io/extensions/academies): Academy extensions enable Meshery as an integrated learning platform.
- [Adapters](https://docs.meshery.io/concepts/architecture/adapters): Adapters allow Meshery to interface with different cloud native infrastructure.
- [Build-time](https://docs.meshery.io/reference/extensibility/build-time/): enable integrators to inject custom configurations, data, provider extensions, and other resources directly into the Meshery container image at build-time.
- CLI: Helm and _kubectl_ plugins that let you create Kanvas snapshots from Helm charts, Kubernetes manifests, and the current state of your Kubernetes cluster, then upload them to Meshery.
    - [Kubectl CLI Plugin](https://docs.meshery.io/extensions/kubectl-meshsync-snapshot/)
    - [Helm CLI Plugin](https://docs.meshery.io/extensions/helm-kanvas-snapshot/)
- [Load Generators](https://docs.meshery.io/extensibility/load-generators): for performance characterization and benchmarking.
- [Models](https://docs.meshery.io/extensions/models/): component-based (semantically and non-semantically meaningful) support for a broad variety of platforms, tools, and technologies.
- [Providers](https://docs.meshery.io/extensibility/providers): for connecting to different cloud providers and infrastructure platforms.
- [Schemas](https://docs.meshery.io/reference/extensibility/schemas/) - Meshery schemas are conscientiously extensible via `x-*` vendor extensions.
- [UI Plugins](https://docs.meshery.io/extensibility/ui): Meshery UI has a number of extension points that allow users to customize their experience with third-party plugins.
This organization is managed by Meshery's core and extension maintainers, and new repositories here are sponsored and created by one or more of them. Curious why extensions live in a separate organization from the core platform? As Meshery grew into one of the [highest-velocity projects in the CNCF](https://meshery.io/blog/sixth-highest-velocity-cncf-project), managing hundreds of integrations within a single organization became unwieldy, so maintainers split things up for cleaner permissions, contribution flows, and release cycles. Read the full story in [The Meshery Umbrella Expands](https://meshery.io/blog/2025/meshery-ecosystem-expansion).
<!-- Blog Post and Explanation section -->
<!-- Video Section -->
<h3 align="center">See Meshery and it's plugins in-action</h3>
    <img src="https://raw.githubusercontent.com/meshery/.github/master/profile/assets/img/meshery-dashboard-hero-image.png"  />
<!--     <div align="center"><i>Example extension. See other <a href="https://meshery.io/extensions">Meshery Extensions</a>.<i></div>
    <br /> -->
    <!-- Repositories section -->
<div>
    <h2>Repositories</h2>
    <p>Repositories are grouped by support level with <a href="https://github.com/meshery/meshery/blob/master/GOVERNANCE.md#extensions-githubcommeshery-extensions"><img src="https://img.shields.io/badge/support-official-2f6feb?style=flat-square&logo=meshery&logoColor=white" alt="Level of support for this repo" /></a> listed first and <a href="https://github.com/meshery/meshery/blob/master/GOVERNANCE.md#extensions-githubcommeshery-extensions"><img src="https://img.shields.io/badge/support-community-00b39f?style=flat-square&logo=meshery&logoColor=white" alt="Level of support for this repo" /></a> second. Extensions are listed alphabetically within each support group. See <a href="https://github.com/meshery/meshery/blob/master/GOVERNANCE.md#extensions-githubcommeshery-extensions">GOVERNANCE.md</a> for what each support level commits to, and <a href="https://github.com/meshery-extensions/.github/blob/master/support-labels/manifest.yaml">support-labels/manifest.yaml</a> for the source of truth behind these badges.</p>
    <h3>Officially supported</h3>
    <p>Maintained by the core maintainers or designated maintainers, with robust support and compatibility testing against supported core releases.</p>
    <table border="0px" align="center">
        <tr>
            <!-- .github -->
            <td style="padding: 28px;">
                <h2 align="left"><a href="https://github.com/meshery-extensions/.github">.github</a></h2>
                <img src="https://raw.githubusercontent.com/meshery-extensions/.github/master/profile/assets/img/meshery-extensions-color.svg" style="margin-right:10px;" width="75px" alt="Meshery Logo" align="left" />
                <p>Organization-level community health files, this profile README, and the support-label manifest and automation that keep every repository's support level in sync.</p>
                <p align="left">
                    <a href="https://github.com/meshery/meshery/blob/master/GOVERNANCE.md#extensions-githubcommeshery-extensions"><img src="https://img.shields.io/badge/support-official-2f6feb?style=flat-square&logo=meshery&logoColor=white" alt="Level of support for this repo" /></a>
                    <a href="https://github.com/meshery-extensions/.github/graphs/contributors"><img src="https://img.shields.io/github/contributors/meshery-extensions/.github.svg" /></a>
                    <a href="https://github.com/issues?q=is%3Aopen+is%3Aissue+archived%3Afalse+org%3Ameshery-extensions+repo%3A.github+label%3A%22help+wanted%22+"><img src="https://img.shields.io/github/issues/meshery-extensions/.github/help%20wanted.svg?color=informational" /></a>
                </p>
            </td>
        </tr>
        <tr>
            <!-- integrations-workflow -->
            <td style="padding: 28px;">
                <h2 align="left"><a href="https://github.com/meshery-extensions/integrations-workflow">integrations-workflow</a></h2>
                <img src="https://raw.githubusercontent.com/meshery-extensions/.github/master/profile/assets/img/meshery-extensions-color.svg" style="margin-right:10px;" width="75px" alt="Meshery Logo" align="left" />
                <p>The Meshery Integrator and provider notifier workflows that automate integration onboarding, registry updates, and downstream notifications across the ecosystem.</p>
                <p align="left">
                    <a href="https://github.com/meshery/meshery/blob/master/GOVERNANCE.md#extensions-githubcommeshery-extensions"><img src="https://img.shields.io/badge/support-official-2f6feb?style=flat-square&logo=meshery&logoColor=white" alt="Level of support for this repo" /></a>
                    <a href="https://github.com/meshery-extensions/integrations-workflow/graphs/contributors"><img src="https://img.shields.io/github/contributors/meshery-extensions/integrations-workflow.svg" /></a>
                    <a href="https://github.com/issues?q=is%3Aopen+is%3Aissue+archived%3Afalse+org%3Ameshery-extensions+repo%3Aintegrations-workflow+label%3A%22help+wanted%22+"><img src="https://img.shields.io/github/issues/meshery-extensions/integrations-workflow/help%20wanted.svg?color=informational" /></a>
                </p>
            </td>
        </tr>
        <tr>
            <!-- kubectl-meshsync-snapshot -->
            <td style="padding: 28px;">
                <h2 align="left"><a href="https://github.com/meshery-extensions/kubectl-meshsync-snapshot">kubectl-meshsync-snapshot</a></h2>
                <img src="https://raw.githubusercontent.com/meshery-extensions/.github/master/profile/assets/img/meshery-extensions-color.svg" style="margin-right:10px;" width="75px" alt="Meshery Logo" align="left" />
                <p>A <code>kubectl</code> plugin that captures a MeshSync snapshot of the current state of your Kubernetes cluster and uploads it to Meshery as a design.</p>
                <p align="left">
                    <a href="https://github.com/meshery/meshery/blob/master/GOVERNANCE.md#extensions-githubcommeshery-extensions"><img src="https://img.shields.io/badge/support-official-2f6feb?style=flat-square&logo=meshery&logoColor=white" alt="Level of support for this repo" /></a>
                    <a href="https://github.com/meshery-extensions/kubectl-meshsync-snapshot/graphs/contributors"><img src="https://img.shields.io/github/contributors/meshery-extensions/kubectl-meshsync-snapshot.svg" /></a>
                    <a href="https://github.com/issues?q=is%3Aopen+is%3Aissue+archived%3Afalse+org%3Ameshery-extensions+repo%3Akubectl-meshsync-snapshot+label%3A%22help+wanted%22+"><img src="https://img.shields.io/github/issues/meshery-extensions/kubectl-meshsync-snapshot/help%20wanted.svg?color=informational" /></a>
                </p>
            </td>
        </tr>
        <tr>
            <!-- meshery-adapter-template -->
            <td style="padding: 28px;">
                <h2 align="left"><a href="https://github.com/meshery-extensions/meshery-adapter-template">meshery-adapter-template</a></h2>
                <img src="https://raw.githubusercontent.com/meshery-extensions/.github/master/profile/assets/img/meshery-extensions-color.svg" style="margin-right:10px;" width="75px" alt="Meshery Logo" align="left" />
                <p>The canonical template repository and scaffolding used to bootstrap new Meshery adapters, complete with the shared adapter library, gRPC contracts, and CI conventions.</p>
                <p align="left">
                    <a href="https://github.com/meshery/meshery/blob/master/GOVERNANCE.md#extensions-githubcommeshery-extensions"><img src="https://img.shields.io/badge/support-official-2f6feb?style=flat-square&logo=meshery&logoColor=white" alt="Level of support for this repo" /></a>
                    <a href="https://github.com/meshery-extensions/meshery-adapter-template/graphs/contributors"><img src="https://img.shields.io/github/contributors/meshery-extensions/meshery-adapter-template.svg" /></a>
                    <a href="https://github.com/issues?q=is%3Aopen+is%3Aissue+archived%3Afalse+org%3Ameshery-extensions+repo%3Ameshery-adapter-template+label%3A%22help+wanted%22+"><img src="https://img.shields.io/github/issues/meshery-extensions/meshery-adapter-template/help%20wanted.svg?color=informational" /></a>
                </p>
            </td>
        </tr>
        <tr>
            <!-- meshery-app-mesh -->
            <td style="padding: 28px;">
                <h2 align="left"><a href="https://github.com/meshery-extensions/meshery-app-mesh">meshery-app-mesh</a></h2>
                <img src="https://raw.githubusercontent.com/meshery-extensions/.github/master/profile/assets/img/meshery-extensions-color.svg" style="margin-right:10px;" width="75px" alt="Meshery Logo" align="left" />
                <p>The Meshery adapter for AWS App Mesh, managing App Mesh lifecycle operations and configuration across Amazon's managed service mesh offering.</p>
                <p align="left">
                    <a href="https://github.com/meshery/meshery/blob/master/GOVERNANCE.md#extensions-githubcommeshery-extensions"><img src="https://img.shields.io/badge/support-official-2f6feb?style=flat-square&logo=meshery&logoColor=white" alt="Level of support for this repo" /></a>
                    <a href="https://github.com/meshery-extensions/meshery-app-mesh/graphs/contributors"><img src="https://img.shields.io/github/contributors/meshery-extensions/meshery-app-mesh.svg" /></a>
                    <a href="https://github.com/issues?q=is%3Aopen+is%3Aissue+archived%3Afalse+org%3Ameshery-extensions+repo%3Ameshery-app-mesh+label%3A%22help+wanted%22+"><img src="https://img.shields.io/github/issues/meshery-extensions/meshery-app-mesh/help%20wanted.svg?color=informational" /></a>
                </p>
            </td>
        </tr>
        <tr>
            <!-- meshery-cilium -->
            <td style="padding: 28px;">
                <h2 align="left"><a href="https://github.com/meshery-extensions/meshery-cilium">meshery-cilium</a></h2>
                <img src="https://raw.githubusercontent.com/meshery-extensions/.github/master/profile/assets/img/meshery-extensions-color.svg" style="margin-right:10px;" width="75px" alt="Meshery Logo" align="left" />
                <p>The Meshery adapter for Cilium Service Mesh, bringing eBPF-based networking, observability, and security policy under Meshery's unified management model.</p>
                <p align="left">
                    <a href="https://github.com/meshery/meshery/blob/master/GOVERNANCE.md#extensions-githubcommeshery-extensions"><img src="https://img.shields.io/badge/support-official-2f6feb?style=flat-square&logo=meshery&logoColor=white" alt="Level of support for this repo" /></a>
                    <a href="https://github.com/meshery-extensions/meshery-cilium/graphs/contributors"><img src="https://img.shields.io/github/contributors/meshery-extensions/meshery-cilium.svg" /></a>
                    <a href="https://github.com/issues?q=is%3Aopen+is%3Aissue+archived%3Afalse+org%3Ameshery-extensions+repo%3Ameshery-cilium+label%3A%22help+wanted%22+"><img src="https://img.shields.io/github/issues/meshery-extensions/meshery-cilium/help%20wanted.svg?color=informational" /></a>
                </p>
            </td>
        </tr>
        <tr>
            <!-- meshery-consul -->
            <td style="padding: 28px;">
                <h2 align="left"><a href="https://github.com/meshery-extensions/meshery-consul">meshery-consul</a></h2>
                <img src="https://raw.githubusercontent.com/meshery-extensions/.github/master/profile/assets/img/meshery-extensions-color.svg" style="margin-right:10px;" width="75px" alt="Meshery Logo" align="left" />
                <p>The Meshery adapter for Consul, managing the lifecycle and configuration of Consul service mesh deployments and their connected services.</p>
                <p align="left">
                    <a href="https://github.com/meshery/meshery/blob/master/GOVERNANCE.md#extensions-githubcommeshery-extensions"><img src="https://img.shields.io/badge/support-official-2f6feb?style=flat-square&logo=meshery&logoColor=white" alt="Level of support for this repo" /></a>
                    <a href="https://github.com/meshery-extensions/meshery-consul/graphs/contributors"><img src="https://img.shields.io/github/contributors/meshery-extensions/meshery-consul.svg" /></a>
                    <a href="https://github.com/issues?q=is%3Aopen+is%3Aissue+archived%3Afalse+org%3Ameshery-extensions+repo%3Ameshery-consul+label%3A%22help+wanted%22+"><img src="https://img.shields.io/github/issues/meshery-extensions/meshery-consul/help%20wanted.svg?color=informational" /></a>
                </p>
            </td>
        </tr>
        <tr>
            <!-- meshery-istio -->
            <td style="padding: 28px;">
                <h2 align="left"><a href="https://github.com/meshery-extensions/meshery-istio">meshery-istio</a></h2>
                <img src="https://raw.githubusercontent.com/meshery-extensions/.github/master/profile/assets/img/meshery-extensions-color.svg" style="margin-right:10px;" width="75px" alt="Meshery Logo" align="left" />
                <p>The Meshery adapter for Istio, delivering lifecycle management, configuration validation, and performance characterization of the Istio service mesh and its workloads.</p>
                <p align="left">
                    <a href="https://github.com/meshery/meshery/blob/master/GOVERNANCE.md#extensions-githubcommeshery-extensions"><img src="https://img.shields.io/badge/support-official-2f6feb?style=flat-square&logo=meshery&logoColor=white" alt="Level of support for this repo" /></a>
                    <a href="https://github.com/meshery-extensions/meshery-istio/graphs/contributors"><img src="https://img.shields.io/github/contributors/meshery-extensions/meshery-istio.svg" /></a>
                    <a href="https://github.com/issues?q=is%3Aopen+is%3Aissue+archived%3Afalse+org%3Ameshery-extensions+repo%3Ameshery-istio+label%3A%22help+wanted%22+"><img src="https://img.shields.io/github/issues/meshery-extensions/meshery-istio/help%20wanted.svg?color=informational" /></a>
                </p>
            </td>
        </tr>
        <tr>
            <!-- meshery-kuma -->
            <td style="padding: 28px;">
                <h2 align="left"><a href="https://github.com/meshery-extensions/meshery-kuma">meshery-kuma</a></h2>
                <img src="https://raw.githubusercontent.com/meshery-extensions/.github/master/profile/assets/img/meshery-extensions-color.svg" style="margin-right:10px;" width="75px" alt="Meshery Logo" align="left" />
                <p>The Meshery adapter for Kuma, providing lifecycle management and operational insight for Kuma control planes and their attached data plane proxies.</p>
                <p align="left">
                    <a href="https://github.com/meshery/meshery/blob/master/GOVERNANCE.md#extensions-githubcommeshery-extensions"><img src="https://img.shields.io/badge/support-official-2f6feb?style=flat-square&logo=meshery&logoColor=white" alt="Level of support for this repo" /></a>
                    <a href="https://github.com/meshery-extensions/meshery-kuma/graphs/contributors"><img src="https://img.shields.io/github/contributors/meshery-extensions/meshery-kuma.svg" /></a>
                    <a href="https://github.com/issues?q=is%3Aopen+is%3Aissue+archived%3Afalse+org%3Ameshery-extensions+repo%3Ameshery-kuma+label%3A%22help+wanted%22+"><img src="https://img.shields.io/github/issues/meshery-extensions/meshery-kuma/help%20wanted.svg?color=informational" /></a>
                </p>
            </td>
        </tr>
        <tr>
            <!-- meshery-linkerd -->
            <td style="padding: 28px;">
                <h2 align="left"><a href="https://github.com/meshery-extensions/meshery-linkerd">meshery-linkerd</a></h2>
                <img src="https://raw.githubusercontent.com/meshery-extensions/.github/master/profile/assets/img/meshery-extensions-color.svg" style="margin-right:10px;" width="75px" alt="Meshery Logo" align="left" />
                <p>The Meshery adapter for Linkerd, handling mesh provisioning, sample application deployment, and conformance and performance testing of Linkerd installations.</p>
                <p align="left">
                    <a href="https://github.com/meshery/meshery/blob/master/GOVERNANCE.md#extensions-githubcommeshery-extensions"><img src="https://img.shields.io/badge/support-official-2f6feb?style=flat-square&logo=meshery&logoColor=white" alt="Level of support for this repo" /></a>
                    <a href="https://github.com/meshery-extensions/meshery-linkerd/graphs/contributors"><img src="https://img.shields.io/github/contributors/meshery-extensions/meshery-linkerd.svg" /></a>
                    <a href="https://github.com/issues?q=is%3Aopen+is%3Aissue+archived%3Afalse+org%3Ameshery-extensions+repo%3Ameshery-linkerd+label%3A%22help+wanted%22+"><img src="https://img.shields.io/github/issues/meshery-extensions/meshery-linkerd/help%20wanted.svg?color=informational" /></a>
                </p>
            </td>
        </tr>
        <tr>
            <!-- meshery-nginx-sm -->
            <td style="padding: 28px;">
                <h2 align="left"><a href="https://github.com/meshery-extensions/meshery-nginx-sm">meshery-nginx-sm</a></h2>
                <img src="https://raw.githubusercontent.com/meshery-extensions/.github/master/profile/assets/img/meshery-extensions-color.svg" style="margin-right:10px;" width="75px" alt="Meshery Logo" align="left" />
                <p>The Meshery adapter for NGINX Service Mesh, managing the deployment, configuration, and operational lifecycle of NGINX-based mesh installations.</p>
                <p align="left">
                    <a href="https://github.com/meshery/meshery/blob/master/GOVERNANCE.md#extensions-githubcommeshery-extensions"><img src="https://img.shields.io/badge/support-official-2f6feb?style=flat-square&logo=meshery&logoColor=white" alt="Level of support for this repo" /></a>
                    <a href="https://github.com/meshery-extensions/meshery-nginx-sm/graphs/contributors"><img src="https://img.shields.io/github/contributors/meshery-extensions/meshery-nginx-sm.svg" /></a>
                    <a href="https://github.com/issues?q=is%3Aopen+is%3Aissue+archived%3Afalse+org%3Ameshery-extensions+repo%3Ameshery-nginx-sm+label%3A%22help+wanted%22+"><img src="https://img.shields.io/github/issues/meshery-extensions/meshery-nginx-sm/help%20wanted.svg?color=informational" /></a>
                </p>
            </td>
        </tr>
        <tr>
            <!-- meshery-nighthawk -->
            <td style="padding: 28px;">
                <h2 align="left"><a href="https://github.com/meshery-extensions/meshery-nighthawk">meshery-nighthawk</a></h2>
                <img src="https://raw.githubusercontent.com/meshery-extensions/.github/master/profile/assets/img/meshery-extensions-color.svg" style="margin-right:10px;" width="75px" alt="Meshery Logo" align="left" />
                <p>An extension adapter designed for managing and orchestrating Nighthawk—the distributed layer-seven traffic and performance benchmarking subsystem.</p>
                <p align="left">
                    <a href="https://github.com/meshery/meshery/blob/master/GOVERNANCE.md#extensions-githubcommeshery-extensions"><img src="https://img.shields.io/badge/support-official-2f6feb?style=flat-square&logo=meshery&logoColor=white" alt="Level of support for this repo" /></a>
                    <a href="https://github.com/meshery-extensions/meshery-nighthawk/graphs/contributors"><img src="https://img.shields.io/github/contributors/meshery-extensions/meshery-nighthawk.svg" /></a>
                    <a href="https://github.com/issues?q=is%3Aopen+is%3Aissue+archived%3Afalse+org%3Ameshery-extensions+repo%3Ameshery-nighthawk+label%3A%22help+wanted%22+"><img src="https://img.shields.io/github/issues/meshery-extensions/meshery-nighthawk/help%20wanted.svg?color=informational" /></a>
                </p>
            </td>
        </tr>
        <tr>
            <!-- meshery-nsm -->
            <td style="padding: 28px;">
                <h2 align="left"><a href="https://github.com/meshery-extensions/meshery-nsm">meshery-nsm</a></h2>
                <img src="https://raw.githubusercontent.com/meshery-extensions/.github/master/profile/assets/img/meshery-extensions-color.svg" style="margin-right:10px;" width="75px" alt="Meshery Logo" align="left" />
                <p>The Meshery adapter for Network Service Mesh, managing NSM deployments and the dynamic, workload-level network service connections they establish.</p>
                <p align="left">
                    <a href="https://github.com/meshery/meshery/blob/master/GOVERNANCE.md#extensions-githubcommeshery-extensions"><img src="https://img.shields.io/badge/support-official-2f6feb?style=flat-square&logo=meshery&logoColor=white" alt="Level of support for this repo" /></a>
                    <a href="https://github.com/meshery-extensions/meshery-nsm/graphs/contributors"><img src="https://img.shields.io/github/contributors/meshery-extensions/meshery-nsm.svg" /></a>
                    <a href="https://github.com/issues?q=is%3Aopen+is%3Aissue+archived%3Afalse+org%3Ameshery-extensions+repo%3Ameshery-nsm+label%3A%22help+wanted%22+"><img src="https://img.shields.io/github/issues/meshery-extensions/meshery-nsm/help%20wanted.svg?color=informational" /></a>
                </p>
            </td>
        </tr>
        <tr>
            <!-- meshery-traefik-mesh -->
            <td style="padding: 28px;">
                <h2 align="left"><a href="https://github.com/meshery-extensions/meshery-traefik-mesh">meshery-traefik-mesh</a></h2>
                <img src="https://raw.githubusercontent.com/meshery-extensions/.github/master/profile/assets/img/meshery-extensions-color.svg" style="margin-right:10px;" width="75px" alt="Meshery Logo" align="left" />
                <p>The Meshery adapter for Traefik Mesh, covering lifecycle management, configuration, and performance characterization of Traefik's lightweight service mesh.</p>
                <p align="left">
                    <a href="https://github.com/meshery/meshery/blob/master/GOVERNANCE.md#extensions-githubcommeshery-extensions"><img src="https://img.shields.io/badge/support-official-2f6feb?style=flat-square&logo=meshery&logoColor=white" alt="Level of support for this repo" /></a>
                    <a href="https://github.com/meshery-extensions/meshery-traefik-mesh/graphs/contributors"><img src="https://img.shields.io/github/contributors/meshery-extensions/meshery-traefik-mesh.svg" /></a>
                    <a href="https://github.com/issues?q=is%3Aopen+is%3Aissue+archived%3Afalse+org%3Ameshery-extensions+repo%3Ameshery-traefik-mesh+label%3A%22help+wanted%22+"><img src="https://img.shields.io/github/issues/meshery-extensions/meshery-traefik-mesh/help%20wanted.svg?color=informational" /></a>
                </p>
            </td>
        </tr>
    </table>
    <h3>Community supported</h3>
    <p>Maintained by community contributors, with support and release cadence determined by those maintainers.</p>
    <table border="0px" align="center">
        <tr>
            <!-- digitalocean-academy -->
            <td style="padding: 28px;">
                <h2 align="left"><a href="https://github.com/meshery-extensions/digitalocean-academy">digitalocean-academy</a></h2>
                <img src="https://raw.githubusercontent.com/meshery-extensions/.github/master/profile/assets/img/meshery-extensions-color.svg" style="margin-right:10px;" width="75px" alt="Meshery Logo" align="left" />
                <p>The Meshery Academy for DigitalOcean—hands-on courseware and labs teaching cloud native operations on DigitalOcean Kubernetes.</p>
                <p align="left">
                    <a href="https://github.com/meshery/meshery/blob/master/GOVERNANCE.md#extensions-githubcommeshery-extensions"><img src="https://img.shields.io/badge/support-community-00B39F?style=flat-square&logo=meshery&logoColor=white" alt="Level of support for this repo" /></a>
                    <a href="https://github.com/meshery-extensions/digitalocean-academy/graphs/contributors"><img src="https://img.shields.io/github/contributors/meshery-extensions/digitalocean-academy.svg" /></a>
                    <a href="https://github.com/issues?q=is%3Aopen+is%3Aissue+archived%3Afalse+org%3Ameshery-extensions+repo%3Adigitalocean-academy+label%3A%22help+wanted%22+"><img src="https://img.shields.io/github/issues/meshery-extensions/digitalocean-academy/help%20wanted.svg?color=informational" /></a>
                </p>
            </td>
        </tr>
        <tr>
            <!-- helm-kanvas-snapshot -->
            <td style="padding: 28px;">
                <h2 align="left"><a href="https://github.com/meshery-extensions/helm-kanvas-snapshot">helm-kanvas-snapshot</a></h2>
                <img src="https://raw.githubusercontent.com/meshery-extensions/.github/master/profile/assets/img/meshery-extensions-color.svg" style="margin-right:10px;" width="75px" alt="Meshery Logo" align="left" />
                <p>A Helm plugin extension engineered to generate exportable visual architectural maps and structural snapshots directly from packaged Helm charts.</p>
                <p align="left">
                    <a href="https://github.com/meshery/meshery/blob/master/GOVERNANCE.md#extensions-githubcommeshery-extensions"><img src="https://img.shields.io/badge/support-community-00B39F?style=flat-square&logo=meshery&logoColor=white" alt="Level of support for this repo" /></a>
                    <a href="https://github.com/meshery-extensions/helm-kanvas-snapshot/graphs/contributors"><img src="https://img.shields.io/github/contributors/meshery-extensions/helm-kanvas-snapshot.svg" /></a>
                    <a href="https://github.com/issues?q=is%3Aopen+is%3Aissue+archived%3Afalse+org%3Ameshery-extensions+repo%3Ahelm-kanvas-snapshot+label%3A%22help+wanted%22+"><img src="https://img.shields.io/github/issues/meshery-extensions/helm-kanvas-snapshot/help%20wanted.svg?color=informational" /></a>
                </p>
            </td>
        </tr>
        <tr>
            <!-- kanvas-site -->
            <td style="padding: 28px;">
                <h2 align="left"><a href="https://github.com/meshery-extensions/kanvas-site">kanvas-site</a></h2>
                <img src="https://raw.githubusercontent.com/meshery-extensions/.github/master/profile/assets/img/meshery-extensions-color.svg" style="margin-right:10px;" width="75px" alt="Meshery Logo" align="left" />
                <p>The documentation, platform web application site, and landing interface for Kanvas—the collaborative visual designer for cloud-native infrastructure.</p>
                <p align="left">
                    <a href="https://github.com/meshery/meshery/blob/master/GOVERNANCE.md#extensions-githubcommeshery-extensions"><img src="https://img.shields.io/badge/support-community-00B39F?style=flat-square&logo=meshery&logoColor=white" alt="Level of support for this repo" /></a>
                    <a href="https://github.com/meshery-extensions/kanvas-site/graphs/contributors"><img src="https://img.shields.io/github/contributors/meshery-extensions/kanvas-site.svg" /></a>
                    <a href="https://github.com/issues?q=is%3Aopen+is%3Aissue+archived%3Afalse+org%3Ameshery-extensions+repo%3Akanvas-site+label%3A%22help+wanted%22+"><img src="https://img.shields.io/github/issues/meshery-extensions/kanvas-site/help%20wanted.svg?color=informational" /></a>
                </p>
            </td>
        </tr>
        <tr>
            <!-- kanvas-snapshot -->
            <td style="padding: 28px;">
                <h2 align="left"><a href="https://github.com/meshery-extensions/kanvas-snapshot">kanvas-snapshot</a></h2>
                <img src="https://raw.githubusercontent.com/meshery-extensions/.github/master/profile/assets/img/meshery-extensions-color.svg" style="margin-right:10px;" width="75px" alt="Meshery Logo" align="left" />
                <p>The core rendering library and shared framework driving visual topology captures, state comparison engines, and design export workflows across CLI and Helm extensions.</p>
                <p align="left">
                    <a href="https://github.com/meshery/meshery/blob/master/GOVERNANCE.md#extensions-githubcommeshery-extensions"><img src="https://img.shields.io/badge/support-community-00B39F?style=flat-square&logo=meshery&logoColor=white" alt="Level of support for this repo" /></a>
                    <a href="https://github.com/meshery-extensions/kanvas-snapshot/graphs/contributors"><img src="https://img.shields.io/github/contributors/meshery-extensions/kanvas-snapshot.svg" /></a>
                    <a href="https://github.com/issues?q=is%3Aopen+is%3Aissue+archived%3Afalse+org%3Ameshery-extensions+repo%3Akanvas-snapshot+label%3A%22help+wanted%22+"><img src="https://img.shields.io/github/issues/meshery-extensions/kanvas-snapshot/help%20wanted.svg?color=informational" /></a>
                </p>
            </td>
        </tr>
        <tr>
            <!-- kubectl-kanvas-snapshot -->
            <td style="padding: 28px;">
                <h2 align="left"><a href="https://github.com/meshery-extensions/kubectl-kanvas-snapshot">kubectl-kanvas-snapshot</a></h2>
                <img src="https://raw.githubusercontent.com/meshery-extensions/.github/master/profile/assets/img/meshery-extensions-color.svg" style="margin-right:10px;" width="75px" alt="Meshery Logo" align="left" />
                <p>A native command-line <code>kubectl</code> plugin configured to easily generate exportable architectural design blueprints and snapshots of live Kubernetes clusters.</p>
                <p align="left">
                    <a href="https://github.com/meshery/meshery/blob/master/GOVERNANCE.md#extensions-githubcommeshery-extensions"><img src="https://img.shields.io/badge/support-community-00B39F?style=flat-square&logo=meshery&logoColor=white" alt="Level of support for this repo" /></a>
                    <a href="https://github.com/meshery-extensions/kubectl-kanvas-snapshot/graphs/contributors"><img src="https://img.shields.io/github/contributors/meshery-extensions/kubectl-kanvas-snapshot.svg" /></a>
                    <a href="https://github.com/issues?q=is%3Aopen+is%3Aissue+archived%3Afalse+org%3Ameshery-extensions+repo%3Akubectl-kanvas-snapshot+label%3A%22help+wanted%22+"><img src="https://img.shields.io/github/issues/meshery-extensions/kubectl-kanvas-snapshot/help%20wanted.svg?color=informational" /></a>
                </p>
            </td>
        </tr>
        <tr>
            <!-- meshery-academy -->
            <td style="padding: 28px;">
                <h2 align="left"><a href="https://github.com/meshery-extensions/meshery-academy">meshery-academy</a></h2>
                <img src="https://raw.githubusercontent.com/meshery-extensions/.github/master/profile/assets/img/meshery-extensions-color.svg" style="margin-right:10px;" width="75px" alt="Meshery Logo" align="left" />
                <p>The central community interactive learning repository hosting courseware, lab setups, and certification trees for Meshery's broad extension ecosystem.</p>
                <p align="left">
                    <a href="https://github.com/meshery/meshery/blob/master/GOVERNANCE.md#extensions-githubcommeshery-extensions"><img src="https://img.shields.io/badge/support-community-00B39F?style=flat-square&logo=meshery&logoColor=white" alt="Level of support for this repo" /></a>
                    <a href="https://github.com/meshery-extensions/meshery-academy/graphs/contributors"><img src="https://img.shields.io/github/contributors/meshery-extensions/meshery-academy.svg" /></a>
                    <a href="https://github.com/issues?q=is%3Aopen+is%3Aissue+archived%3Afalse+org%3Ameshery-extensions+repo%3Ameshery-academy+label%3A%22help+wanted%22+"><img src="https://img.shields.io/github/issues/meshery-extensions/meshery-academy/help%20wanted.svg?color=informational" /></a>
                </p>
            </td>
        </tr>
        <tr>
            <!-- meshery-extensions-packages -->
            <td style="padding: 28px;">
                <h2 align="left"><a href="https://github.com/meshery-extensions/meshery-extensions-packages">meshery-extensions-packages</a></h2>
                <img src="https://raw.githubusercontent.com/meshery-extensions/.github/master/profile/assets/img/meshery-extensions-color.svg" style="margin-right:10px;" width="75px" alt="Meshery Logo" align="left" />
                <p>The centralized distribution hub for packaging, versioning, and releasing bundled assets, plugins, and compiled components across the extended Meshery ecosystem.</p>
                <p align="left">
                    <a href="https://github.com/meshery/meshery/blob/master/GOVERNANCE.md#extensions-githubcommeshery-extensions"><img src="https://img.shields.io/badge/support-community-00B39F?style=flat-square&logo=meshery&logoColor=white" alt="Level of support for this repo" /></a>
                    <a href="https://github.com/meshery-extensions/meshery-extensions-packages/graphs/contributors"><img src="https://img.shields.io/github/contributors/meshery-extensions/meshery-extensions-packages.svg" /></a>
                    <a href="https://github.com/issues?q=is%3Aopen+is%3Aissue+archived%3Afalse+org%3Ameshery-extensions+repo%3Ameshery-extensions-packages+label%3A%22help+wanted%22+"><img src="https://img.shields.io/github/issues/meshery-extensions/meshery-extensions-packages/help%20wanted.svg?color=informational" /></a>
                </p>
            </td>
        </tr>
        <tr>
            <!-- meshery-mcp-server -->
            <td style="padding: 28px;">
                <h2 align="left"><a href="https://github.com/meshery-extensions/meshery-mcp-server">meshery-mcp-server</a></h2>
                <img src="https://raw.githubusercontent.com/meshery-extensions/.github/master/profile/assets/img/meshery-extensions-color.svg" style="margin-right:10px;" width="75px" alt="Meshery Logo" align="left" />
                <p>The Meshery MCP Server extension—a Model Context Protocol server that lets AI assistants create, inspect, and accelerate the design of Meshery designs.</p>
                <p align="left">
                    <a href="https://github.com/meshery/meshery/blob/master/GOVERNANCE.md#extensions-githubcommeshery-extensions"><img src="https://img.shields.io/badge/support-community-00B39F?style=flat-square&logo=meshery&logoColor=white" alt="Level of support for this repo" /></a>
                    <a href="https://github.com/meshery-extensions/meshery-mcp-server/graphs/contributors"><img src="https://img.shields.io/github/contributors/meshery-extensions/meshery-mcp-server.svg" /></a>
                    <a href="https://github.com/issues?q=is%3Aopen+is%3Aissue+archived%3Afalse+org%3Ameshery-extensions+repo%3Ameshery-mcp-server+label%3A%22help+wanted%22+"><img src="https://img.shields.io/github/issues/meshery-extensions/meshery-mcp-server/help%20wanted.svg?color=informational" /></a>
                </p>
            </td>
        </tr>
        <tr>
            <!-- shape-builder -->
            <td style="padding: 28px;">
                <h2 align="left"><a href="https://github.com/meshery-extensions/shape-builder">shape-builder</a></h2>
                <img src="https://raw.githubusercontent.com/meshery-extensions/.github/master/profile/assets/img/meshery-extensions-color.svg" style="margin-right:10px;" width="75px" alt="Meshery Logo" align="left" />
                <p>A Meshery extension for authoring custom polygon shapes used to visually represent Meshery components on the Kanvas canvas.</p>
                <p align="left">
                    <a href="https://github.com/meshery/meshery/blob/master/GOVERNANCE.md#extensions-githubcommeshery-extensions"><img src="https://img.shields.io/badge/support-community-00B39F?style=flat-square&logo=meshery&logoColor=white" alt="Level of support for this repo" /></a>
                    <a href="https://github.com/meshery-extensions/shape-builder/graphs/contributors"><img src="https://img.shields.io/github/contributors/meshery-extensions/shape-builder.svg" /></a>
                    <a href="https://github.com/issues?q=is%3Aopen+is%3Aissue+archived%3Afalse+org%3Ameshery-extensions+repo%3Ashape-builder+label%3A%22help+wanted%22+"><img src="https://img.shields.io/github/issues/meshery-extensions/shape-builder/help%20wanted.svg?color=informational" /></a>
                </p>
            </td>
        </tr>
        <tr>
            <!-- tcslabs-academy -->
            <td style="padding: 28px;">
                <h2 align="left"><a href="https://github.com/meshery-extensions/tcslabs-academy">tcslabs-academy</a></h2>
                <img src="https://raw.githubusercontent.com/meshery-extensions/.github/master/profile/assets/img/meshery-extensions-color.svg" style="margin-right:10px;" width="75px" alt="Meshery Logo" align="left" />
                <p>The Meshery Academy for TCS Labs—a partner-tailored learning path of courses, labs, and challenges built on the Academy platform.</p>
                <p align="left">
                    <a href="https://github.com/meshery/meshery/blob/master/GOVERNANCE.md#extensions-githubcommeshery-extensions"><img src="https://img.shields.io/badge/support-official-2f6feb?style=flat-square&logo=meshery&logoColor=white" alt="Level of support for this repo" /></a>
                    <a href="https://github.com/meshery-extensions/tcslabs-academy/graphs/contributors"><img src="https://img.shields.io/github/contributors/meshery-extensions/tcslabs-academy.svg" /></a>
                    <a href="https://github.com/issues?q=is%3Aopen+is%3Aissue+archived%3Afalse+org%3Ameshery-extensions+repo%3Atcslabs-academy+label%3A%22help+wanted%22+"><img src="https://img.shields.io/github/issues/meshery-extensions/tcslabs-academy/help%20wanted.svg?color=informational" /></a>
                </p>
            </td>
        </tr>
    </table>
    <h3>Archived</h3>
    <p>Retained for historical reference. These repositories are no longer maintained and are not compatible with current Meshery releases.</p>
    <table border="0px" align="center">
        <tr>
            <!-- meshery-cpx -->
            <td style="padding: 28px;">
                <h2 align="left"><a href="https://github.com/meshery-extensions/meshery-cpx">meshery-cpx</a></h2>
                <img src="https://raw.githubusercontent.com/meshery-extensions/.github/master/profile/assets/img/meshery-extensions-color.svg" style="margin-right:10px;" width="75px" alt="Meshery Logo" align="left" />
                <p>The Meshery adapter for Citrix Service Mesh (CPX). Archived; the upstream project is no longer maintained.</p>
                <p align="left">
                    <a href="https://github.com/meshery/meshery/blob/master/GOVERNANCE.md#extensions-githubcommeshery-extensions"><img src="https://img.shields.io/badge/support-official-2f6feb?style=flat-square&logo=meshery&logoColor=white" alt="Level of support for this repo" /></a>
                    <img src="https://img.shields.io/badge/status-archived-8b8b8b?style=flat-square" alt="This repository is archived" />
                    <a href="https://github.com/meshery-extensions/meshery-cpx/graphs/contributors"><img src="https://img.shields.io/github/contributors/meshery-extensions/meshery-cpx.svg" /></a>
                </p>
            </td>
        </tr>
        <tr>
            <!-- meshery-octarine -->
            <td style="padding: 28px;">
                <h2 align="left"><a href="https://github.com/meshery-extensions/meshery-octarine">meshery-octarine</a></h2>
                <img src="https://raw.githubusercontent.com/meshery-extensions/.github/master/profile/assets/img/meshery-extensions-color.svg" style="margin-right:10px;" width="75px" alt="Meshery Logo" align="left" />
                <p>The Meshery adapter for Octarine. Archived; the upstream project is no longer maintained.</p>
                <p align="left">
                    <a href="https://github.com/meshery/meshery/blob/master/GOVERNANCE.md#extensions-githubcommeshery-extensions"><img src="https://img.shields.io/badge/support-official-2f6feb?style=flat-square&logo=meshery&logoColor=white" alt="Level of support for this repo" /></a>
                    <img src="https://img.shields.io/badge/status-archived-8b8b8b?style=flat-square" alt="This repository is archived" />
                    <a href="https://github.com/meshery-extensions/meshery-octarine/graphs/contributors"><img src="https://img.shields.io/github/contributors/meshery-extensions/meshery-octarine.svg" /></a>
                </p>
            </td>
        </tr>
        <tr>
            <!-- meshery-osm -->
            <td style="padding: 28px;">
                <h2 align="left"><a href="https://github.com/meshery-extensions/meshery-osm">meshery-osm</a></h2>
                <img src="https://raw.githubusercontent.com/meshery-extensions/.github/master/profile/assets/img/meshery-extensions-color.svg" style="margin-right:10px;" width="75px" alt="Meshery Logo" align="left" />
                <p>The Meshery adapter for Open Service Mesh. Archived; the upstream project is no longer maintained.</p>
                <p align="left">
                    <a href="https://github.com/meshery/meshery/blob/master/GOVERNANCE.md#extensions-githubcommeshery-extensions"><img src="https://img.shields.io/badge/support-official-2f6feb?style=flat-square&logo=meshery&logoColor=white" alt="Level of support for this repo" /></a>
                    <img src="https://img.shields.io/badge/status-archived-8b8b8b?style=flat-square" alt="This repository is archived" />
                    <a href="https://github.com/meshery-extensions/meshery-osm/graphs/contributors"><img src="https://img.shields.io/github/contributors/meshery-extensions/meshery-osm.svg" /></a>
                </p>
            </td>
        </tr>
        <tr>
            <!-- meshery-tanzu-sm -->
            <td style="padding: 28px;">
                <h2 align="left"><a href="https://github.com/meshery-extensions/meshery-tanzu-sm">meshery-tanzu-sm</a></h2>
                <img src="https://raw.githubusercontent.com/meshery-extensions/.github/master/profile/assets/img/meshery-extensions-color.svg" style="margin-right:10px;" width="75px" alt="Meshery Logo" align="left" />
                <p>The Meshery adapter for VMware Tanzu Service Mesh. Archived; the upstream project is no longer maintained.</p>
                <p align="left">
                    <a href="https://github.com/meshery/meshery/blob/master/GOVERNANCE.md#extensions-githubcommeshery-extensions"><img src="https://img.shields.io/badge/support-official-2f6feb?style=flat-square&logo=meshery&logoColor=white" alt="Level of support for this repo" /></a>
                    <img src="https://img.shields.io/badge/status-archived-8b8b8b?style=flat-square" alt="This repository is archived" />
                    <a href="https://github.com/meshery-extensions/meshery-tanzu-sm/graphs/contributors"><img src="https://img.shields.io/github/contributors/meshery-extensions/meshery-tanzu-sm.svg" /></a>
                </p>
            </td>
        </tr>
    </table>
</div>
    <!-- Contributing and Guidelines -->
    <div>
        <h2>Community and Contributing</h2>
        <p>Please do! Code and non-code contributions are welcome. This project is community-built and fosters collaboration. Contributors are expected to adhere to the <a href="https://github.com/cncf/foundation/blob/main/code-of-conduct.md"> CNCF Code of Conduct</a>.
        </p>
        <p>Jump into our <a href="https://slack.meshery.io">Slack</a>! Submit your <a href="https://meshery.io/newcomers">community member form</a> access to additional resources. Don't forget to join the <a href="https://meshery.io/calendar">Newcomers meeting</a> held every Thursday!
        </p>
        <img src="https://raw.githubusercontent.com/meshery/meshery/refs/heads/master/.github/assets/images/readme/community.png"
            style="margin:10px;" width="180px" alt="Community" align="right" />
        <ul>
            ✔️ <b>Star</b> ⭐ the main <a href="https://github.com/meshery/meshery">meshery repo</a><br />
            ✔️ <b>Join</b> any or all of the weekly meetings on the <a href="https://meet.meshery.io">community
                    calendar</a><br />
            ✔️ <b>Watch</b> <a
                    href="https://www.youtube.com/@mesheryio?sub_confirmation=1">community meeting
                    recordings</a><br />
            <p>✔️ <b>Access</b> resources by completing a <a href="https://meshery.io/newcomers"> community member form
                </a><br />
            ✔️ <b>Discuss</b> in a Meshery <a href="https://discuss.meshery.io">Community forum</a><br />
            ✔️ Not sure where to start? <b>Grab</b> an open issue with the <a
                    href="https://github.com/issues?q=is%3Aopen+is%3Aissue+archived%3Afalse+(org%3Ameshery+OR+org%3Aservice-mesh-performance+OR+org%3Aservice-mesh-patterns+OR+org%3Ameshery-extensions)+label%3A%22help+wanted%22">help-wanted
                    label</a><br />
        </ul>
    </div>
    <!-- Footer Section -->
    <img src="https://raw.githubusercontent.com/meshery/.github/master/profile/assets/img/footer.png" align="center" />
</div>
