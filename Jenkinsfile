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
          stage('Install Apache2') {
            steps {
                script {
                       sh 'sudo apt-get update && sudo apt-get install -y apache2'
                }
            }
        }

        stage('Deploy Website') {
            steps {
                script {
                      sh 'sudo cp -r /path/to/your/website/* /var/www/html/'
                }
            }
        }

        stage('Start Apache2') {
            steps {
                script {
                    sh 'sudo systemctl restart apache2'
                }
            }
        }
    }

    post {
        success {
            echo 'Deployment successful'
        }
        failure {
            echo 'Deployment failed'
        }
    }
}

            


