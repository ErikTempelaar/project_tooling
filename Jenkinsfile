pipeline {
  agent {
    docker {
      image 'gcc'
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