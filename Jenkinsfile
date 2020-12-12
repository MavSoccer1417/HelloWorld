
node {

    def app
    def registry = 'helloworld'
    def registryCredential = 'johnokeefengc'


    stage('Clone repository') {
        git 'https://github.com/MavSoccer1417/HelloWorld.git'
    }
    stage('Build') {
        sh 'javac HelloWorld.java'
    }
    
    stage('DockerImageBuild') {
        #sh ' docker build --tag helloworld:1.0 .'
        #docker.withRegistry( 'https://' + registry, registryCredential {
        docker.withRegistry( ' registry, registryCredential {
            def buildName = registry + ":$BUILD_NUMBER"
                app = docker.build buildName
                app.push()
        }
    }
}
