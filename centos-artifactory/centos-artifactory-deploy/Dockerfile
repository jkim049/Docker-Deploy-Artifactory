#/*
# * The overall classification of this file is UNCLASSIFIED.
# *
# * NOTICE: This software was produced for the U. S. Government under Basic
# * Contract No. W56KGU-18-D-0004, and is subject to the Rights in
# * Noncommercial Computer Software and Noncommercial Computer Software
# * Documentation Clause 252.227-7014 (FEB 2012) (C) 2019 The MITRE Corporation.
# *
# * PROJECT: Feedback Prototype Tool.
# * FILE: entrypoint-artifactory.sh
# * CLASSIFICATION: Unclassified
# * AUTHOR: John J. Kim (jjkim@mitre.org)
# * CREATED: August 22th, 2019
# * UPDATED: August 28th, 2019
# * DESCRIPTION: Create image to manage Artifacts in / to the Artifactory.
# */

FROM jfrog-cli-base

ENV DIR=/jfrog

ENV ARTIFACTORY=generic-local
ENV ARTIFACT_LOCATION=/home/feedbacksrvc-backend
ENV PROJECT_DIR=feedback-srvc-backend
ENV ARTIFACT_NAME=feedbacksrvc-backend.war
ENV ARTIFACT_EXT=war
ENV URL=http://172.17.0.12:8081/artifactory
ENV USER=admin
ENV PASSWORD=password

WORKDIR $DIR
COPY ./entrypoint_deploy_artifact.sh /$DIR/entrypoint_deploy_artifact.sh

ENTRYPOINT ["./entrypoint_deploy_artifact.sh"]


