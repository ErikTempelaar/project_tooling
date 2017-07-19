pipeline {
  agent {
    docker {
      image 'gcc:latest'
    }
    
  }
  stages {
    stage('build') {
      steps {
        sh 'mkdir -p build'
      }
    }
    stage('artifacts') {
      steps {
        archiveArtifacts 'build/*'
      }
    }
  }
}