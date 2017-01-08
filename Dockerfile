#
# Scala and sbt Dockerfile
#
# https://github.com/mhandl/scala-sbt
#
FROM mhandl/scala-sbt:latest

RUN cd /tmp  && \
  git clone https://github.com/mhandl/bootzooka.git && \
  cd /tmp/bootzooka && \
  sbt test && \
  cd /tmp && \
  rm -rf *

# Define working directory
WORKDIR /root
