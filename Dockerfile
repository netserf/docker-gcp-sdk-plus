FROM google/cloud-sdk:latest

LABEL maintainer "Greg Horie"

ENV container docker
ENV USE_GKE_GCLOUD_AUTH_PLUGIN True
ENV PATH "$PATH:/usr/local/bin"
ENV WORKDIR /workdir

# Add other kubernetes tooling
RUN echo "==> Add helm ..." && \
    curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 && \
    chmod 700 get_helm.sh && \
    ./get_helm.sh && \
    echo "==> Add kubectx / kubens ..." && \
    git clone https://github.com/ahmetb/kubectx /opt/kubectx && \
    ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx && \
    ln -s /opt/kubectx/kubens /usr/local/bin/kubens

# Set the default working directory
WORKDIR $WORKDIR

# Default run will output the GCP SDK version details
CMD [ "gcloud", "version" ]
