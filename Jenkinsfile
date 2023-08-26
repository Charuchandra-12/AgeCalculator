pipeline {
  agent any
  stages {
    stage('checkout code') {
      steps {
        git(url: 'https://github.com/Charuchandra-12/AgeCalculator/tree/main', branch: 'main')
      }
    }

    stage('Adding logs') {
      parallel {
        stage('Adding logs') {
          steps {
            sh 'ls -ltr'
          }
        }

        stage('displaying contents') {
          steps {
            sh 'cat index.html'
          }
        }

      }
    }

  }
}