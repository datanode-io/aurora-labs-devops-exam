pipeline {
    agent any

    stages {
        stage('Run Script') {
            steps {
                sh 'apt install python3.8 && python3 main.py'
            }
        }    
    }
}