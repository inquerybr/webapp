pipeline {
  agent {
    dockerfile {
      args '-v /var/www/inquery.com.br/html:/app/build -e USERID=$UID'
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
