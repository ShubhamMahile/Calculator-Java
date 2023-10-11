pipeline {
    agent any
    
    stages{
        stage("Source Code"){
            steps{
                echo "Cloning the Code"
               //git url: "https://github.com/ShubhamMahile/Calculator-Java.git", branch: "main"
            }
        }
        stage("Build & Test"){
            steps{
                echo "Building an Image"
                //bat "docker build . -t calculator-java"
            }
        }
        stage("Push to DockerHub"){
            steps{
                echo "Pushing an Image to Docker Hub"
                //withCredentials([usernamePassword(credentialsId:"dockerHub",passwordVariable:"dockerHubPass",usernameVariable:"dockerHubUser")]){
                   // bat "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPass}"
                   // bat "docker tag calculator-java ${env.dockerHubUser}/calculator-java:latest"
                   // bat "docker push ${env.dockerHubUser}/calculator-java:latest" 
                }
            }
        }
        stage("Deploy"){
            steps{
                //bat "docker-compose down && docker-compose up -d"
                //bat "docker run -d shubhammahile/calculator-java:latest"
            }
        }
    }
}
