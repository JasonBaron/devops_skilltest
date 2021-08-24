This project requires docker to be installed. Included in this directory is a sample node app taken from nodejs.org. 

Within this docker build project there are 3 errors. 
- fix those errors
- build the docker image
- start & run the docker web app as a daemon

Then using the using the, *docker cli*
  
- List the details of the docker image, show the docker process running,  and output any docker logs into an outfile named: **running_docker_application.log**

$ docker images|grep node-web-app
node-web-app                         latest                                                  dd29a3c4a701   14 hours ago    947MB

$ docker ps | grep node-web-app
3a6c8643da1f   node-web-app             "docker-entrypoint.s…"   2 minutes ago       Up 2 minutes       0.0.0.0:8082->8080/tcp, :::8082->8080/tcp   romantic_babbage
(Note: My local machine already bind with 8080 host port with other program so, I have created container with host port: 8082)

$ docker logs 3a6c8643da1f >> running_docker_application.log
$ cat running_docker_application.log 
Running on http://0.0.0.0:8080

- Using curl, query the running docker web application and output into an outfile named: **web_request_details.txt**

$ curl -s http://localhost:8082 >> web_request_details.txt
$ cat web_request_details.txt 
Hello World

## Building your image
`docker build . -t node-web-app`

## Running the image
`docker run -p 8080:8080 node-web-app`
