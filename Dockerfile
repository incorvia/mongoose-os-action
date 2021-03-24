FROM alpine:latest

LABEL com.github.actions.name="Build Mongoose OS firmware"
LABEL com.github.actions.description="Builds a Mongoose OS firmware for given target"
LABEL com.github.actions.icon="cpu"
LABEL com.github.actions.color="green"

LABEL repository="https://github.com/yaourdt/mongoose-os-action"
LABEL maintainer="Mark Dornbach"

# Install mos tool dependencies
RUN apk add --no-cache curl

# Install mos tool
ADD https://mongoose-os.com/downloads/mos/install.sh /tmp/install-mos.sh
RUN sh /tmp/install-mos.sh

COPY mos mos

# Set entrypoint
ENTRYPOINT /mos
