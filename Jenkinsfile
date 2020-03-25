node{
    
    def registryProject='registry.gitlab.com/youssouy/docker-gitlab'
    def IMAGE= "${registryProject}:version-${env.BUILD_ID}"
    
    stage('Clone'){
        git 'https://github.com/OusmanaTraore/docker-jenkinsfile.git'
    }
    def img = stage ('Build'){
        docker.build("$IMAGE", '.')
    }
    stage ('Run'){
        img.withRun("--name run-$BUILD_ID -p 80:80") { 
        sh 'curl localhost'
        }
    }
    stage ('Push') {
        docker.withRegistry('https://registry.gitlab.com', 'reg1') {
            img.push 'latest'
            img.push()
        } 
    }
}
