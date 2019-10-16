FROM debian:stretch
RUN apt-get update && apt-get install -y \
    curl \
    make \
    libglib2.0-0 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /opt
RUN curl https://www.silabs.com/documents/login/software/SimplicityStudio-v4.tgz | tar -xz

WORKDIR /src
ENV SILABS_REPOSITORY=https://developer.silabs.com/studio/v4/updates,https://developer.silabs.com/studio/v4/control/stacks/PublicGA/updates
