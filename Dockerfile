FROM ubuntu:18.04
RUN apt-get update && apt-get install -y sudo build-essential g++ git cmake curl unzip tar zip pkg-config && rm -rf /var/lib/apt/lists/*
WORKDIR /home
RUN git clone https://github.com/Microsoft/vcpkg.git
WORKDIR /home/vcpkg
RUN ./bootstrap-vcpkg.sh
ARG VCPKG_ROOT=/home/vcpkg
WORKDIR /home/GitHubActionsTest
COPY . ./
RUN cmake -S . -B .
RUN cmake --build .
ENTRYPOINT ["ctest"]