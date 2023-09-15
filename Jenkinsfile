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
                sh 'sudo apt update -y'  // For Ubuntu/Debian
                // sh 'sudo yum update -y'  // For CentOS/RHEL

                // Install Apache HTTP Server (commands may vary depending on your Linux distribution).
                sh 'sudo apt install -y apache2'  // For Ubuntu/Debian
                // sh 'sudo yum install -y httpd'  // For CentOS/RHEL
            }
        }

        stage('Start Apache HTTP Server') {
            steps {
                // Start Apache HTTP Server using systemctl.
                sh 'sudo systemctl start apache2'  // For Ubuntu/Debian
                // sh 'sudo systemctl start httpd'  // For CentOS/RHEL
            }
        }
    }
} 
