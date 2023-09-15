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
       stage('Deploy Apache HTTP Server') {
            steps {
                // Install Apache HTTP Server using the package manager (e.g., apt-get on Ubuntu).
                sh 'sudo apt update'
                sh 'sudo apt install -y apache2'

                // Start Apache HTTP Server.
                sh 'sudo systemctl start apache2'
            }
        }
    }
}
