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
    stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/dev']], userRemoteConfigs: [[url:'https://github.com/mikkugit/cal-.git']]])
            }
        }
            stage('Deploy Apache') {
            steps {
                script {
                sh 'apt install apache2'
                 }
              }
        }        
    }   
}
