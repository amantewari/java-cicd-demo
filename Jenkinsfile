pipeline {
    agent any

    stages {
        stage('Check') {
            steps {
                git 'https://github.com/amantewari/java-cicd-demo.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean install'
            }
        }
    }
}
