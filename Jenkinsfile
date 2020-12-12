
node {

    def app
    def registry = 'mavsoccer1417/helloworld'
    def registryCredential = 'johnokeefengc'


    stage('Clone repository') {
        git 'https://github.com/MavSoccer1417/HelloWorld.git'
    }
    stage('Build') {
        sh 'javac HelloWorld.java'
    }
    
    stage('Build Docker Image') {
        /*sh ' docker build --tag helloworld:1.0 .'
         *docker.withRegistry( 'https://' + registry, registryCredential {
        docker.withRegistry( ' registry, registryCredential {
            def buildName = registry + ":$BUILD_NUMBER"
                app = docker.build buildName
                app.push()
        }*/ 
        sh 'echo $USER'
        def buildName = registry + ":$BUILD_NUMBER"
        app  = docker.build(buildName)
    }

    stage('Test Image') {
        def buildName = registry + ":$BUILD_NUMBER"
    /*
        docker.run buildName
    */
    }
    stage('Push Image') {
        docker.withRegistry('https://registry.hub.docker.com', 'dockerCredentials') {
            app.push()
        }
    }


}
