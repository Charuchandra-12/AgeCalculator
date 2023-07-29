pipeline {
  agent any
  stages {
    stage('Checkout Code') {
      steps {
        git(url: 'https://github.com/Charuchandra-12/AgeCalculator', branch: 'main')
      }
    }

    stage('Log') {
      steps {
        sh 'ls -ltra'
      }
    }

  }
}