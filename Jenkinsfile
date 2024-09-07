pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                script {
                    try {
                        echo 'Checking out code...'
                        git branch: 'master', url: 'https://github.com/SaurabhPrakash2020/Web-pro'
                    } catch (Exception e) {
                        echo "Checkout failed: ${e.getMessage()}"
                        throw e
                    }
                }
            }
        }

        stage('Deploy to AWS CodeDeploy') {
            steps {
                script {
                    try {
                        echo 'Deploying to AWS CodeDeploy...'
                        codedeploy(
                            application: 'app-1',
                            deploymentGroup: 'app-1',
                            region: 'ap-south-1',
                            credentialsId: 'f148cac3-4398-437c-b6a7-7463b1104f30'
                        )
                    } catch (Exception e) {
                        echo "Deployment failed: ${e.getMessage()}"
                        throw e
                    }
                }
            }
        }
    }
}
