docker build -t kb:v1 --build-arg DB_HOST=<value> --build-arg DB_USER=<value> --build-arg DB_PASS=<value> --build-arg DB_NAME=<value> .

docker run --name=kb -dit -p 8080:80 -v <path till src>:/mnt/vol kb:v1
