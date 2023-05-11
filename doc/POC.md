# Installing and Configuring Command Access to the ArgoCD Graphical Interface in Kubernetes Cluster k3d

## Prerequisites

* k3d installed on your local machine
* kubectl installed on your local machine

## Installation

1. Create a k3d cluster by running the following command:

`k3d cluster create my-cluster`

1. Install the ArgoCD:

`kubectl create namespace argocd`
`kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml`

1. Wait for the ArgoCD deployment to complete.

1. To access the ArgoCD web interface, run the following command to expose the service:

`kubectl port-forward svc/my-argocd-server -n argocd 8080:443`

1. Open a web browser and navigate to https://localhost:8080. You should now be able to access the ArgoCD graphical interface.

## Demo run AgroCD

[![asciicast](https://asciinema.org/a/584249.svg)](https://asciinema.org/a/584249)

## Accessing the ArgoCD Interface

kbot/doc/argoCD-demo01.png

kbot/doc/argoCD-demo02.png

1. Open a web browser and navigate to the ArgoCD URL.

1. On the login screen, enter your username and password and click "Login".

1. Once logged in, you will be directed to the ArgoCD dashboard.

1. In the dashboard, you can view the status of your applications and repositories, as well as manage your clusters, settings, and user accounts.

1. To view the details of a specific application or repository, click on its name in the dashboard.

1. From the application or repository details page, you can view its current state, configuration, and deployment history.

1. To make changes to an application or repository, you can use the ArgoCD interface to modify its configuration, sync its state, or trigger a deployment.

1. If you encounter any issues while using the ArgoCD interface or command-line tool, you can refer to the ArgoCD documentation or contact your administrator for assistance.

Note: The ArgoCD installation and configuration process may differ depending on your setup and environment.