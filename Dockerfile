FROM openjdk:11

COPY ./trab5pt2/src/OlaUnicamp.java .

RUN javac OlaUnicamp.java

CMD [ "java", "OlaUnicamp"]