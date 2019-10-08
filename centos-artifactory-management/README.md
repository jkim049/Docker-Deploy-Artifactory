#### centos-artifactory-management

# Files

1. Dockerfile
2. entrypoint_artifactory_management.sh

# Dockerfile

Dockerfile to copy over entrypoint_artifactory_management.sh into a container and execute it.

# entrypoint_artifactory_management.h 

A script to change the # of Artifacts kept persistent. Currently set to 3 within the script and can be changed on line 39 in the following code snippet: `while [ $[$SIZE-$COUNT] -gt 3 ]`

The scripts removes the oldest artifacts so that only the 3 most recent remain.

# ENV Variables

1. REPO: The Artifactory repository being checked.
2. URL: The URL of the Artifactory.
3. USER: The username.
4. PASSWORD: The password.