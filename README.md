# lsstsqre/inittmpdirhome

## Theory of Operations

If you're using a tmpDir as `/home` in an RSP instance (e.g. Minikube),
you need a way to provision the homedir for a specific userid.

You cannot use Moneypenny here, because it's a tmpDir.  The tmpDir can
be shared by containers within a pod, but Moneypenny, an external pod
within the cluster, can't see it.

Therefore this container must run as an initContainer in the Lab pod
before the actual Lab container starts up.

## What's in the box
* The [Dockerfile](./Dockerfile) is how the container is built.
* [LICENSE](./LICENSE) and [README.md](./README.md) are self-explanatory.
* [entrypoint.sh](./entrypoint.sh) uses the pod environment to create
  the directory and set the ownership and permissions appropriately.
