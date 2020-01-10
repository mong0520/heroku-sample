## Build

```
make build
```

## Run

```
make run
```

## Verify

```
curl http://localhost
```

## Release to Heroku

1. Login and create heorku app
```
sudo heroku login
sudo heroku container:login
heroku create
heroku stack:set container
```

2. Add your ssh public key to https://dashboard.heroku.com/account

3. Deploy your app
```
# build and push your docker image to heroku's repo
sudo heroku container:push web

# release
sudo heroku container:release web

# browser your app
heroku open
```

4. (optional) Bind Github in release pipeline
