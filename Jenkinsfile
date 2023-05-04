pipeline {
  agent any
  stages {
    stage('clone'){
    steps{
      git branch: 'main', credentialsId: '123', url: 'https://github.com/somyanegi321/vproject_repo.git'
      }
    }
    
//     stage('Build') {
//       steps{
//         sh 'pip install django==3.2'
//       }
//     }
//     stage('Test') {
//       steps{
//         sh 'python3 /var/lib/jenkins/workspace/firstpipe/VehicleParkingManagement/manage.py test'
//       }
//     }
    stage('create a image') {
      steps{
          //sh 'pwd'
          //sh 'ls'
          //sh 'sudo usermod -aG docker jenkins'
         // sh 'sudo docker build -t somyanegi/testimage:${BUILD_NUMBER} .'
          withCredentials([string(credentialsId: 'dockercreed', variable: 'dockerpassword')]) {
    // som
    sh 'sudo docker login -u somyanegi -p ${dockerpassword}'
    sh 'sudo docker build -t somyanegi/testimage:${BUILD_NUMBER} .'
    sh 'sudo docker push somyanegi/testimage:${BUILD_NUMBER}'
}
          //sh 'sudo docker run -dp 4000:8000 testimage'
       

        //sh 'python3 /var/lib/jenkins/workspace/firstpipe/VehicleParkingManagement/manage.py runserver'
        
      }
    }
    stage('Deploy'){
    steps{
      withCredentials([file(credentialsId: '4fab8129-f78a-413f-898e-cdf5cc5b701c', variable: 'kubernetesvars')]) {
    // some block
     sh 'sudo kubectl --kubeconfig=$kubernetesvars apply -f newdep.yaml'
     sh 'sudo kubectl --kubeconfig=$kubernetesvars apply -f service.yaml'
     sh 'sudo kubectl --kubeconfig=$kubernetesvars get pods'
}
}
}
  }
 }
