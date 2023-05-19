# Resource Usage Statistics Script for Kubernetes

This Bash script retrieves resource usage statistics from Kubernetes for a provided resource type and namespace.

## Usage

The script expects exactly two command-line arguments: the resource type and the namespace. If there are not exactly two arguments, the script prints a usage message and exits.

Replace <resource_type> with the desired Kubernetes resource type (e.g., pods, deployments, services) and <namespace> with the target namespace.

Script Execution
The script performs the following steps:

Checks the number of command-line arguments. If the count is not equal to 2, it displays a usage message and exits.

Assigns the provided resource type and namespace to the variables RESOURCE_TYPE and NAMESPACE, respectively.

Retrieves resource usage statistics for the specified resource type and namespace using the kubectl top command. It removes the header line from the output.

Processes each line of the output using a while loop.

Extracts the resource name, CPU usage, and memory usage from each line using the awk command.

Displays the resource information, including the resource type, namespace, resource name, CPU usage, and memory usage.

To run the script, use the following command:

```bash
./kubplugin <resource_type> <namespace>
```

## Example

Here's an example of how to use the script:

```bash
./kubplugin pods kube-system
```

This command retrieves resource usage statistics for pods in the kube-system namespace and displays the information for each pod.

```
Resource Type: pods
Namespace: kube-system
Resource Name: coredns-597584b69b-d2f4f
CPU Usage: 3m
Memory Usage: 14Mi

Resource Type: pods
Namespace: kube-system
Resource Name: local-path-provisioner-79f67d76f8-k59rw
CPU Usage: 1m
Memory Usage: 7Mi

Resource Type: pods
Namespace: kube-system
Resource Name: metrics-server-5f9f776df5-q8p4v
CPU Usage: 8m
Memory Usage: 16Mi

Resource Type: pods
Namespace: kube-system
Resource Name: svclb-traefik-1d581bd6-w5pld
CPU Usage: 0m
Memory Usage: 0Mi

Resource Type: pods
Namespace: kube-system
Resource Name: traefik-66c46d954f-jxtvg
CPU Usage: 1m
Memory Usage: 26Mi
```

Please note that the actual resource names, CPU usage, and memory usage will vary based on your Kubernetes cluster and the specified resource type and namespace.
