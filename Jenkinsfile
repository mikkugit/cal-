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
                script {
                    def sshCredentials = credentials('your-ssh-credentials-id')
                    sshCommand remote: sshCredentials, 
                               host: 'your.apacheserver.com', 
                               port: 22, 
                               command: '''
                               cd /path/to/your/webroot/
                               rm -rf *   # Optional: Remove existing files before deploying
                               tar -zxvf /path/to/your/deployable.tar.gz
                               service apache2 restart
                       }        '''
                 }

            }
        }        
}   
}
