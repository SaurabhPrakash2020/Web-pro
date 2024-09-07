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
                    credentialsId: 'ba6b83ec-44ea-49bf-abab-3e45187e8b2e'
                )
            }
        }
    }
}
