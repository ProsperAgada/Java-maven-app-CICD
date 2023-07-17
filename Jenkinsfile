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
                withCredentials([usernamePassword(credentialsId: 'dockerhub-credentials', passwordVariable: 'PASS', usernameVariable: 'USER')])
                sh 'docker build -t agasprosper/java-maven-app:0.10'
                sh "echo $PASS | docker login -u $USER --password-stdin"
                sh 'docker push agasprosper/java-maven-app:0.10'             
            } 
        }
        stage('deploy') {
            steps {
             echo "this is the deploystage" 

            }
        }
                
    }
}
