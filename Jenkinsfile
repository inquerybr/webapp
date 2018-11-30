pipeline {
  agent {
    docker {
      image 'node:10.14.0-alpine'
    }
  }
  environment {
  }
  stages {
    stage('Build') {
      steps {
        sh 'npm install && npm build'
      }
    }
  }
}
