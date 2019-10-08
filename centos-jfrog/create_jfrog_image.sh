#!/bin/bash

#/*
# * The overall classification of this file is UNCLASSIFIED.
# *
# * NOTICE: This software was produced for the U. S. Government under Basic
# * Contract No. W56KGU-18-D-0004, and is subject to the Rights in
# * Noncommercial Computer Software and Noncommercial Computer Software
# * Documentation Clause 252.227-7014 (FEB 2012) (C) 2019 The MITRE Corporation.
# * 
# * PROJECT: <Feedback Prototype Tool.>
# * FILE: <create_jfrog_image.sh>
# * CLASSIFICATION: <Unclassified>
# * AUTHOR: <John J. Kim (jjkim@mitre.org)>
# * CREATED: <June 29th, 2019>
# * UPDATED: <August 29th, 2019>
# * DESCRIPTION: <Script to create jfrog base image.>
# */

docker build -t jfrog-cli-base .
