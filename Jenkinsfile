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
        pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                script {
                    git 'https://github.com/yourusername/yourrepo.git'
                }
            }
        }

        stage('Build and Test') {
            steps {
                // Add your build and test commands here
            }
        }

        stage('Deploy to Apache Server') {
            steps {
                // Install Apache on the target server
                script {
                    sh 'ssh ubuntu@3.208.26.239 "sudo apt-get update && sudo apt-get install -y apache2"'
                }

                // Copy and deploy your application to Apache's document root
                script {
                    sh 'ssh ubuntu@3.208.26.239 "sudo cp -r /path/to/your/app/* /var/www/html/"'
                }

                // Restart Apache
                script {
                    sh 'ubuntu@3.208.26.239 "sudo systemctl restart apache2"'
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
    }
}
