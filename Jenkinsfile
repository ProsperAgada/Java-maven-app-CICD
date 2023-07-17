pipeline {
    agent any
    tools {
        maven "Maven"
    }
    parameters{
        choice(name: "VERSION", choices:['1.0','2.0','3.0','5.0'], description: '')
        booleanParam(name: "excuteTests", defaultValue: true, description: '')
    }
    stages {
        stage('build jar') {
            when {
                expression {
                    params.executeTests
                }
                            
            }
            steps {
                echo "building application..."
                sh "mvn package"            
            }
        }
        stage('build image') {
            steps {
                echo "building docker image"
                withCredentials([usernamePassword(credentialsid: 'agasprosper', passwordVariable: 'PASS', usernameVariable: 'USER')])
                sh 'docker build -t agasprosper/java-maven-app:${BUILD_ID}'
                sh 'echo $PASS | docker login -u $USER --password-stdin'
                sh 'docker push agasprosper/java-maven-app:${BUILD_ID}'             
            } 
        }
        stage('deploy') {
            steps {
             echo "Hello this is a deploy stage" 
             echo "Deploying verson ${params.VERSION}"
            }
        }
                
    }
}
