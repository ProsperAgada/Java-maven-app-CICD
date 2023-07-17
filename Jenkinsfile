pipeline {
    agent any
    tools {
        maven 'Maven'
    }
    stages {
        stage('build jar') {
            steps {
                echo "building application..."
                sh "mvn package"            
            }
        }
        stage('build image') {
            steps {
                echo "building docker image"
                sh 'docker build -t agasprosper/java-maven-app:0.10'
            
            } 
        }
        stage('deploy') {
            steps {
             echo "this is the deploystage" 

            }
        }
                
    }
}
