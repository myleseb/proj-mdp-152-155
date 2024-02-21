pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    docker.build('calculator-app')
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    docker.image('calculator-app').push('your-docker-repository/calculator-app:latest')
                }
            }
        }
    }
}
