pipeline {
    agent any
    stages {
        stage('Cloneing git') {
            steps {
                git 'https://github.com/mikkugit/cal-.git'
                }
        }  
      stage('Build and Test') {
            steps {
                sh 'mvn clean test'
                }
        }
          stage('Deploy') {
            steps {
                // Deploy your application to Apache server
                sh 'sudo apt update'
                sh 'sudo apt install -y apache2'
                // Add your deployment steps here
            }
        }
    }
    post {
        success {
            echo 'Deployment successful!'
        }
        failure {
            echo 'Deployment failed!'
        }
    }
}
 stage('bulid') {
         steps {
             dir (' /var/lib/jenkins/workspace/multi-branch_dev') {
                 script {
                     sh 'docker build -t my-apache-image.'
                 }
             }
         }
     }
