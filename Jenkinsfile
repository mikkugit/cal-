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
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], userRemoteConfigs: [[url:'https://github.com/mikkugit/cal-.git']]])
            }
        }
            stage('Deploy Apache') {
            steps {
                script {
                    sh 'sudo systemctl stop apache2'
                    sh 'sudo cp /path/to/your/apache-config.conf /etc/apache2/sites-available/'
                    sh 'sudo a2ensite your-apache-config'
                    sh 'sudo apache2ctl configtest'
                    sh 'sudo systemctl reload apache2'
                    sh 'sudo systemctl start apache2'
                }
            }
        }
    }
}
