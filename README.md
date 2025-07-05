# 🌱 Soil Nutrient Analysis System

[![Java](https://img.shields.io/badge/Java-17-orange.svg)](https://openjdk.java.net/)
[![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.2.6-brightgreen.svg)](https://spring.io/projects/spring-boot)
[![Maven](https://img.shields.io/badge/Maven-3.8+-blue.svg)](https://maven.apache.org/)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

> **A comprehensive web-based system for analyzing soil nutrient levels and providing intelligent recommendations for optimal crop cultivation.**

## 🚀 Features

### 🌿 Core Functionality
- **Real-time Soil Analysis**: Input soil parameters and get instant nutrient analysis
- **Smart Recommendations**: AI-powered suggestions for crop selection and fertilization
- **Interactive Dashboard**: Beautiful, responsive web interface
- **Analysis History**: Track and review previous soil tests
- **User Management**: Secure login and profile management

### 📊 Analysis Parameters
- **Nitrogen (N)**: Essential for leaf growth and chlorophyll production
- **Phosphorus (P)**: Critical for root development and flowering
- **Potassium (K)**: Important for disease resistance and fruit quality
- **pH Levels**: Determines nutrient availability to plants
- **Region-specific Analysis**: Location-based recommendations

### 🎯 Technology Stack
- **Backend**: Spring Boot 3.2.6 with Java 17
- **Frontend**: Thymeleaf templates with modern CSS
- **Build Tool**: Apache Maven
- **Server**: Embedded Tomcat
- **Database**: SQLite (configurable for production)

## 📋 Prerequisites

Before running this application, make sure you have:

- **Java 17** or higher
- **Maven 3.8+**
- **Git** (for cloning)

## 🛠️ Installation & Setup

### 1. Clone the Repository
```bash
git clone https://github.com/Naveenkm07/Soil-Nutrient-Analysis-System.git
cd Soil-Nutrient-Analysis-System
```

### 2. Build the Project
```bash
mvn clean install
```

### 3. Run the Application
```bash
mvn spring-boot:run
```

### 4. Access the Application
Open your browser and navigate to: **http://localhost:8080**

## 🏗️ Project Structure

```
Soil-Nutrient-Analysis-System/
├── src/
│   ├── main/
│   │   ├── java/com/soilanalysis/
│   │   │   ├── web/
│   │   │   │   ├── controller/
│   │   │   │   │   ├── AnalysisController.java
│   │   │   │   │   └── HomeController.java
│   │   │   │   └── WebApp.java
│   │   │   ├── controllers/
│   │   │   └── utils/
│   │   └── resources/
│   │       ├── templates/
│   │       │   ├── index.html
│   │       │   ├── dashboard.fxml
│   │       │   ├── login.fxml
│   │       │   ├── register.fxml
│   │       │   ├── soil-analysis.fxml
│   │       │   ├── analysis-history.fxml
│   │       │   ├── profile.fxml
│   │       │   └── welcome.fxml
│   │       ├── static/css/
│   │       │   └── styles.css
│   │       ├── sql/
│   │       │   └── create_tables.sql
│   │       └── application.properties
├── pom.xml
├── README.md
└── .gitignore
```

## 🎮 Usage Guide

### Getting Started
1. **Launch the Application**: Start the Spring Boot server
2. **Navigate to Homepage**: Visit `http://localhost:8080`
3. **Input Soil Data**: Enter your soil parameters:
   - Region/Location
   - Nitrogen levels (N)
   - Phosphorus levels (P)
   - Potassium levels (K)
   - pH value
4. **Get Analysis**: Click "Analyze" to receive detailed recommendations
5. **Review Results**: View nutrient analysis and crop suggestions

### Understanding Results
- **Optimal Range**: Green indicators for balanced nutrients
- **Deficient**: Red indicators requiring supplementation
- **Excessive**: Yellow indicators suggesting reduced fertilization
- **Crop Recommendations**: Best-suited crops for your soil conditions

## 🔧 Configuration

### Application Properties
Key configuration options in `application.properties`:

```properties
# Server Configuration
server.port=8080
server.servlet.context-path=/

# Thymeleaf Configuration
spring.thymeleaf.cache=false
spring.thymeleaf.prefix=classpath:/templates/
spring.thymeleaf.suffix=.html

# Logging
logging.level.com.soilanalysis=DEBUG
```

### Customization
- **Port**: Change `server.port` for different deployment scenarios
- **Database**: Configure database connection for production use
- **Logging**: Adjust log levels based on environment needs

## 🧪 Testing

### Run Tests
```bash
mvn test
```

### Manual Testing
1. **Homepage**: Verify responsive design and form functionality
2. **Analysis**: Test with various soil parameter combinations
3. **Navigation**: Ensure all pages load correctly
4. **Responsiveness**: Test on different screen sizes

## 🚀 Deployment

### Local Development
```bash
mvn spring-boot:run
```

### Production Build
```bash
mvn clean package
java -jar target/soil-nutrient-web-1.0-SNAPSHOT.jar
```

### Docker Deployment (Optional)
```dockerfile
FROM openjdk:17-jdk-slim
COPY target/soil-nutrient-web-1.0-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]
```

## 🤝 Contributing

We welcome contributions! Please follow these steps:

1. **Fork** the repository
2. **Create** a feature branch (`git checkout -b feature/AmazingFeature`)
3. **Commit** your changes (`git commit -m 'Add some AmazingFeature'`)
4. **Push** to the branch (`git push origin feature/AmazingFeature`)
5. **Open** a Pull Request

### Development Guidelines
- Follow Java coding conventions
- Add comments for complex logic
- Update documentation for new features
- Ensure all tests pass

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

**Naveen KM**
- GitHub: [@Naveenkm07](https://github.com/Naveenkm07)
- Project: [Soil Nutrient Analysis System](https://github.com/Naveenkm07/Soil-Nutrient-Analysis-System)

## 🙏 Acknowledgments

- **Spring Boot Team** for the excellent framework
- **Maven Community** for build tool support
- **Open Source Contributors** for inspiration and tools
- **Agricultural Experts** for domain knowledge validation

## 📞 Support

If you encounter any issues or have questions:

1. **Check Issues**: Look for existing solutions in [GitHub Issues](https://github.com/Naveenkm07/Soil-Nutrient-Analysis-System/issues)
2. **Create Issue**: Report bugs or request features
3. **Documentation**: Review this README and code comments
4. **Community**: Engage with other developers in discussions

---

<div align="center">

**🌱 Empowering farmers with data-driven soil analysis for sustainable agriculture 🌱**

[![GitHub stars](https://img.shields.io/github/stars/Naveenkm07/Soil-Nutrient-Analysis-System.svg?style=social&label=Star)](https://github.com/Naveenkm07/Soil-Nutrient-Analysis-System)
[![GitHub forks](https://img.shields.io/github/forks/Naveenkm07/Soil-Nutrient-Analysis-System.svg?style=social&label=Fork)](https://github.com/Naveenkm07/Soil-Nutrient-Analysis-System)

</div> 