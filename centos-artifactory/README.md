# Artifactory

#### centos-artifactory

Contains scripts for creating images / containers to install and deploy to Artifactory.

1. centos-artifactory-boostrap - Contains scripts for installing / initializing artifactory
2. centos-artifactory-deploy - Contains scripts for building and running JFrog-CLI (For deploying to Artifactory)

#### centos-artifactory-management

Contains scripts for creating a container to manage the # of artifacts kept persistent. Script currently keeps only the 3 newest Artifacts. The number is configurable within the script.
