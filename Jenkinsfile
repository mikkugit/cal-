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
    stage('Deploy to Apache Server') {
            steps {
                script {
                   sh './deploy-apache.sh'
                }
            }
        }
    }
}
