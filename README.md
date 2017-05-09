alpine-node-gcsfuse
===================

This image allows you to mount Google Cloud Storage(gcs) bucket into container file system while running on Google Compute Engine(gce) or Google Container Engine(gke).

Usages
------

### Directly build and run with docker container

First prepare a Dockerfile for your node project.

```Dockerfile
# Dockerfile.gcsfuse-example
FROM xaviiic/alpine-node-gcsfuse:latest

WORKDIR /src
ADD . .

# Install dependenies if need
# RUN npm install

RUN mkdir -p /your/mount/path
ENTRYPOINT gcsfuse {bucket_name} /your/mount/path && ...
```

Then build and run this image on GCE instance or GKE.

### Using Kubernetes deployment

First, prepare a Dockerfile for node project and build the image.

Second, create a kubernetes deployment script.

```yaml
# gcsfuse-example-deployment.yaml
apiVersion: extensions/v1beta1
kind: Deployment
spec:
  replicas: 1
  template:
    spec:
      containers:
        - name: gcsfuse-example
          image: your/build/image:v1
          securityContext:
            privileged: true
          command:
            - "/bin/sh"
            - "-c"
            - "mkdir -p /your/mount/path && gcsfuse {bucket_name} /your/mount/path && ...
```

Apply to your cluster

    kubectl apply -f gcsfuse-example-deployment.yaml


Credits
-------

* [mhart/alpine-node](https://github.com/mhart/alpine-node): For the minium node.js docker images.
* [chiaen/docker-gcsfuse](https://github.com/chiaen/docker-gcsfuse): For the gcsfuse binary.
