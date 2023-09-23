
pipeline {
  agent any
  
  stages {
    stage('Git Checkout') {
      steps {
        // Git checkout
        git branch: 'master', url: 'https://github.com/bhavyatrivedi01/Blood-Bank-management-Python.git'
         sh 'git log HEAD^..HEAD --pretty="%h %an - %s" > GIT_CHANGES'
            def lastChanges = readFile('GIT_CHANGES')
      }
    }
  }
}
