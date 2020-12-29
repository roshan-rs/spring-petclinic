pipeline {
    agent any
    stages {
        stage('checkout') {
            steps {
               git credentialsId: 'b05d9189-4cb6-4dba-9155-2c45b258efa9', url: 'https://github.com/cjpcloud/spring-petclinic.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
                }
        stage('Junit') {
             steps {
                 junit 'target/surefire-reports/*.xml'
             }
        }
        
    }}
