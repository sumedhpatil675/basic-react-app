pipeline {
    agent any

 environment {
        CI = 'false'
    } 
    
    stages {
        stage('Checkout Code from Git') {
            steps {
                // Checkout the code from your Git repository
                git(url: 'https://github.com/sumedhpatil675/basic-react-app.git', branch: 'master')
            }
        }
          stage('Build React App') {
            steps {
                // Copy the build to Nginx's web root directory
                sh 'npm install && npm run build'
            }
        }
        stage('Deploy to Nginx') {
            steps {
                // Copy the build to Nginx's web root directory
                sh 'cp -r //root/.jenkins/workspace/basic_app_pipeline/build/* /var/www/html/'
            }
        }
    }
}
