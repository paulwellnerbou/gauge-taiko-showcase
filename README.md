# Test project to dockerize gauge/taiko

This is the basic gauge/taiko project template. I added a `Dockerfile` and a `docker-compose.yml` to it trying to run it in an docker environment.

The only adjustments in comparison to the project template are:

* set `headless` to true
* add recommended browser args as documented in the link below to `openBrowser()`
* add `'--disable-features=VizDisplayCompositor'` to browser args as on some system this is necessary to start headless mode
* Fix implementation to make tests green

## Information I used to build this docker files

* Taiko's documentation on how to run taiko with docker: https://taiko.gauge.org/#taiko-with-docker
* Taiko's deprecated docker file: https://github.com/getgauge-contrib/gauge-docker/blob/master/taiko.dockerfile

## Error I get without `'--disable-features=VizDisplayCompositor'`

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
