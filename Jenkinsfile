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
     stage('Deploy Apache HTTP Server') {
    steps {
        withCredentials([string(credentialsId: 'your-credential-id', variable: 'SUDO_PASSWORD')]) {
            sh "echo $SUDO_PASSWORD | sudo -S systemctl start apache2 
        }
        }
    }
}
}
