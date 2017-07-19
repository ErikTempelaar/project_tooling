pipeline {
  agent {
    docker {
      image 'gcc:latest'
    }
    
  }
  stages {
    stage('build') {
      steps {
        sh '''chmod u+x scripts/build.sh
scripts/build.sh'''
      }
    }
  }
}