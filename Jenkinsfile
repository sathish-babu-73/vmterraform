pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/sathish-babu-73/vmterraform.git'
            }
        }
        stage('Build Infrastructure') {
            steps {
                
                    sh 'terraform init'
                    sh 'terraform apply -auto-approve'
                
            }
        }
        stage('Deploy Infrastructure') {
            steps {
                sh 'echo "Infrastructure built successfully"'
            }
        }
        stage('Deployment Success') {
            steps {
                sh 'echo "Infra_deployment successfully completed"'
            }
        }
    }
}
