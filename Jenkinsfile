pipeline {
    agent any

    tools {
        maven 'Maven_3.9.9'  // Ensure this matches the name of your Maven installation in Jenkins
        jdk 'JDK_21'
    }

    environment {
        IMAGE_NAME = 'abakhar217/abakhar0:bankapp'
        MYSQL_CONTAINER_NAME = 'mysqlcontainer'
        BANKAPP_CONTAINER_NAME = 'bankcontainer'
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from the repository using the configured Git credentials
<<<<<<< HEAD
                checkout([$class: 'GitSCM',
                          branches: [[name: 'main']],
=======
                checkout([$class: 'GitSCM', 
                          branches: [[name: 'main']], 
>>>>>>> ade966690fd27cdf76bded2059150f176ddbaa76
                          userRemoteConfigs: [[url: 'https://github.com/ABAKHAR721/test1.git', credentialsId: 'Git']]])
            }
        }

        stage('Build JAR') {
            steps {
                script {
                    // Run mvn clean package to build the application
                    bat 'mvn clean package -Dmaven.test.failure.ignore=true'
                }
            }
        }

        stage('Check if JAR exists') {
            steps {
                script {
                    // Ensure the JAR file exists before proceeding
                    if (!fileExists('target/bankapp.jar')) {
                        error "bankapp.jar not found! Build failed."
                    }
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image with the .jar file inside the image
                    bat "docker build -t ${IMAGE_NAME} ."
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    // Use the credentials stored in Jenkins for Docker Hub
<<<<<<< HEAD
                    withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'DOCKER_PASSWORD', usernameVariable: 'DOCKER_USERNAME')]) {
=======
                    withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'DOCKER_PASSWORD', usernameVariable: 'DOCKER_USERNAME')]) { 
>>>>>>> ade966690fd27cdf76bded2059150f176ddbaa76
                        // Log in to Docker Hub
                        bat "docker login -u %DOCKER_USERNAME% -p %DOCKER_PASSWORD%"
                        // Push the image to Docker Hub
                        bat "docker push ${IMAGE_NAME}"
                    }
                }
            }
        }

        stage('Start MySQL Container') {
            steps {
                script {
                    // Ensure the MySQL container is up using Docker Compose
                    bat 'docker-compose -f docker-compose.yml up -d mysql'
                }
            }
        }

        stage('Start Bank Application Container') {
            steps {
                script {
                    // Start the Bank App container using Docker Compose
                    bat 'docker-compose -f docker-compose.yml up -d bankapp'
                }
            }
        }

        stage('Clean up') {
            steps {
                script {
                    // Clean up stopped containers
                    bat 'docker-compose -f docker-compose.yml down'
                }
            }
        }
    }

    post {
        always {
            // Clean up any images or containers that were created
            bat 'docker system prune -f'
        }
    }
}
