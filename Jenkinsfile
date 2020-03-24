node {
    def app
    stage ('Clone'){
        checkout scm
    }
    stage ('Build image') {
        app = docker.build("ousmana/nginx")
    }
    stage ('Test image') {
        docker.image("ousmana/nginx").withRun(' -p 8083:8083'){ c ->
        sh 'docker ps '
        sh 'curl localhost:8083'
        }
    }
}
