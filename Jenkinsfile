pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                script {
                    try {
                        echo 'Starting Checkout Stage...'
                        echo 'Checking out code from branch master...'
                        git branch: 'master', url: 'https://github.com/SaurabhPrakash2020/Web-pro'
                        echo 'Code checkout successful.'
                    } catch (Exception e) {
                        echo "Checkout failed: ${e.getMessage()}"
                        echo 'Stack trace:'
                        e.printStackTrace() // More detailed error
                        throw e
                    }
                }
            }
        }

        stage('Deploy to AWS CodeDeploy') {
            steps {
                script {
                    try {
                        echo 'Starting Deploy Stage...'
                        echo 'Deploying to AWS CodeDeploy with application: app-1 and deployment group: app-1'
                        codedeploy(
                            application: 'app-1',
                            deploymentGroup: 'app-1',
                            region: 'ap-south-1',
                            credentialsId: '6097658f-822f-4e90-90ff-54e6a802dd7e'
                        )
                        echo 'AWS CodeDeploy deployment successful.'
                    } catch (Exception e) {
                        echo "Deployment failed: ${e.getMessage()}"
                        echo 'Stack trace:'
                        e.printStackTrace() // More detailed error
                        throw e
                    }
                }
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished.'
        }
        success {
            echo 'Pipeline succeeded.'
        }
        failure {
            echo 'Pipeline failed.'
        }
    }
}
