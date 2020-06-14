# Balance ton quizz
**balance-ton-quizz**

Repository for the project "balance ton quizz"

## HOW-TO Build and run 
For the back, go to balance-ton-quizz-server directory, and then run : 

```
mvn install
mvn clean package
mvn spring-boot:run
```

For the front, run a terminal and go to balance-ton-quizz-front. Then run :

```
ng start
```

Now you can access the front with localhost:4200
And the back with localhost:8484


# Configuration
Change parameters on server (file : application.properties) to launch serveur

# Launch server
## Database
Name Database : btq
User : 207102
Password : btq_polytech
## SSH
Address : ssh-balancetonquizz.alwaysdata.net
id : balancetonquizz
password : BalanceTonQuizz_Polytech
shell type : bash

## Automatics Tests
[![Quality Gate Status](http://90.127.230.73:1052/api/project_badges/measure?project=BTQ_TestsAuto&metric=alert_status)](http://90.127.230.73:1052/dashboard?id=BTQ_TestsAuto)

Automatics tests is doing with C# language, it use Framework Selenium to spot and make action with Web element
Testcases :
- Suscribe on site
- Logout
- Login
- Create a quizz

## Authors
Etienne BERRIE \
Ludovic HAMEL \
Paulin LAMBERT \
Alexandre MARIE