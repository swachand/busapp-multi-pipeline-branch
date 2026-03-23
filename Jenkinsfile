pipeline {
    agent any
    stages {
        stage('Docker Build') {
            steps {
                sh 'sh docker-build.sh'
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
                sh 'docker push swach/busapp:develop'
            }
        }

        stage('Deploy Env') {
            steps {
                sh 'sh docker-deploy.sh'
            }
        }
    }
}
