pipeline {
    agent any
    parameters{
        choice(name: "VERSION", choices:['1.0','2.0','3.0','5.0'], description: '')
        booleanParam(name: "excuteTests", defaultValue: true, description: '')
    }
    stages {
        stage('build') {
            when {
                expression {
                    params.executeTests
                }
                            
            }
            steps {
                echo "Hello this is a build stage"            
            }
        }
        stage('test') {
            steps {
                echo "Hello this is a test stage"             
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
