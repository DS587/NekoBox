# NekoBox

This is a personalized branch, for the purpose of specified users to use.

Forked from a previous commit without Redis and CDN configuration. 

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
