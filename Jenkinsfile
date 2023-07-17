def gv

pipeline {
    agent any
    parameters{
        choice(name: "VERSION", choices:['1.0','2.0','3.0','5.0'], description: '')
        booleanParam(name: "excuteTests", defaultValue: true, description: '')
    }
    stages {
        stage('init') {
            steps {
             script {
                gv = load "script.groovy"
             }
            }
        }
        stage('build') {
            steps {
            script {
                gv.BuildStage()
            }}
        }
        stage('test') {
            steps {
            script {
            gv.BuildStage()
            }}
        }
        stage('deploy') {
            steps {
            script {
            gv.BuildStage()
            }
            }
        }
                
    }
}
