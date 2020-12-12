
node {

    def app
    def registry = 'mavsoccer1417/helloworld'


    stage('Clone repository') {
        git 'https://github.com/MavSoccer1417/HelloWorld.git'
    }
    stage('Build') {
        sh 'javac HelloWorld.java'
    }
    
    stage('Build Docker Image') {
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

    stage('Pull Image') {
        docker.withRegistry('https://registry.hub.docker.com', 'dockerCredentials') {
            app.pull()
        }
    }

    stage('Run Image') {
        app.run()
    }

}
