FROM dfuse/dfuse-eosio

WORKDIR /home/gitpod/dfuse

RUN ln -s /app/dfuseeos /bin/dfuseeos

RUN echo "Acquire::Check-Valid-Until \"false\";\nAcquire::Check-Date \"false\";" | cat > /etc/apt/apt.conf.d/10no--check-valid-until
RUN apt update && apt-get -y install wget build-essential cmake clang-tools-8 llvm-7-dev git nano

RUN wget https://github.com/EOSIO/eosio.cdt/releases/download/v1.8.1/eosio.cdt_1.8.1-1-ubuntu-18.04_amd64.deb
RUN apt install -y ./eosio.cdt_1.8.1-1-ubuntu-18.04_amd64.deb
RUN rm eosio.cdt_1.8.1-1-ubuntu-18.04_amd64.deb

EXPOSE 8080
EXPOSE 8888

CMD dfuseeos start
