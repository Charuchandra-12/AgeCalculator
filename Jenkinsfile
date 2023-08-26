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

    stage('Build') {
      steps {
        sh 'docker build -f Dockerfile .'
      }
    }

    stage('Login into Dockerhub') {
      environment {
        DOCKERHUB_USER = 'webhunter2017@gmail.com'
        DOCKERHUB_PASSWORD = 'Dockerhub@12@2023@12'
      }
      steps {
        sh 'docker login -u $DOCKERHUB_USER -p $DOCKERHUB_PASSWORD'
      }
    }

  }
}