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
                script {
                 sh ' apt install apache2 -y '
                }
            }
        }
    }
}
