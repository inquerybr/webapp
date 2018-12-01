pipeline {
  agent {
    docker {
      image 'node:10.14.0-alpine'
      args '-v /var/www/inquery.com.br/html/:./build -e USERID=$UID'
    }
  }
  environment {
    npm_config_cache = 'npm-cache'
    HOME = '.'
  }
  stages {
    stage('Build') {
      steps {
        sh 'npm install'
      }
    }
    stage('Deploy') {
      steps {
        sh 'npm run build'
      }
    }
  }
}
