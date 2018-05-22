FROM openjdk:8-jdk-alpine

COPY /gradle_intro/build/libs /

#RUN sh -c './gradlew build'

# RUN chmod 666 gradle_intro.jar
# RUN sh -c 'touch /gradle_intro.jar'

#ENV 
ENTRYPOINT [ "sh", "-c", "java -jar gs-gradle-0.1.0.jar" ]
#ENTRYPOINT [ "sh", "-c", "/gradlew run" ]
# CMD ["cd /gradle_intro"]


#docker tag my_image $DOCKER ID/my_image
#docker push $DOCKER ID/my_image