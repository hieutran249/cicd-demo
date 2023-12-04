pipeline {
	agent any

    tools {
        maven 'maven_3_9_5'
    }

	stages {

		stage('Build Maven'){
			steps {
				checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://gitlab.com/hieutran249/cicd-demo.git']])
				sh 'mvn clean install'
			}
		}

		stage('Build Docker Image') {
			steps {
				sh 'docker build -t cicd-demo .'
			}
		}
	}
}
