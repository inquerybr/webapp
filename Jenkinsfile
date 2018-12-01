pipeline {
  agent none
  stages {
    stage('Build') {
      agent {
        docker {
          image 'node:10.14.0-alpine'
        }
      }
      environment {
        npm_config_cache = 'npm-cache'
        HOME = '.'
      }
      steps {
        sh 'npm install && npm run build'
      }
    }
    stage('Deploy') {
      agent any
      steps {
        sshagent(['inquery.com.br']) {
          sh 'ssh -o StrictHostKeyChecking=no -l deploy inquery.com.br uname -a'
          sh 'ssh deplo@inquery.com.br rm -rf /var/www/inquery.com.br/html/*'
          sh 'scp -rp ./build/*:deploy@inquery.com.br:/var/www/inquery.com.br/html'
        }
      }
    }
  }
}
