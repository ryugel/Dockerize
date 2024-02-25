FROM rustlang/rust:nightly AS build
RUN apt-get install libpq-dev
EXPOSE 8000
WORKDIR /app
COPY . .
RUN cargo install diesel_cli --no-default-features --features postgres
RUN cargo install --path .
RUN cp /usr/local/cargo/bin/blog .

CMD diesel migration run && ./blog