FROM jenkinsci/blueocean:1.23.2

USER root

# Install packages
RUN apk update && apk add curl

# Install cloudfoundry-cli
RUN curl -L "https://cli.run.pivotal.io/stable?release=linux64-binary&source=github" | tar -zx
RUN mv cf /usr/local/bin