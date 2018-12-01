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
        sh 'npm install'
        sh 'npm run build'
        stash includes: 'build/**/*', name: 'webapp'
      }
    }
    stage('Deploy') {
      agent any
      steps {
        sshagent(['inquery.com.br']) {
          sh 'ssh deploy@inquery.com.br rm -rf /var/www/inquery.com.br/html/*'
          unstash 'webapp'
          sh 'ls -la'
          sh 'scp -rp build/* deploy@inquery.com.br:/var/www/inquery.com.br/html'
        }
      }
    }
  }
}
