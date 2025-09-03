pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/Dhanush9916/college-fest.git'
            }
        }

        stage('Stop Old Container') {
            steps {
                bat """
                docker stop collegefest
                docker rm collegefest
                """
            }
        }

        stage('Build Docker Image') {
            steps {
                bat "docker build -t collegefest ."
            }
        }

        stage('Run Docker Container') {
            steps {
                bat "docker run -d -p 5000:80 --name collegefest collegefest"
            }
        }
    }

    post {
        success {
            echo "✅ Your College Fest site is running at http://localhost:5000"
        }
        failure {
            echo "❌ Build failed. Check console logs."
        }
    }
}
