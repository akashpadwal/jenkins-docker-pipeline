pipeline {
    environment { 

        registry = "devopshint/my-app-1.0" 

        registryCredential = 'devopshint' 

    }
    agent any
    tools {
        maven "MAVEN"
        
    }
    stages {
        stage('Initialize'){
            steps{
                echo "PATH = ${M2_HOME}/bin:${PATH}"
                echo "M2_HOME = /opt/maven"
            }
        }
   stage('Building our image') { 

            steps { 

                script { 

                    dockerImage = docker.build registry + ":$BUILD_NUMBER" 

                }

            } 
        }
    }
}