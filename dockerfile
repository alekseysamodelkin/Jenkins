  
From alpine:3.7
RUN apk update
RUN apk add openjdk8
CMD tail -f /dev/null
