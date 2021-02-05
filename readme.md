# KB Travels

## How to run

 1. Clone repository
 2. Open Terminal
 3. Run below command & provide the **argument** values
 4. `docker build -t kb:v1 --build-arg DB_HOST=<value> --build-arg DB_USER=<value> --build-arg DB_PASS=<value> --build-arg DB_NAME=<value> .`
 5. After building the image run below command with the **path**
 6. `docker run --name=kb -dit -p 8080:80 -v <path till src>:/mnt/vol kb:v1`
 7. To test hit below link

> http://localhost:8080/index.php/TestFolder/Test

## How to work

 1. Open **src** folder with any editor in the cloned directory and start development.
 2. To reflect it in browser follow the below steps
 3. `docker exec -it kb /bin/bash`
 4. Then inside docker run below command
 5. `./copy.sh`
 6. Then refresh the page




