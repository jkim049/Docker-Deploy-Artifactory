# centos-artifactory-deploy

#### Files

1. Dockerfile
2. entrypoint_deploy_artifact.sh
3. create_artifactory_deploy.sh

# Dockerfile

Creates an image and sets all ENV variables (To be overwritten) needed to execute the *entrypoint_deploy_artifact.sh* script.

# entrypoint_deploy_artifact.sh

Deploys an artifact into the corresponding repository. Also, appends the date to the end of the name, before the extension.

# create_artifactory_deploy.sh

A script to create the jfrog-cli-deploy image.

To run use the command: `./create_artifactory_deploy.sh`

# ENV Variables
1. ARTIFACTORY: The name of the repository within Artifactory.
2. ARTIFACT_LOCATION: The location of the artifact within the build folder.
3. PROJECT_DIR: The directory in which the artifact is located.
4. ARTIFACT_NAME: The name of the Artifact.
5. ARTIFACT_EXT: The Artifact file extension.
6. URL: The URL of the Artifactory (Can change everytime Artifactory is started).
7. USER: The username.
8. PASSWORD: The password.

