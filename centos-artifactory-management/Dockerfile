#/*
# * The overall classification of this file is UNCLASSIFIED.
# *
# * NOTICE: This software was produced for the U. S. Government under Basic
# * Contract No. W56KGU-18-D-0004, and is subject to the Rights in
# * Noncommercial Computer Software and Noncommercial Computer Software
# * Documentation Clause 252.227-7014 (FEB 2012) (C) 2019 The MITRE Corporation.
# *
# * PROJECT: Feedback Prototype Tool.
# * FILE: Dockerfile
# * CLASSIFICATION: Unclassified
# * AUTHOR: John J. Kim (jjkim@mitre.org)
# * CREATED: September 9th, 2019>
# * UPDATED: Septemeber 9th, 2019
# * DESCRIPTION: Dockerfile for managing and deleting Artifactory.
# */

from jfrog-cli-base


ENV REPO=generic-local/feedback-srvc-ui/
ENV URL=http://172.17.0.2:8081/artifactory/
ENV USER=admin
ENV PASSWORD=password

ENV DIR=/jfrog
WORKDIR $DIR
add . $DIR

ENTRYPOINT ["./entrypoint_artifactory_management.sh"]
