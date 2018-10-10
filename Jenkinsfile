pipeline {
    agent any

    stages {
        stage("spellcheck all documents") {
            steps {
                dir("src") {
                    script {
                        def files = findFiles()
                        for (def file : files) {
                            sh "./checkSpelling.sh ${file.name}"
                        }
                    }
                }
            }
        }
    }


    post {
        always {
            deleteDir();
            sh "docker kill \$(docker ps -q)"
            sh "docker rm \$(docker ps -a -q)"
        }
    }
}