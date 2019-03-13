# k8secode

Kubernetes Secret Encrypt/Decrypt CLI tool

When you create Kubernetes secret YAML manifests with plain text, you are disappointed.
But, we can encryption/decription secret manifests.

# Pre-requirement

```
$ pip install pyyaml
```

# Usage

```YAML
# encryption Kubernetes secret
$ ./k8secode encrypt sample.yaml
apiVersion: v1
data:
  password: bXktcEBzc3cwcmQ=
  user: YW1zeTgxMA==
kind: Secret
metadata:
  name: mysecret

# decryption Kubernetes secret
$ ./k8secode decrypt sample-crypt.yaml
apiVersion: v1
data:
  password: my-p@ssw0rd
  user: amsy810
kind: Secret
metadata:
  name: mysecret
```

Also, replace file content.

```YAML
# encryption Kubernetes secret forcely
./k8secode encrypt sample.yaml -f

# decryption Kubernetes secret forcely
./k8secode decrypt sample.yaml -f
```

# Docker

k8secode is also use on Docker.

* https://cloud.docker.com/repository/docker/masayaaoyama/k8secode/general


