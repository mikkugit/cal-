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
        stage('Deploy Apache Server') {
            steps {
                       sh 'sudo apt update'
                sh 'sudo apt install -y apache2'
                sh 'sudo cp -r /path/to/your/app/* /var/www/html/'

                // Start Apache
                sh 'sudo systemctl start apache2'
                }
            }
        }
    }

