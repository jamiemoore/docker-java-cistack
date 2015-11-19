# Java CI Stack using Docker compose.

## Docker Containers  
* devbox
* Gitlab
* Nexus
* GoCD Server
* GoCD Agent
* prodbox

## Processes
* Check the code into gitlab from the devbox
* CoCD Triggers on code change
* Uploads artifact into nexus
todo:
* Detect new artifact in nexus
* Run GoCD to deploy to the prodbox

## Helpful Commands

You can't put a scale option into the docker-compose.yml 
```bash
docker-compose up -d && docker-compose scale gocd-agent=3 
```

Run bash as the command using docker-compose
```bash
docker-compose run devbox /bin/bash
```

By default docker-compose will not build changed docker files
```bash
docker-compose build
```

create a simple maven webapp project
```bash
mvn archetype:generate -DgroupId=so.jamie \
-DartifactId=javawebapp \
-DarchetypeArtifactId=maven-archetype-webapp \
-DinteractiveMode=false
```

sources:
* http://www.mkyong.com/maven/how-to-create-a-web-application-project-with-maven/
