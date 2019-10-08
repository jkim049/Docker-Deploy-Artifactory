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
# * FILE: artifactory_management.sh
# * CLASSIFICATION: Unclassified
# * AUTHOR: John J. Kim (jjkim@mitre.org)
# * CREATED: September 6th, 2019>
# * UPDATED: Septemeber 6th, 2019
# * DESCRIPTION: Script for searching and deleting the oldest artifacts if the
# * number exceeds the set threshold (3).
# */

./jfrog rt s $REPO --url $URL --user=$USER --password=$PASSWORD >> temp.txt


#Place only lines from temp.txt containing the string "path" into a new file
sed -e '/path/!d' temp.txt > delete.txt
#Parse out all white spaces
sed -i -r 's/\s+//g' delete.txt
#Parse out rest of the unnecessary formatting
sed -i -e 's/\"path\":\"//g' delete.txt
sed -i -e 's/\",//g' delete.txt

#Delete temp.txt
rm temp.txt

mapfile -t deleteArray < delete.txt

SIZE=${#deleteArray[@]}
COUNT=0
while [ $[$SIZE-$COUNT] -gt 3 ]
do
  echo "Y" | ./jfrog rt del ${deleteArray[$COUNT]} --url $URL --user=$USER --password=$PASSWORD
  COUNT=$(($COUNT+1))
done

rm delete.txt


