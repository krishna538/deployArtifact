pipeline {

agent any

stages{
  stage('checkout'){
    steps{
    
    git credentialsId: '0f1f7662-803c-4d9f-b916-437f13213a06', url: 'https://github.com/krishna538/deployArtifact.git'
    
    }
  
  }
  stage('Terraform init') {
      steps {
        bat "terraform init"
      }
    }
    
    stage('Terraform apply') {
      steps {
        bat "terraform apply -auto-approve target=ec2_creation.tf"
      }
    }

}

}
