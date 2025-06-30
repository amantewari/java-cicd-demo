pipeline {
    agent any
      stages {
        stage('Build') {
            steps {
                sh 'mvn clean install'
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
                    sh 'docker rm -f demo-app'
                    sh "docker run -d -p 9090:9090 --name ${imageName} ${imageName}"
                }
            }
         }
      }  
}

        

        
