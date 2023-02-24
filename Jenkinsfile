pipeline {
    agent any

    stages {
        stage('Run Script') {
            steps {
                sh 'sudo apt install python3.8 && python3 main.py'
            }
        }    
    }
}