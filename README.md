# Nekomi

Nekomi is a personalized branch from NekoBox, for the purpose of specified users to use.

Forked from a previous commit without Redis and CDN configuration. 

Thanks for the [original gopher](https://github.com/wuhan005), NekoBox is an amazing project!

# Pre
You should install the following dependencies:
- Go
- mySQL (create a database for Nekomi manually)

# Install

You can download the [pre-build](https://github.com/DS587/NekoBox/releases/latest), or build Nekomi by yourself.

To build:
```bash
git clone https://github.com/DS587/NekoBox.git
cd NekoBox

# build
go build -o NekoBox

# Change the app.conf to assign associated settings
cp conf/app.sample.conf app.conf

# Run
./NekoBox
```

If you want enable https, you can use [Caddy](https://github.com/caddyserver/caddy)

Configure the Caddyfile in `/etc/caddy/`, the follwing is a simple case

```bash
domainToYouBox.com {
    reverse_proxy  127.0.0.1:8080
    tls demo@demo.com
}
```

