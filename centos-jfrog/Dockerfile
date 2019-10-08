#/*
# * The overall classification of this file is UNCLASSIFIED.
# *
# * NOTICE: This software was produced for the U. S. Government under Basic
# * Contract No. W56KGU-18-D-0004, and is subject to the Rights in
# * Noncommercial Computer Software and Noncommercial Computer Software
# * Documentation Clause 252.227-7014 (FEB 2012) (C) 2019 The MITRE Corporation.
# *
# * PROJECT: <Feedback Prototype Tool.>
# * FILE: <Dockerfile>
# * CLASSIFICATION: <Unclassified>
# * AUTHOR: <John J. Kim (jjkim@mitre.org)>
# * CREATED: <August 22th, 2019>
# * UPDATED: <August 28th, 2019>
# * DESCRIPTION: <Create image to execute JFrog-CLI-go commands.>
# */

FROM centos

ENV DIR=/jfrog
#Removes CLI config messages
ENV JFROG_CLI_OFFER_CONFIG=false

WORKDIR $DIR
add . $DIR
