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
      stage('bulid') {
         steps {
             dir ('/var/lib/jenkins/workspace/pipeline_master') {
                 script {
                     sh 'docker build -t my-tomcat .'
    }
  }
         }
      }
    }
  }
