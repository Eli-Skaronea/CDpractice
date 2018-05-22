# Practicing Continuous Dev with Jenkins/Docker

This repo is for practicing continous development by using Docker and Jenkins for my internship.

## The goals are:
- [x] Have jenkins running on a container on the local machine
- [x] Have a working Dockerfile to create an image that runs the gradle jar file
- [x] Have a working Jenkinsfile that with run a pipeline that:
    - [x] Checksout the repo
    - [x] Builds the jar file using gradle
    - [x] Creates a new docker image
    - [x] Pushes the image to a docker hub repo
    - [x] Creates a container inside of the jenkins container running the application

## Extra things to look into:
- [ ] Create a webhook between Jenkins and the git repo
- [ ] Keep docker hub more clean by not creating a new tag everytime (Repo management?)

The latest docker image can be pulled with the command: 
'docker pull eskaronea/first_image`


This README was last update on 5/22/18