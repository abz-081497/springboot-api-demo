@Library('shared-library') _
pipeline {
  agent any

  tools {
    maven 'mvn-version'
  }

  stages {
    stage('Build') {
      steps {
        script {
          welcome('Abby')
          calculator.add(12,12)
          mvnPackage()
        }
      }
    }
    
        stage("Build image") {
            steps {
                 script {
                    calculator.multi(4,6)
                    gv.buildNum()
                    gv.buildImage('abigael081497')
                }
            }
        }
    

      stage("Push image") {
        steps {
                script {
                      gv.pushImage()
                    }
               }
          }
     }
 }
