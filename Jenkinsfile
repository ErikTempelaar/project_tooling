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
        dir(path: 'src/') {
          sh 'g++ -Wall main.cpp greeter.cpp -o ../build/hello_world'
          sh 'ls'
        }
        
      }
    }
    stage('artifacts') {
      steps {
        archiveArtifacts 'build/*'
      }
    }
  }
}