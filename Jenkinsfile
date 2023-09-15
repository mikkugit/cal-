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
            stage('Install Apache HTTP Server') {
            steps {
                // Update the package repository (commands may vary depending on your Linux distribution).
                sh 'sudo apt update'  // No need for the -y flag here
                // Install Apache HTTP Server (commands may vary depending on your Linux distribution).
                sh 'sudo apt install -y apache2'  // For Ubuntu/Debian
            }
        }

        stage('Start Apache HTTP Server') {
            steps {
                // Start Apache HTTP Server using systemctl.
                sh 'sudo systemctl start apache2'  // For Ubuntu/Debian
            }
        }
            }
        }


