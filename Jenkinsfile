pipeline {
  agent {
    docker {
      image 'node:10.14.0-alpine'
    }
  }
  environment {
    npm_config_cache = npm-cache
    HOME = .
  }
  stages {
    stage('Build') {
      steps {
        sh 'npm install && npm build'
      }
    }
  }
}
