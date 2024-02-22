pipeline {
    agent any
    
    environment {
        JAVA_HOME = '/usr'
        MAVEN_HOME = '/usr/bin/mvn'
        PATH = "$PATH:$MAVEN_HOME/bin"
    }
    
    stages {
        stage('Build') {
            steps {
                echo 'Building the application...'
                sh 'mvn clean install'
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests...'
                sh 'mvn test'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying the application...'
                // Add deployment steps here
            }
        }
    }
}
