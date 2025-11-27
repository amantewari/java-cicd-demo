mkdir javaapp
cd javaapp

vi my-java-app

#Base image with JDK
FROM openjdk:17

# Set working directory
WORKDIR /usr/src/javaapp

# Copy Java file into container
COPY HelloWorld.java .

# Compile the Java file
RUN javac HelloWorld.java

# Set the command to run the program
CMD ["java", "HelloWorld"]

sudo systemctl status docker
sudo systemctl start docker
sudo systemctl enable docker

docker build -t my-java-app .
docker run --name javaapp my-java-app



