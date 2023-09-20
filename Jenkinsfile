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
       stage('Install Apache2') {
            sh 'sudo apt-get update'
            sh 'sudo apt-get install -y apache2'
        }
           stage('Deploy Website') {
            sh 'sudo cp -r /path/to/your/website/* /var/www/html/'
          }
        stage('Start Apache2') {
            sh 'sudo systemctl start apache2'
        }
            }
        }        
    

