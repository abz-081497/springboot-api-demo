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
          calculator.add(30,70)
          mvnPackage()
        }
      }
    }
    
        stage("Build image") {
            steps {
                 script {
                    calculator.multi(9,9)
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
