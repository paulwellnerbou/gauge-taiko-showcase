# Test project to dockerize gauge/taiko

This is the basic gauge/taiko project template. I added a `Dockerfile` and a `docker-compose.yml` to it trying to run it in an docker environment.

## Information I used to build this docker files

* Taiko's documentation on how to run taiko with docker: https://taiko.gauge.org/#taiko-with-docker
* Taiko's deprecated docker file: https://github.com/getgauge-contrib/gauge-docker/blob/master/taiko.dockerfile

## Errors I get running the docker file

```
docker-compose up
[...]
gauge-taiko-showcase_1_863b12c122b3 | # Getting Started with Gauge
gauge-taiko-showcase_1_863b12c122b3 |   ## Search Taiko Repository	{ Error: connect ECONNREFUSED 127.0.0.1:43631
gauge-taiko-showcase_1_863b12c122b3 | at TCPConnectWrap.afterConnect [as oncomplete] (net.js:1106:14)
gauge-taiko-showcase_1_863b12c122b3 | errno: 'ECONNREFUSED',
gauge-taiko-showcase_1_863b12c122b3 | code: 'ECONNREFUSED',
gauge-taiko-showcase_1_863b12c122b3 | syscall: 'connect',
gauge-taiko-showcase_1_863b12c122b3 | address: '127.0.0.1',
gauge-taiko-showcase_1_863b12c122b3 | port: 43631 }
gauge-taiko-showcase_1_863b12c122b3 | Error: ENOENT: no such file or directory, open '/tmp/screenshot-gauge-js-1569168350745.png'
```
