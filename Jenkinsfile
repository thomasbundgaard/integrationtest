pipeline {
    environment {
        registry = "thomasbundgaard/testrepo"
        registryCredential = 'dockerhub'
    }
    agent {
        label "master"
    }
       stages {
        stage('Build') {
            steps {
                echo 'Building DJ now from github..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing DJ..'
                bat 'mvn install'
            }
        }
        /*stage('run on ubuntu') {
           agent {
                label "ubuntu"
            }
            options { skipDefaultCheckout() }
            steps {
                echo 'run on ubuntu'
                sh 'ls'
                sh 'pwd'
                sh 'docker images'
                sh 'git clone git@github.com:thomasbundgaard/integrationtest.git'
                sh 'ls'
                sh 'ls integrationtest'
                script {
                    myImg = docker.build (registry + ":integrationtest$BUILD_NUMBER", "integrationtest/builder")
                    //docker.withRegistry([credentialsId: registryCredential, url:""]) {
                    withDockerRegistry([credentialsId: registryCredential, url:""]) {
                        myImg.push "integrationtest$BUILD_NUMBER"
                    }
                }
                sh 'docker images'
                sh 'rm -rf integrationtest'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying DJ....'
                bat "kubectl create deployment integrationtest$BUILD_NUMBER-node --image=thomasbundgaard/testrepo:integrationtest$BUILD_NUMBER"
                bat "kubectl expose deployment integrationtest$BUILD_NUMBER-node --type=LoadBalancer --port=8080"
                bat "dir"
                bat "minikube service integrationtest$BUILD_NUMBER-node"
            }
        } */
    }



}
