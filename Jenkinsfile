pipeline {
    agent any
    environment {
        TF_VAR_credentials = credentials('100')
    }
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/sathish-babu-73/vmterraform.git'
            }
        }
        stage('Build Infrastructure') {
            steps {
                withAWS(credentials: '100') {
                   // sh 'terraform init'
                    sh 'terraform apply -auto-approve'
                }
            }
        }
        stage('Deploy Infrastructure') {
            steps {
                sh 'echo "Infrastructure built successfully"'
            }
        }
        stage('Deployment success') {
            steps {
                sh 'echo "Infra_deployment successfully completed"'
            }
        }
    }
}
