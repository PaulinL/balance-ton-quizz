# Balance ton quizz
**balance-ton-quizz**

Repository for the project "balance ton quizz"

## HOW-TO Build and run 

Go to balance-ton-quizz-server directory, and then run : 

```
mvn install
mvn clean package
mvn spring-boot:run
```

## Authors
Etienne BERRIE \
Ludovic HAMEL \
Paulin LAMBERT \
Alexandre MARIE
# Configuration
Change parameters on server (file : application.properties) to launch serveur

# Launch server



## Automatics Tests
[![Quality Gate Status](http://localhost:9005/api/project_badges/measure?project=BTQ_TestsAuto&metric=alert_status)](http://localhost:9005/dashboard?id=BTQ_TestsAuto)

Automatics tests is doing with C# language, it use Framework Selenium to spot and make action with Web element
Testcases :
- Suscribe on site
- Logout
- Login
- Create a quizz