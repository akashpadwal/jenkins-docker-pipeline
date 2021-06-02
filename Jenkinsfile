pipeline {
    environment { 
3
        registry = "devopshint/my-app-1.0" 
4
        registryCredential = 'devopshint' 
5
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
15
            steps { 
16
                script { 
17
                    dockerImage = docker.build registry + ":$BUILD_NUMBER" 
18
                }
19
            } 
20
        }
    }
}