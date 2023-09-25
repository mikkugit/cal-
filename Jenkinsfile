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
                sh 'sudo su'
                sh 'sudo apt-get update -y'
                sh 'sudo apt-get install apache2 -y'
                sh 'cd ../..'
                sh 'cd /var/www/html'
                sh 'rm -r index.html'
                sh 'wget https://www.tooplate.com/zip-templates/2108_dashboard.zip'
                sh 'apt install -o unzip'
                sh 'ls'
             
            }
       }
     }
 }
 
