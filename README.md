# docker-aws-sdk

This is a basic docker image containing `docker`, `awscli` as well as `kubectl`.
As of today, the main use of this container for me is to be able to perform docker-in-docker based CI jobs that can push docker images onto ECR and deploy Kubernetes stacks.
