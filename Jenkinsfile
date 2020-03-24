node {
    def app
    stage ('Clone'){
        checkout scm
    }
    stage ('Build image') {
        app = docker.build("ousmana/nginx")
    }
    stage ('Test image') {
        docker.image("ousmana/nginx").withRun(' -p 80:80'){ c ->
        sh 'docker ps '
        sh 'curl localhost:80'
        }
    }
}
