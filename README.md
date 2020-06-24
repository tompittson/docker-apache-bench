#apache-bench (docker-apache-bench)

##summary

A lightweight docker image that for running the Apache Bench (ab) command line http benchmarking tool

##Usage

Show usage

```
docker run --rm tpittson/apache-bench
```

Simple example - 10 concurrent requests running for 30 seconds

```
docker run --rm tpittson/apache-bench -t 30 -c 10 https://www.google.co.uk/
```

##Links
https://httpd.apache.org/docs/2.4/programs/ab.html
