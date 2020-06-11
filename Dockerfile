FROM mbsteam/ansible-docker:2.9

LABEL description="Ubuntu Bionic with Ansible 2.9, cURL and Docker Compose"

RUN apt-get -y install curl && \
    curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose && \
    ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
