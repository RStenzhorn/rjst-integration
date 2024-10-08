# The deployment Image
FROM eclipse-temurin:21.0.4_7-jre-jammy@sha256:d1c536be5ba42ea6d793b8eb67b8ced61fc66ae2c168d6c612113ebca661dd96

RUN mkdir -p /app

COPY /target/<NAME>.jar /app

WORKDIR /app

# Create a user group 'spring'
RUN groupadd --gid 1000 spring

# Create a user 'appuser' under 'spring'
RUN useradd --gid 1000 -M -N --uid 1000 spring

# Chown all the files to the app user.
RUN chown -R spring:spring /app

USER spring

EXPOSE 8080

CMD ["java", "-jar", "<NAME>.jar"]
