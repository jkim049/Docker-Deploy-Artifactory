#!/bin/bash

#/*
# * The overall classification of this file is UNCLASSIFIED.
# *
# * NOTICE: This software was produced for the U. S. Government under Basic
# * Contract No. W56KGU-18-D-0004, and is subject to the Rights in
# * Noncommercial Computer Software and Noncommercial Computer Software
# * Documentation Clause 252.227-7014 (FEB 2012) (C) 2019 The MITRE Corporation.
# *
# * PROJECT: Feedback Prototype Tool.
# * FILE: install_artifactory_image.sh
# * CLASSIFICATION: Unclassified
# * AUTHOR: John J. Kim (jjkim@mitre.org)
# * CREATED: Septemeber 9th, 2019
# * UPDATED: Septemeber 9th, 2019
# * DESCRIPTION: Script for installing and setting up artifactory-oss.
# */


docker pull docker.bintray.io/jfrog/artifactory-oss:latest

docker tag docker.bintray.io/jfrog/artifactory-oss artifactory-oss

docker rmi docker.bintray.io/jfrog/artifactory-oss

#docker run -it -d --name artifactory -p 8081:8081 -v artifactory-volume-name:/var/opt/jfrog/artifactory artifactory-oss
