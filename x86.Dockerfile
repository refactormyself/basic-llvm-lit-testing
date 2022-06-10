FROM python:3.9
# FROM gcc:latest

COPY . /app
WORKDIR /app

RUN apt-get update && apt-get install -y \
    cmake \
    ninja-build \
    clang \
    python3-pip

RUN pip3 install lit
RUN chmod +x /app/build-proj.sh

CMD ["sh", "-c", "/app/build-proj.sh"]