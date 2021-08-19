This project requires docker to be installed. Included in this directory is a sample node app taken from nodejs.org. 

Within this docker build project there are 3 errors. 
- fix those errors
- build the docker image and 
- start & run the docker web app as a daemon. 

Then using the using the *docker cli*
  
- List the details of the docker image, show the docker process running,  and output any docker logs into an outfile named: **running_docker_application.log**
  
- Using curl, please query the running docker web application and output into an outfile named: **web_request_details.txt**

## Building your image
`docker build . -t node-web-app`

## Running the image
`docker run -p 8080:8080 node-web-app`
