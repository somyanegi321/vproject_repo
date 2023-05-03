pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'pip install django==3.2'
      }
    }
    stage('Test') {
      steps {
        sh 'python VechicleParkingManagement/manage.py test'
      }
    }
    stage('Create Artifacts') {
      steps {
        sh 'tar -czvf VechicleParkingManagement.tar.gz *'
        archiveArtifacts artifacts: 'VechicleParkingManagement.tar.gz', onlyIfSuccessful: true
      }
    }
  }
}
