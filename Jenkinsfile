pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh 'qmake'
        emailext(to: 'deuteros76@gmail.com', subject: 'test', body: 'test')
      }
    }
    stage('Notify') {
      steps {
        mail(subject: 'build result', body: 'This is the result', to: 'deuteros76@gmail.com')
      }
    }
  }
}