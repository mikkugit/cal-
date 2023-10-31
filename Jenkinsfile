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
                    sh 'mvn clean install'
            }
        }
   
  stage('Deploy Apache') {
    steps {
        sh 'sudo apt-get update '
    }
    }
 }
  }
