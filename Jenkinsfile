
node {

    def app

    stage('Clone repository') {
        git 'https://github.com/MavSoccer1417/HelloWorld.git'
    }
    stage('Build') {
        sh 'javac HelloWorld.java'
    }
}
