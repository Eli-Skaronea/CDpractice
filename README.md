# Practicing Continuous Dev with Jenkins/Docker

This repo is for practicing continous development by using Docker and Jenkins for my internship.

## The goals are:
- Have jenkins running on a container on the local machine
- Have a working Dockerfile to create an image that runs the gradle jar file
- Have a working Jenkinsfile that with run a pipeline that:
    - Checksout the repo
    - Builds the jar file using gradle
    - Creates a new docker image
    - Pushes the image to a docker hub repo
    - Creates a container inside of the jenkins container running the application

## Extra things to look into:
- Create a webhook between Jenkins and the git repo
- Keep docker hub more clean by not creating a new tag everytime (Repo management?)