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
                    declareBuildNum()
                    dockerBuild()
            }
        }
    

      stage("Push image") {
        steps {
          pushDocker()
        }
     }
 }
  
}
