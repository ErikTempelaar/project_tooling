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
cd src
../scripts/build.sh'''
      }
    }
    stage('artifacts') {
      steps {
        archiveArtifacts 'build/*'
      }
    }
  }
}