FROM ubuntu:20.04

ENV udeps_version="0.1.20"

RUN apt update

RUN apt install -y bash curl
    
# https://github.com/est31/cargo-udeps/releases/download/v0.1.20/cargo-udeps-v0.1.20-x86_64-unknown-linux-gnu.tar.gz
RUN curl --silent -L https://github.com/est31/cargo-udeps/releases/download/v$udeps_version/cargo-udeps-v$udeps_version-x86_64-unknown-linux-gnu.tar.gz | tar -xzv -C /usr/bin --strip-components=1;

# Ensure rustup is up to date.
RUN bash -c "sh <(curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs) -y"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
