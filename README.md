# 🚀 Spring Boot Application Deployment with CI/CD  

This project demonstrates the **CI/CD pipeline setup** for deploying a **Spring Boot** application in a **Kubernetes cluster**, integrating key DevOps tools.

## 📌 Technologies & Tools Used  

- **Maven** – Build automation and dependency management  
- **Git** – Version control system  
- **Jenkins** – CI/CD automation  
- **SonarQube** – Code quality and security analysis  
- **Docker** – Containerization of the application  
- **Kubernetes (K8s)** – Container orchestration  
- **Prometheus** – Monitoring and alerting system  
- **Grafana** – Visualization and observability  

## 📂 Project Structure  

```
/project-root
│── .mvn/                    # Maven Wrapper
│── src/                      # Application source code
│── .gitattributes            # Git attributes configuration
│── .gitignore                # Git ignore file
│── Dockerfile                # Docker image configuration
│── Jenkinsfile               # Main CI/CD pipeline definition
│── Jenkinsfile1              # Alternative Jenkins pipeline
│── bankapp.jar               # Compiled Spring Boot JAR file
│── deployment.yml            # Kubernetes deployment manifest
│── docker-compose.yml        # Docker Compose for local setup
│── jenkins2_SonarQube        # Jenkins-SonarQube setup
│── mvnw                      # Maven Wrapper (Unix)
│── mvnw.cmd                  # Maven Wrapper (Windows)
│── pom.xml                   # Maven project configuration
│── service.yml               # Kubernetes service definition
```

## 📈 CI/CD Pipeline Workflow  

1. **Code Commit** – Developers push code changes to Git  
2. **Build & Test** – Maven compiles, runs unit tests, and SonarQube checks code quality  
3. **Containerization** – Docker builds and pushes the image to a registry  
4. **Deployment** – Kubernetes deploys the application using YAML configurations  
5. **Monitoring** – Prometheus and Grafana provide insights into application performance  

## 🚀 Getting Started  

### 🔹 Clone the Repository  

```bash
git clone https://github.com/your-repo.git
cd your-repo
```

### 🔹 Build the Application  

```bash
mvn clean package
```

### 🔹 Run with Docker  

```bash
docker build -t springboot-app .
docker run -p 8080:8080 springboot-app
```

### 🔹 Deploy to Kubernetes  

```bash
kubectl apply -f deployment.yml
kubectl apply -f service.yml
```

## 📊 Monitoring Setup  

- **Prometheus** scrapes application metrics  
- **Grafana** visualizes performance data  
- **SonarQube** ensures code quality  
