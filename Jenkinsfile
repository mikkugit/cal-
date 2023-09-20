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
        stage('Deploy to Apache Server') {
            steps {
                script {
                    sh 'ssh ubuntu@3.208.26.239 "sudo apt-get update && sudo apt-get install -y apache2"'
                }
                script {
                    sh 'ssh ubuntu@3.208.26.239 "sudo cp -r /path/to/your/app/* /var/www/html/"'
                }
                script {
                    sh 'ubuntu@3.208.26.239 "sudo systemctl restart apache2"'
                }
            }
        }
    }
    post {
        success {
            echo 'Deployment successful'
        }
        failure {
            echo 'Deployment failed'
        }
    }
  }

