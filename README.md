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
[![Quality Gate Status](http://90.127.230.73:1052/api/project_badges/measure?project=BTQ_TestsAuto&metric=alert_status)](http://90.127.230.73:1052/dashboard?id=BTQ_TestsAuto)

Automatics tests is doing with C# language, it use Framework Selenium to spot and make action with Web element
Testcases :
- Suscribe on site
- Logout
- Login
- Create a quizz
- Replay to a quizz

# Execution
To launch automatics tests (on Windows) you need :
- Google chrome (version 83.0.4103.97)
- Enter all parameters for test on file "config.xml" (path : balance-ton-quizz\TestBalanceTonQuizz\TestBalanceTonQuizz\bin\Debug\netcoreapp3.1\config.xml)

Launch executable file "TestBalanceTonQuizz.exe" (path : balance-ton-quizz\TestBalanceTonQuizz\TestBalanceTonQuizz\bin\Debug\netcoreapp3.1\TestBalanceTonQuizz.exe)

# Report
An HTML report is automaticaly generate to write all result for automatics tests, it should be open at the end of execution.
You can fin all result report on folder "Reports" (path : balance-ton-quizz\TestBalanceTonQuizz\TestBalanceTonQuizz\bin\Debug\netcoreapp3.1\Reports)