pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh 'qmake'
      }
    }
    stage('Notify') {
      steps {
        mail(subject: 'build result', body: 'This is the result', to: 'deuteros76@gmail.com')
      }
    }
  }
}