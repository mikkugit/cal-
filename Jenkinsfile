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
                    sh 'mvn clean install'
            }
        }
   
  stage('Deploy Apache') {
    steps {
        sh 'sudo apt-get update -y'
        sh 'sudo apt-get install apache2 -y'
        sh 'wget https://www.tooplate.com/zip-templates/2108_dashboard.zip '
        sh 'cd /var/www/html '
        sh 'ls'
        sh 'sudo apt install unzip'
        sh 'unzip -o 2108_dashboard.zip -d /var/www/html '
        sh 'cd /var/www/html/2108_dashboard' 
        sh 'sudo systemctl start apache2'
        sh 'sudo systemctl enable apache2'
        
                }
          }

   stage('Build Docker Image') {
    steps {
       dir ('/var/lib/jenkins/workspace/multi-branch_dev') {
        script {
                sh 'docker build -t my-apache-app .'
               }
            }
          }
        }
      stage('Run Docker Container') {
         steps {
              docker run -d -p 8080:80  690f3267871b 
   }
 }
    }
 }
}
      
