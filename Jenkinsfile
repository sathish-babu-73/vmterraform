pipeline {
    agent any
    environment {
        TF_VAR_credentials = credentials('100')
    }
    stages {
        stage('Destroy Infrastructure') {
            steps {
                withAWS(credentials: '100') {
                    //sh 'terraform init'
                    sh 'terraform destroy -auto-approve'
                }
            }
        }
    }
}

