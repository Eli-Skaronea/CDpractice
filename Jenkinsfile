
pipeline 
{
    agent {dockerfile true}

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
                sh './gradlew build'
            }            
           
        }
        stage('Build docker image') 
        {   
            steps
            { 
                echo 'Building docker image...'
                sh 'docker build -t first_image:latest'   
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
                //sh 'docker run first_image:latest'
            }
        }
    }
}