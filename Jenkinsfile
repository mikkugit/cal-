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
                // Install Apache on the target server
                script {
                    sh 'sudo apt-get update && sudo apt-get install -y apache2'
                }

                // Copy and deploy your application to Apache's document root
                script {
                    sh 'sudo cp -r /path/to/your/app/* /var/www/html/'
                }

                // Restart Apache
                script {
                    sh 'sudo systemctl restart apache2'
                }
            }
        }
    }
}
