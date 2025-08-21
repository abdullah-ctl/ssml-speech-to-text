FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && \
    apt-get install -y espeak-ng sox && \
    apt-get clean

WORKDIR /app

COPY test_ssml.sh .

RUN chmod +x test_ssml.sh

CMD ["./test_ssml.sh"]
