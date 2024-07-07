# Declaração de qual imagem iremos utilizar
FROM openjdk:11

# Copiamos o arquivo OlaUnicamp.java para a máquina virtual
COPY trab5pt2/src/OlaUnicamp.java /

# Compilamos o arquivo
RUN javac OlaUnicamp.java

# Rodamos o comando `java` para rolar o programa compilado
CMD [ "java", "OlaUnicamp"]