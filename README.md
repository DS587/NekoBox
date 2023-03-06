# NekoBox

This is a personalized branch, for the purpose of specified users to use.

Forked from a previous commit without Redis and CDN configuration. 

Thanks for the [original gopher](https://github.com/wuhan005), NekoBox is an amazing project!

# Pre
You should install the follwing dependencies:
- Go
- mySQL

# Install

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
