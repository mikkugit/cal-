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
   
  stage('Deploy Apache') {
    steps {
        sh 'sudo apt-get update -y'
        sh 'sudo apt-get install apache2 -y'
        sh 'wget https://www.tooplate.com/zip-templates/2108_dashboard.zip '
        sh 'cd /var/www/html '
        sh 'ls'
        sh 'sudo apt install unzip'
        sh 'unzip -o 2108_dashboard.zip -d /var/www/html '
        sh 'cd /var/www/html/2108_dashboard' 
                }
          }

      }
 }
 
