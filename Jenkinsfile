pipeline {
    agent any
      stages {
        stage('Build') {
            steps {
                sh 'mvn clean install'
          }
        }
        stage('Run') {
            steps {
                sh 'java -jar target/*.jar'
          }
        }
    }      
}

       stage('Docker Build') {
            steps {
                script {
                    def imageName = 'demo-app'
                    sh "docker build -t ${imageName} ."
                }
            }
        }

        stage('Docker Run') {
            steps {
                script {
                    def imageName = 'demo-app'
                    sh "docker run -d -p 8080:8080 --name ${imageName} ${imageName}"