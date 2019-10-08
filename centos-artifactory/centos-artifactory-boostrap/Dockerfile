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
# * CREATED: August 26th, 2019
# * UPDATED: August 28th, 2019
# * DESCRIPTION: Dockerfile for initializing a new instance of Artifactory.
# */

FROM artifactory-oss:latest

COPY entrypoint_artifactory.sh /entrypoint_artifactory.sh

ENTRYPOINT ["/entrypoint_artifactory.sh"]

#Copy artifactory config to be used for set-up of new artifactory
COPY ./artifactory.config.import.xml /artifactory_extra_conf/artifactory.config.import.xml
