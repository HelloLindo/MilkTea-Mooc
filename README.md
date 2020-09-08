# Milk Tea Mooc  
[![Build Status](https://www.travis-ci.org/HelloLindo/MilkTea-Mooc.svg?branch=master)](https://www.travis-ci.org/HelloLindo/MilkTea-Mooc)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/HelloLindo/MilkTea-Mooc)
[![LindoWu Project-MilkTeaMooc](https://img.shields.io/badge/LindoWu-MilkTeaMooc-brightgreen)](https://github.com/HelloLindo/MilkTea-Mooc)  


## What Is It?  
This is the back-end service of an online learning website named Milk Tea.  

The full techniques are [SpringBoot 2.3](https://spring.io/projects/spring-boot/) + [Spring 5](https://spring.io/) + [MyBatis 3](https://mybatis.org/mybatis-3/) + [MySQL](https://dev.mysql.com/downloads/mysql/) + [JWT](https://jwt.io/) + [Guava Cache](https://github.com/google/guava/wiki/CachesExplained) + [JMeter](https://jmeter.apache.org/).  

## Features  
- Base on **Java** with high portability.
- Use Json Web Token to support Login Module.
- Enable Guava Cache to provide high speed access.
- Pass JMeter Load Test with High Performance.  
    >[More about Milk Tea Mooc Load Test](./JMeterTest/README.md)  
    > **Load Test Summary**
    >
    > | *No Cache* | *MyBatis Second Level Cache* | *Guava Cache* |
    > | :----: | :----: | :----: |
    > | 6304.24<br />Transactions/s | 14545.10<br />Transactions/s |  15479.08<br />Transactions/s |

## Requirements  
**The following requirements are required in your machine for running Milk Tea Mooc Service:**

- **[Java](https://www.java.com/en/):** JDK 14+  
    >*JDK 8+ is ok, but you have to modify some codes because we use JDK 14 Lambda Syntax.*  
- **[Maven](http://maven.apache.org/):** 3.0.0+  
- **MySQL:** 5.6+
- **JMeter (Optional):** 5.3+  
    >*Install it if you want to run the Load Test.*  

## How To Run and Test  
1. Use Maven to Install it  
    ```shell script
     mvn install
    ```

2. Import the database into your MySQL Server and modify the properties file under `src/main/resources/application.properties`.  

3. Enter the target directory and Start the Application  
   > *You may redirect the application to use your application properties by adding `-Dspring.config.location` command.*  
    ```shell script
     cd target
     java -jar [-Dspring.config.location=./application.properties] milkteamooc-0.0.1-SNAPSHOT.jar
    ```
4. Test the APIs by curl tool  
   > *The default port is 8900.*  
    ```shell script
     curl 127.0.0.1:8900/api/v1/pub/video/list_banner
    ```

## TODO  
More features, like the support of *[Redis](https://redis.io/)*, [Docker](https://www.docker.com/) and so on, can be added into Milk Tea Mooc.

## Author  
[Lindo Wu](https://github.com/HelloLindo)

## Thanks  
**Thanks for coming! I'll be super thankful if you can star my project.**