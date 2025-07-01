pipeline {
    agent any
      stages {
        stage('Build') {
            steps {
                sh 'mvn clean install'
          }
        }
        stage('Test') {
            steps {
                sh 'mvn test' // Run tests separately here
            }
        }
         stage('Check Docker Version') {
            steps {
                sh 'docker --version'
            }
        }
         stage('Docker Build & Push') {
            steps {
                script {
                    def dockerImage = docker.build("amandevopss/amandevopss:latest")
                    docker.withRegistry('https://index.docker.io/v1/', 'dockerhub-credentials-id') {
                        dockerImage.push()
                    }
                }
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
                sh 'kubectl apply -f k8s/deployment.yaml'
                sh 'kubectl apply -f k8s/service.yaml'
            }
        }
    }
}

        

        
