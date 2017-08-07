FROM docker:latest

ADD https://storage.googleapis.com/kubernetes-release/release/v1.6.7/bin/linux/amd64/kubectl /usr/local/bin/kubectl

RUN \
chmod +x /usr/local/bin/kubectl ;\
apk --no-cache add git openssl python py-pip bash gettext \
&& pip install --upgrade \
  pip \
  awscli \
&& apk del py-pip \
&& mkdir ~/.aws

VOLUME ["~/.aws"]

ENTRYPOINT []
