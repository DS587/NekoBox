# Nekomi

Nekomi is a personalized branch from NekoBox, for the purpose of specified users to use.

Forked from a previous commit without Redis and other cloud configuration. 

Thanks for the [original gopher](https://github.com/wuhan005), NekoBox is an amazing project!

# Pre
You should install the following dependencies:
- Go (If you need to build Nekomi)
- mySQL (create a database for Nekomi manually)

# Install

You can download the [pre-build](https://github.com/DS587/NekoBox/releases/latest), or build Nekomi by yourself.

To build:
```bash
git clone https://github.com/DS587/NekoBox.git
cd NekoBox

# Build
go build -o NekoBox
```

Configure and run:
```
# Change the app.conf to assign associated settings
cp conf/app.sample.conf app.conf

# Run
./NekoBox
```
You can access to Nekomi with the url: `http://ip:8080` or `http://localhost:8080`, port 8080 is changeable in app.conf

# Other
## Enable HTTPs
You can use [Caddy](https://github.com/caddyserver/caddy) to directly open HTTPs and get automatic certifate

Configure the Caddyfile in `/etc/caddy/`, the following is a simple case

```bash
domainToYouBox.com {
    reverse_proxy  127.0.0.1:8080
    tls demo@demo.com
}
```

## mySQL

if you meet error like this: `Access denied for user 'root'@'localhost'`, the problem is at mySQL, you can refer this [issue](https://stackoverflow.com/questions/39281594/error-1698-28000-access-denied-for-user-rootlocalhost)


