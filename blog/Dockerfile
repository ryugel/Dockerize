# Créer un Dockerfile pour cette application en mode production
FROM rust
RUN apt-get install libpq-dev
EXPOSE 8000
WORKDIR /app
COPY . .
RUN chmod +x wait-for-it.sh
RUN apt-get install libc-dev
RUN echo rustup --version
RUN rustup update
RUN rustup install nightly
RUN rustup default nightly
RUN cargo install diesel_cli --no-default-features --features postgres
ENTRYPOINT [ "./wait-for-it.sh" ]
#RUN diesel migration run
#CMD ["cargo", "run"]