pipeline {
	agent any
    stages {
        stage('Build on k8 ') {
            steps {           
                        sh 'pwd'
                        sh 'cp -R helm/* .'
		        sh 'ls -ltr'
                        sh 'pwd'
			sh '/usr/local/bin/helm delete dugeun-app || true' // Delete the release if it exists
                        sh '/usr/local/bin/helm upgrade --install dugeun-app dugeun --set image.repository=seol11796/dugeun'
              			
            }           
        }
    }
}
