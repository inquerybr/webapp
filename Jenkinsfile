pipeline {
  agent {
    docker {
      image 'node:10.14.0-alpine'
    }
  }
  environment {
    npm_config_cache = 'npm-cache'
    HOME = '.'
  }
  stages {
    stage('Build') {
      steps {
        sh 'npm install && npm run build'
      }
    }
    stage('Deploy') {
      steps {
        sh 'sudo /var/lib/jenkins/scripts/deploy.sh'
      }
    }
  }
}
