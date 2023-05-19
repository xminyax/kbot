# Resource Usage Statistics Script for Kubernetes

This Bash script retrieves resource usage statistics from Kubernetes for a provided resource type and namespace.

## Usage

Replace <resource_type> with the desired Kubernetes resource type (e.g., pods, deployments, services).

Script Execution
The script performs the following steps:

Assigns the provided resource type and namespace to the variables RESOURCE_TYPE.

Retrieves resource usage statistics for the specified resource type and namespace using the kubectl top command. It removes the header line from the output.

Processes each line of the output using a while loop.

Extracts the resource name, CPU usage, and memory usage from each line using the awk command.

Displays the resource information, including the resource type, namespace, resource name, CPU usage, and memory usage.

To run the script, use the following command:

```bash
./kubplugin <resource_type>
```

## Example

Here's an example of how to use the script:

```bash
./kubplugin pods
```

This command retrieves resource usage statistics for pods in the kube-system namespace and displays the information for each pod.

```text
pods, kube-system, coredns-597584b69b-d2f4f, 3m, 14Mi
pods, kube-system, local-path-provisioner-79f67d76f8-k59rw, 1m, 7Mi
pods, kube-system, metrics-server-5f9f776df5-q8p4v, 9m, 16Mi
pods, kube-system, svclb-traefik-1d581bd6-w5pld, 0m, 0Mi
pods, kube-system, traefik-66c46d954f-jxtvg, 1m, 26Mi
```

Please note that the actual resource names, CPU usage, and memory usage will vary based on your Kubernetes cluster and the specified resource type and namespace.
