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
        sh ' sudo unzip -o 2108_dashboard.zip -d /var/www/html '
        sh 'cd /var/www/html/2108_dashboard' 
        sh 'sudo systemctl start apache2'
        sh 'sudo systemctl enable apache2'
        
                }
          }

   stage('Build Docker Image') {
    steps {
       dir ('/var/lib/jenkins/workspace/multi-branch1_dev') {
        script {
                sh 'sudo docker build -t my-apache-app .'
               }
            }
          }
   }
        stage('Push image to Hub') {
            steps {
                script {
                sh ' sudo docker tag my-apache-app:latest madhu140/my-apache-app:latest'
       
            // Authenticate to Docker Hub securely
            sh '''
            echo "@Mad140hu" | docker login -u madhu140 --password-stdin docker.io
            '''

            // Push the Docker images to Docker Hub
                 sh  'docker push madhu140/my-apache-app:latest'

                     }
          } 
        }
     stage('Deploy to Kubernetes') {
            steps {
                script {
                    sh 'sudo apt-get update'
                    sh 'sudo apt-get install docker.io'
                   sh  'sudo apt-get install -y apt-transport-https ca-certificates curl'
                  sh 'curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -'
                  sh 'sudo sh -c 'echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" > /etc/apt/sources.list.d/kubernetes.list'
                  sh 'sudo apt-get update'

           }
         }
      }
    }
 }

