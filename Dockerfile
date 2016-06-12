FROM viossat/lighttpd:latest
MAINTAINER Mathieu Viossat <mathieu@viossat.fr>

ADD https://raw.githubusercontent.com/keeweb/keeweb/gh-pages/index.html \
	https://raw.githubusercontent.com/keeweb/keeweb/gh-pages/manifest.appcache ./
