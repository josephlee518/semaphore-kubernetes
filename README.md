# semaphore-kubernetes

Run Semaphore UI In Kubernetes

## Image Build Status
Image|Status
:---:|:---:
`linux`|[![Build Status](https://travis-ci.com/josephlee518/semaphore-kubernetes.svg?branch=master)](https://travis-ci.com/josephlee518/semaphore-kubernetes)

## Docker Image

* There are a `Dockerfile` Witch is
  * To Install `ansible` and `git`
  * Download Semaphore Release, UnTAR and Add It to `$PATH`
* Check out my docker hub, [about this image](https://hub.docker.com/repository/docker/josephlee518/semaphore-docker)
* Latest Image is `josephlee518/semaphore-docker:2.6.4`, `docker pull josephlee518/semaphore-docker:2.6.4`

## Kubernetes

* Use `deployment.yaml`
  * But if you want to add more config (config.json maybe?), use [ConfigMap](https://kubernetes.io/docs/tasks/configure-pod-container/configure-pod-configmap/)
* then `kubectl create -f deployment.yaml`