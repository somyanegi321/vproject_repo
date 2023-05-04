pipeline {
  agent any
  stages {
    stage('clone'){
    steps{
      git branch: 'main', credentialsId: '123', url: 'https://github.com/somyanegi321/vproject_repo.git'
      }
    }
    
    stage('Build') {
      steps{
        sh 'pip install django==3.2'
      }
    }
  }
 }
