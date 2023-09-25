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
            }
        }
        stage('bulid') {
         steps {
                 script {
                     sh 'docker build -t my-apache-image .'
              }
           }
        }
     }
 }
