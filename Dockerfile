from centos:centos7

ENV $PASSWORD=PASSWORD
ENV $ARTIFACT_LOCATION=/home/example-program/src
ENV $IP=localhost
ENV $PORT=8081
ENV $ARTIFACTORY=generic-local
ENV $PROJECT_DIR=example-program
ENV $ARTIFACT_NAME=example-program-artifact.jar
ENV $ARTIFACT_EXT=jar


ENTRYPOINT ["./deploy-artifact.sh"]