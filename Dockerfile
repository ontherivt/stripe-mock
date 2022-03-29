# -*- mode: dockerfile -*-

FROM alpine:3.15.3
RUN apk --no-cache add ca-certificates
COPY stripe-mock /bin/stripe-mock
ENTRYPOINT ["/bin/stripe-mock", "-http-port", "12111", "-https-port", "12112"]
EXPOSE 12111
EXPOSE 12112
