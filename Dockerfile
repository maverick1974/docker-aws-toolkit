FROM docker:latest

ADD https://storage.googleapis.com/kubernetes-release/release/v1.7.7/bin/linux/amd64/kubectl /usr/local/bin/kubectl

RUN \
chmod +x /usr/local/bin/kubectl ;\
apk --no-cache add git openssl python py-pip bash gettext jq \
&& pip install --upgrade \
  pip \
  awscli \
  yamllint \
&& apk del py-pip \
&& mkdir ~/.aws

VOLUME ["~/.aws"]

ENTRYPOINT []
