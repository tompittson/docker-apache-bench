# apache-bench (docker-apache-bench)

## summary

A lightweight docker image that for running the Apache Bench (ab) command line http benchmarking tool

## Usage

Show usage

```
docker run --rm tpittson/apache-bench
```

Simple example - 10 concurrent requests running for 30 seconds

```
docker run --rm tpittson/apache-bench -t 30 -c 10 https://www.google.co.uk/
```

If your target returns variable length responses use the `-l` flag so that these are not shown as failures

```
docker run --rm tpittson/apache-bench -t 30 -c 10 -l https://www.google.co.uk/
```

## Testing on Localhost

If you try and hit a URL on localhost it will actually try and connect internally within the container and fail. Instead of using localhost or 127.0.0.1 you can use host.docker.internal

```
docker run --rm tpittson/apache-bench -t 30 -c 10 -l http://host.docker.internal:8080/api/ping
```

## Links
https://httpd.apache.org/docs/2.4/programs/ab.html
