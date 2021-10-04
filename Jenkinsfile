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
          step.build()
        }
      }
    }
    
        stage("Build image") {
            steps {
                 script {
                    calculator.multi(9,9)
                    step.buildNum()
                    step.buildImage('abigael081497')
                }
            }
        }
    

      stage("Push image") {
        steps {
                script {
                      step.pushImage()
                    }
               }
          }
     }
 }
