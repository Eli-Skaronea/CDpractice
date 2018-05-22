pipeline 
{
    agent any

    stages
    {
        stage('Checkout') 
        {
            steps
            {
                echo 'Checking out project repo...'
                checkout scm
            }
        }
        stage('Build jar') 
        {   
            steps
            { 
                echo 'Building jar file...'
                sh './gradlew tasks'
            }            
           
        }
        stage('Build docker image') 
        {   
            steps
            { 
                echo 'Building docker image...'   
            }
        }
        stage('Push docker image') 
        {
            steps
            {    
                echo 'Pushing docker image to docker hub...'   
            }        
        }
        stage('Deploy container')
        {   
            steps
            {
                echo 'Running application in container'   
            }
        }
    }
}