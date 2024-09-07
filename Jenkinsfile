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
                    credentialsId: 'f148cac3-4398-437c-b6a7-7463b1104f30'
                )
            }
        }
    }
}
