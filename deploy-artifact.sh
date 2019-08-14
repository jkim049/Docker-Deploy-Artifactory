#!/bin/bash

#-----------------------------------------------------------------------------
#                               8-01-19                                      |
#                Script for deploying artifact to Artifactory                |
#        Run command docker run -it -d --name name image "project name"      |
#-----------------------------------------------------------------------------
#TODO - Copy artifact over to Artifactory

#Create a timestamp
TIMESTAMP=$(date "+%Y.%m.%d-%H.%M")

#Change the name to append a timestamp at the end of the file name (But before the file extension.)

ARTIFACT="${ARTIFACT_NAME%.$ARTIFACT_EXT}.${TIMESTAMP}.$ARTIFACT_EXT";

curl -uadmin:$PASSWORD -T $ARTIFACT_LOCATION/$ARTIFACT_NAME "$IP:$PORT/artifactory/$ARTIFACTORY/$PROJECT_DIR/$ARTIFACT"