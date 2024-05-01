FROM ubuntu:22.04

ENV TZ=Europe/Kiev
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y curl build-essential libssl-dev cmake pkg-config openssl gnupg

RUN curl -sL https://deb.nodesource.com/setup_16.x  | bash -
RUN apt-get -y install nodejs

RUN curl https://sh.rustup.rs -sSf | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"

RUN rustup target add wasm32-unknown-unknown && cargo install wasm-bindgen-cli && cargo install --locked trunk
