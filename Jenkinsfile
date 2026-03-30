pipeline {
    agent any
    environment {
        IMAGE_TAG = "${BRANCH_NAME}"
    }
    stages {

        stage('Docker Build') {
            steps {
                sh 'docker build -t swach/busapp:$IMAGE_TAG .'
            }
        }

        stage('Docker Login') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub-cred', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                    sh '''
                    echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin
                    '''
                }
            }
        }

        stage('Docker Push') {
            steps {
                sh 'docker push swach/busapp:$IMAGE_TAG'
            }
        }

        stage('Deploy Env') {
            steps {
                sh 'sh docker-deploy.sh'
            }
        }
    }
}
