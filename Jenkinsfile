
pipeline {
  agent any
  
  stages {
    stage('Git Checkout') {
      steps {
        // Git checkout
        git branch: 'master', url: 'https://github.com/bhavyatrivedi01/Blood-Bank-management-Python.git'   
      } 
    }

    stage('Deploy to Apache2') {
      steps {
        // Deploy to Apache2
        sh './deployment/deploy_prod.sh'
      }
    }
  }
}
