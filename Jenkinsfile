 
pipeline {
  agent any
  
  stages {
    stage('Git Checkout') {
      steps {
        // Git checkout
        git branch: 'master', url: 'https://github.com/bhavyatrivedi01/docker-app.git'   
      } 
    }
    stage('build docker image'){
      steps{
        sh 'chmod 777 ./deployment/deploy_prod.sh'
        sh './deployment/deploy_prod.sh'
        sh 'sudo docker build . -t app' 
        sh 'sudo docker images'
      }
    }
    
  }
}
