# docs-as-code-showcase

Technical documentation treated like software: AsciiDoc source under version control, built by CI into a PDF and a website, reviewed through pull requests.

[![Build PDF](https://github.com/gsaronni/docs-as-code-showcase/actions/workflows/build-pdf.yml/badge.svg)](https://github.com/gsaronni/docs-as-code-showcase/actions/workflows/build-pdf.yml)
[![Latest release](https://img.shields.io/github/v/release/gsaronni/docs-as-code-showcase?label=release)](https://github.com/gsaronni/docs-as-code-showcase/releases/latest)
[![Read online](https://img.shields.io/badge/read-online-0a7d5a?logo=readthedocs&logoColor=white)](https://gsaronni.github.io/docs-as-code-showcase/)
[![Download PDF](https://img.shields.io/badge/download-runbook%20PDF-blue?logo=adobeacrobatreader)](https://github.com/gsaronni/docs-as-code-showcase/releases/latest/download/fastdelivery-runbook.pdf)

[![Pages from the built PDF: cover, table of contents, a firewall procedure, an ISE procedure and an annotated F5 walkthrough](assets/runbook-preview.png)](https://github.com/gsaronni/docs-as-code-showcase/releases/latest/download/fastdelivery-runbook.pdf)

<sub>Pages from the PDF that CI builds on every change: 130 pages, 37 chapters, 61 screenshots. Click to download.</sub>

## What this is

**Problem.** Operations knowledge usually lives in wiki pages and Word files: unversioned, unreviewed, and out of date the week after they are written.

**Approach.** Write the documentation in plain text (AsciiDoc), keep it in Git, and let a pipeline produce every output format. A change to a procedure is a commit; a review is a pull request; a release is a tag.

**Example.** The showcase document is a real network operations runbook that I wrote and maintained as a consultant on a multi-vendor telecom infrastructure (Cisco ASA Firepower, ASR, Nexus, ISE; F5 BIG-IP; Imperva WAF; Solaris and Linux hosts; Zabbix; Oracle). It covers day-to-day changes, certificate lifecycle, patching, monitoring and the final decommissioning.

## Fictionalised, deliberately

The project has been decommissioned, and every identifier in the runbook has been replaced. Organisations, people, domains, hostnames and addresses are fictional and borrow from the *Alien* universe:

| Role in the runbook | Name used |
|---|---|
| Customer (telecom operator) | Seegson Communications, `seegson.example` |
| Consultancy running operations | Weyland-Yutani |
| Application vendor | Kelland |
| Third parties behind the DMZ | Hyperdyne, Lasalle |
| Migration project | Sevastopol |

Other people appear as roles (`noc.lead`, `change.manager`); only the author is real. IP addresses use RFC 1918 and RFC 5737 ranges and stay internally consistent, so routes, ACLs and masks in the examples still make sense. Screenshots are redacted with an OCR-driven pipeline and checked by hand. The vendors and products are real, because they are the point.

## The network it documents

The topology is kept as Mermaid source in [`diagrams/`](diagrams/fastdelivery-topology.mmd), so it is versioned and diffable like the rest:

<p align="center"><img src="assets/topology.png" alt="Network topology: border routers, active/standby ASA firewall with four contexts, Nexus vPC core, F5 load balancers, Solaris clusters and vCenter" width="100%"></p>

## Repository layout

```
docs/
  antora.yml                        Antora component descriptor
  modules/ROOT/
    nav.adoc                        site navigation
    pages/                          one page per chapter (29) plus the landing page
    partials/revision-history.adoc  shared by the site and the PDF
    images/                         redacted screenshots
  pdf/fastdelivery-runbook.adoc     PDF assembler: header plus includes of the chapter pages
antora-playbook.yml                 site build
diagrams/fastdelivery-topology.mmd  network topology (Mermaid)
scripts/build-pdf.sh                PDF build, used locally and in CI
.github/workflows/                  build-pdf.yml (PDF), publish-site.yml (GitHub Pages)
assets/                             README images
LICENSE, LICENSE-CODE               CC BY 4.0 (docs), MIT (code)
```

One source, two outputs: each chapter is written once, as an Antora page, and the PDF assembler includes the same files.

## Build

Locally:

```sh
gem install asciidoctor-pdf rouge
scripts/build-pdf.sh                  # PDF: build/fastdelivery-runbook.pdf
npx antora antora-playbook.yml        # site: build/site/index.html
```

In CI, every push that touches `docs/` builds the PDF (attached to the workflow run, and to the release on a version tag) and publishes the site to GitHub Pages. Neither output is committed: the source is the single source of truth.

## Roadmap

- [x] Runbook source, fictionalised and reviewed
- [x] PDF build in CI
- [x] Release with the PDF attached ([v1.9.0, GitHub Transplant](https://github.com/gsaronni/docs-as-code-showcase/releases/tag/v1.9.0))
- [x] Antora site published to GitHub Pages (one page per chapter, shared with the PDF)
- [ ] Topology diagram and README previews rendered in the build
- [ ] Style checks (Vale) on pull requests

## How this repository was made

The runbook was written by hand, before AI, over the years I spent operating this infrastructure. It lived in a private Git repository and grew with the work.

Publishing it in 2026 was done with an AI assistant (Claude, listed as a co-author on those commits). It was used for the transplant, not the content:

- building the fictionalisation pipeline that replaced every real name, address and identifier;
- OCR-driven redaction of the screenshots, followed by an independent AI review that hunted for leaks and found several;
- the CI pipeline, this README and its previews;
- a handful of corrections the stricter PDF build exposed (two malformed tables, one wrong command flag).

The procedures, the structure and the operational knowledge are mine.

## Licence

- Documentation, screenshots and the FastDelivery artwork: [CC BY 4.0](LICENSE). Reuse and adapt freely, with attribution.
- Scripts and CI configuration: [MIT](LICENSE-CODE).

Product names and the interfaces visible in screenshots belong to their respective vendors.

## Author

Gabriele Saronni, IT infrastructure and automation.
