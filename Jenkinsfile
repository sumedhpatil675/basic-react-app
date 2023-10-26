pipeline {
    agent any

 environment {
        CI = 'false'
    } 
    stages {
        stage('Build') {
            steps {
                // Checkout your React app's source code from SCM
                checkout scm
                
                // Build the React app
                sh 'npm install'
                sh 'npm run build'
            }
        }
        
        stage('Deploy') {
            steps {
                // Build a Docker image of your React app
                sh 'docker build -t my-react-app-image .'
                
                // Run the Docker container on your local machine
                sh 'docker run -d -p 8080:80 --name my-react-app-container my-react-app-image'
            }
        }
    }
}

