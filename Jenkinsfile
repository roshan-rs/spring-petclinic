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
        stage('deploy s3') {
             steps {
                 s3Upload consoleLogLevel: 'INFO', dontSetBuildResultOnFailure: false, dontWaitForConcurrentBuildCompletion: false, entries: [[bucket: 'devenv12', excludedFile: '', flatten: false, gzipFiles: false, keepForever: false, managedArtifacts: false, noUploadOnFailure: false, selectedRegion: 'us-east-1', showDirectlyInBrowser: false, sourceFile: '*/**.jar', storageClass: 'STANDARD', uploadFromSlave: false, useServerSideEncryption: false]], pluginFailureResultConstraint: 'FAILURE', profileName: 's3bucket', userMetadata: []
             }
        }
    }}
