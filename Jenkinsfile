pipeline {
    agent any
    stages {
        stage('Cloneing git') {
            steps {
                git 'https://github.com/mikkugit/cal-.git'
                }
        }
         stage('Build') {
            steps {
              sh 'mvn clean'
              }
           }
           stage('Test') {
            steps {
                sh 'mvn test'
                }
        }
    }
}   
