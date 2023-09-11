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
    stage('Deployment') {
            steps {
                // Deploy the application to the Tomcat server
                sh """
                    cp ${WORKSPACE}/target/${WAR_FILE} ${TOMCAT_HOME}/webapps/${APP_NAME}.war
                    ${TOMCAT_HOME}/bin/shutdown.sh
                    sleep 5  # Wait for Tomcat to stop
                    ${TOMCAT_HOME}/bin/startup.sh
            """
            }
        }
    }
}
