FROM fedora:36

ARG PROJECT_NAME

RUN dnf install -y\
 git\
 libstdc++-static\
 swift-lang\
 zlib-devel

RUN mkdir -p /srv/${PROJECT_NAME}/
WORKDIR /srv/${PROJECT_NAME}/

COPY ./Package.swift ./
RUN swift package resolve

COPY ./ ./
RUN swift build -c release --static-swift-stdlib

CMD swift run -c release --static-swift-stdlib Run serve --env production --hostname 0.0.0.0 --port 8080
