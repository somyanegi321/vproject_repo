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
    stage('Test') {
      steps{
        sh 'python3 /var/lib/jenkins/workspace/firstpipe/VehicleParkingManagement/manage.py test'
      }
    }
    stage('Deploy') {
      steps{
          //sh 'pwd'
          //sh 'ls'
          //sh 'sudo usermod -aG docker jenkins'
          sh 'sudo docker build -t testimage:${BUILD_NUMBER} .'
          //sh 'sudo docker run -dp 4000:8000 testimage'
       

        //sh 'python3 /var/lib/jenkins/workspace/firstpipe/VehicleParkingManagement/manage.py runserver'
        
      }
    }
  }
}