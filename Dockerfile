FROM debian:stretch
RUN apt-get update && apt-get install -y \
    curl \
    make \
    git \
    libglib2.0-0 \
    unzip \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /opt
RUN curl https://www.silabs.com/documents/login/software/SimplicityStudio-v4.tgz | tar -xz
RUN curl https://www.silabs.com/documents/public/example-code/AN1121SW.zip >AN1121SW.zip && \
    unzip AN1121SW.zip && \
    rm AN1121SW.zip

COPY bin /usr/local/bin/

WORKDIR /src
ENV SILABS_REPOSITORY=https://developer.silabs.com/studio/v4/updates,https://developer.silabs.com/studio/v4/control/stacks/PublicGA/updates
