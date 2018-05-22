node{
    def app

    stage('Checkout'){
        echo 'Checking out project repo...'
        checkout scm    
    }

    stage('Build jar') {   
        echo 'Building jar file...'
        sh './gradlew build'
    }

    stage('Build docker image') {
        echo 'Building docker image...'
        app = docker.build("eskaronea/first_image")   
    }
        
    stage('Push docker image') {
        echo 'Pushing docker image to docker hub...'
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials'){
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }

    stage('Deploy container') {   
        echo 'Running application in container...'   
        sh "docker run --name first_image-${env.BUILD_NUMBER} eskaronea/first_image"
    }
    
}