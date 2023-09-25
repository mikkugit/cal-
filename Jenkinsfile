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
                sh 'sudo apt-get update -y'
                sh 'sudo apt-get install apache2 -y'
                sh 'wget https://www.tooplate.com/zip-templates/2136_kool_form_pack.zip '
                sh 'cd /var/www/html '
            }
           }
    
        }
     }

 
