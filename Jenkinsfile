pipeline {
  agent {
    docker {
      image 'gcc:latest'
    }
    
  }
  stages {
    stage('build') {
      steps {
        sh '''mkdir -p build
cd src && g++ -Wall main.cpp greeter.cpp -o ../build/hello_world'''
      }
    }
    stage('artifacts') {
      steps {
        archiveArtifacts 'build/*'
      }
    }
  }
}