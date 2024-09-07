pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'master', url: 'https://github.com/SaurabhPrakash2020/Web-pro'
            }
        }

        stage('Deploy to AWS CodeDeploy') {
            steps {
                codedeploy(
                    application: 'app-1',
                    deploymentGroup: 'app-1',
                    region: 'ap-south-1',
                    credentialsId: '720f4417-b86e-46fa-bb3d-1e2a977427d2'
                )
            }
        }
    }
}
