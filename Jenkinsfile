@Library('shared-library') _

pipeline {
  agent any

  tools {
    maven 'mvn-version'
  }

  stages {
    stage('Build') {
      steps {
        mvnPackage()
      }
    }
    
        stage("Build image") {
            steps {
                script {
                    declareBuildNum()
                    dockerBuild()
                }
            }
        }
    

      stage("Push image") {
        steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
                            myapp.push("latest")
                            myapp.push("${env.BUILD_ID}")
                    }
               }
          }
     }
 }
  
}
