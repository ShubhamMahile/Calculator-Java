pipeline {
    agent any
    
    stages{
        stage('Checkout'){
            steps{
                echo "Cloning the Code"
               git url: "https://github.com/ShubhamMahile/Calculator-Java.git", branch: "main"
            }
        }
        stage('Build'){
            steps{
                echo "Building an Image"
                bat "docker build -t calculator-java-main ."
            }
        }
        stage('Test'){
            steps{
                echo "Pushing an Image to Docker Hub"
                withCredentials([usernamePassword(credentialsId:"dockerHub",passwordVariable:"dockerHubPass",usernameVariable:"dockerHubUser")]){
                    bat "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPass}"
                    bat "docker tag calculator-java-main ${env.dockerHubUser}/calculator-java-main:latest"
                    bat "docker push ${env.dockerHubUser}/calculator-java-main:latest" 
                }
            }
        }
        stage('Deploy'){
            steps{
                //bat "docker-compose down && docker-compose up -d"
                bat "docker run -d shubhammahile/calculator-java-main:latest"
            }
        }
    }
}
