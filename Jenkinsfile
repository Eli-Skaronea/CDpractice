pipeline 
{
    agent any

    node('hello_world') 
    {
        stage('Checkout') 
        {
            echo 'Checking out project repo...'
            checkout scm
        }
        stage('Build jar') 
        {    
            echo 'Building jar file...'
            rtGradle.tool = "Gradle-4.7"
            buildInfo = rtGradle.build
                        
           
        }
        stage('Build docker image') 
        {    
            echo 'Building docker image...'   
        }
        stage('Push docker image') 
        {    
           echo 'Pushing docker image to docker hub...'   
        }
        stage('Deploy container')
        {    
            echo 'Running application in container'   
        }
    }
}