# viossat/keeweb

Free cross-platform password manager compatible with KeePass.
https://keeweb.info/

- Alpine-based
- WebDAV support
- no TLS support, reverse proxy with TLS recommended

## Usage

```bash
docker run -d -p 80:80 viossat/keeweb
```

### WebDAV

First, start KeeWeb (`/my/vault-files` must contain the vault file):
```bash
docker run -d -p 80:80 -e WEBDAV_USERNAME=webdav -e WEBDAV_PASSWORD=secret -v /my/vault-files:/usr/share/nginx/html/webdav viossat/keeweb
```

Then, go to KeeWeb through your browser, click on `More`, click on `WebDAV` and enter your configuration:
```
URL: https://example.com/webdav/filenanme.kdbx
Username: webdav
Password: secret
```
