# Balance ton quizz
**balance-ton-quizz**

Repository for the project "balance ton quizz"

## HOW-TO Build and run 
For the back, go to balance-ton-quizz-server directory, and then run : 

### Back

Go to balance-ton-quizz-server directory, and then run : 

```
mvn install
mvn clean package
mvn spring-boot:run
```
### Front

For the front, run a terminal and go to balance-ton-quizz-front. Then run :

```
npm install
npm start
```

Now you can access the front with localhost:4200
And the back with localhost:8484

### Images

Download minio here : https://min.io/download \
Then run these commands, on Windows OS :

```
set MINIO_ACCESS_KEY=minio
set MINIO_SECRET_KEY=minio-admin
minio server C:\<directory you want minio to run>
```

You can acces localhost:9000/, the images will be stored in a bucket.

# Configuration

Change parameters on server (file : application.properties) to launch serveur

# Launch server

## Database
Name Database : btq \
User : root \
Password : btq_polytech

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