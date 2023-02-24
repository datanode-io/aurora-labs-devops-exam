pipeline {
    agent any

    stages {
        stage('Run Script') {
            steps {
                sh 'apt update && apt install -y software-properties-common && add-apt-repository ppa:deadsnakes/ppa && apt update && apt install -y python3.8 && python3 main.py'
            }
        }    
    }
}