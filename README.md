
# Spark with Optique data - Docker 

## Docker Installation

Install Docker (on linux) or Docker-toolbox (on Windows/Mac) 
  - [Mac](https://docs.docker.com/mac/step_one/)
  - [Windows](https://docs.docker.com/windows/step_one/)
  - [Linux](https://docs.docker.com/linux/step_one/)  

Linux only: [Use docker without sudo](http://askubuntu.com/a/477554)

## Spark Docker Installation
1. Open a terminal (Docker Quickstart Terminal on Windows/Mac or standard terminal on Linux).
2. Download zip and unzip or “git clone” from NorthwindSpark repository


  ```bash
  $ git clone https://github.com/vnikolopoulos/docker-spark.git
  ```
3. Linux only:

  ```bash
  $ sudo service docker start
  ```
4. Navigate to the Stream Server Directory:

  ```bash
  $ cd <path to Docker-SparkNorthwind>
  ```
4. Windows only

  ```bash
  $ dos2unix docker-entrypoint.sh
  ```
6. Build Spark Northwind image (this may take a few minutes the first time):

  ```bash
  $ docker build -t sparkservernw .
  ```

## Run  Spark Northwind container
1. Execute:
```bash
$ docker run --rm -it -p 8080:8080 -p 10000:10000 --name sparkservernw sparkservernw
```
2. To change the port Spark's UI listens to, you need to change the first part of the "-p <chage-this>:8080" argument.
3. To change the port Spark's JDBC server listens to, you need to change the first part of the "-p <chage-this>:10000" argument.
4. Leave this console open while you are working and then [stop the container](#exit-container).
5. Find your docker machine IP
  1. On Linux is: localhost
  2. On Windows/Mac open a new Docker Quickstart Terminal and run:
  ```
  $ docker-machine ip
  ```
  It will return your docker-machine ip **(from now on use this instead of localhost if you are on Windows or Mac)**.

## Functionality and Settings
- The Spark server inside the container has one database named "northwind"
- The default username and password are both empty


## Exit Spark Northwind container
To gracefully stop your docker container:

1. Select your Spark Northwind docker console.
2. Press Ctrl+C.
3. Close the console.



## license

MIT
