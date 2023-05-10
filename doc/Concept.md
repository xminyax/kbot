# Concept.md

| Tool     | Purpose                                                   | Virtualization  | Ease of Use | Customizability | Features                                |
|----------|-----------------------------------------------------------|-----------------|-------------|-----------------|-----------------------------------------|
| Minikube | Local development and testing of Kubernetes applications  | Virtual Machine | High        | Medium          | All major Kubernetes features supported |
| Kind     | Local development and testing of Kubernetes applications  | Docker          | High        | High            | All major Kubernetes features supported |
| K3d      | Running multi-node Kubernetes clusters on a local machine | Docker          | High        | High            | All major Kubernetes features supported |

* Minikube is an open-source tool that enables users to run a single-node Kubernetes cluster on their local machine. It uses a virtual machine to run Kubernetes on the local machine and provides an easy-to-use CLI for managing the cluster. Minikube is designed for developers who want to experiment with Kubernetes and test their applications locally. It supports all major Kubernetes features and can be customized to some extent.

* Kind is another open-source tool that allows users to run local Kubernetes clusters using Docker containers. It is designed to be highly customizable and offers a high degree of flexibility when it comes to scaling and customizing the cluster. Kind is also easy to use and provides a simple CLI for managing the cluster. Like Minikube, it supports all major Kubernetes features.

* K3d is an open-source tool for running multi-node Kubernetes clusters on a local machine. It uses Docker to create a lightweight, portable cluster that can be easily managed using a simple CLI. K3d is designed to be highly customizable and supports all major Kubernetes features, including automatic load balancing, service discovery, and scaling. K3d is a good choice for users who need to run large, multi-node Kubernetes clusters locally.

### DEMO

[![asciicast](https://asciinema.org/a/583971.svg)](https://asciinema.org/a/583971)