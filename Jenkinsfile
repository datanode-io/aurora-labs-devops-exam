pipeline {
    agent any

    stages {
        stage('Run Script') {
            steps {
                sh 'apt update && apt install software-properties-common && add-apt-repository ppa:deadsnakes/ppa && apt update && apt install python3.8 && python3 main.py'
            }
        }    
    }
}