
pipeline {
  agent any
  
  tools{
        jdk 'jdk11'
        maven 'maven3'
        }
  
  stages {
    stage('Git Checkout') {
      steps {
        // Git checkout
        git branch: '<branch_name>', url: '<git_repository_url>'
      }
    }
  }
}
