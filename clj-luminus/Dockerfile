FROM openjdk:8-alpine

COPY target/uberjar/clj-luminus.jar /clj-luminus/app.jar

EXPOSE 3000

CMD ["java", "-jar", "/clj-luminus/app.jar"]
