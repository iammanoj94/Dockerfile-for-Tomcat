pipeline{
    agent any

    tools {
         maven 'Maven'
         jdk 'Java'
    }

    stages{
        stage('checkout'){
            steps{
                echo 'Checking out Source code'
                git branch: 'main', url: 'https://github.com/iammanoj94/Dockerfile-for-Tomcat.git'
            }
        }
        stage('build'){
            steps{
                echo 'building and packaging'
                mvn package
            }
        }
        stage('creating and starting container '){
            steps{
                echo 'creating and starting container'
                docker build -t iammanoj94/MyApp .
                docker run -d -p 9999:8080 MyApp
            }
        }
    }
}