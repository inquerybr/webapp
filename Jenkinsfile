pipeline {
  agent {
    docker {
      image 'node:10.14.0-alpine'
    }
  }
  stages {
    stage('Build') {
      steps {
        sh 'npm install && npm build'
      }
    }
  }
}
