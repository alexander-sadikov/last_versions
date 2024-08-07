# Last versions

## Description
This is a docker environment with mysql container. Mysql container has a '**test_db**' database, '**content_versions**' table and a '**GetLatestContentVersions**' stored procedure that is receiving last versions of the content from the table.

## Table of contents
- [Installation](#installation)
- [Run procedure](#run-procedure)

## Installation
Just run following command inside root folder
```shell
docker-compose up -d
```

## Run procedure
Go inside php container using this command or any other preferred way
```shell
docker exec -it mysql bash
```
Login using following command and using 'root' password
```shell
mysql -u root -p test_db
```
Execute procedure to see the result
```shell
CALL GetLatestContentVersions();
```