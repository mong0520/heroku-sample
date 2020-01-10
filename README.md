# Before start

## Hosted serverless service
|           | AWS EKS(k8s) | AWS ECS   | Heroku              | AWS Lambda + API Gateway     |
|-----------|--------------|-----------|---------------------|------------------------------|
| Type      | container    | container | container/ function | function                     |
| Free tier | No           | No        | 1,000 hrs/mo        | 1M request + 0.4M GB-Seconds |
| Tools     | k8s tools    | ecs-cli   | heroku-cli          | sam (AWS) sls (3rd party)    |

## Hosted database service
|           | AWS RDS                    | MongoDB Atlas     | AWS ElastiCache               |
|-----------|----------------------------|-------------------|-------------------------------|
| Type      | RDS                        | NoSQL             | Cache                         |
| Free tier | Yes db.t2.micro 750 hrs/mo | Yes 512MB storage | Yes cache.t2.micro 750 hrs/mo |

# Preparation
1. [Signup Heorku](https://signup.heroku.com/)
2. Download the [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli#download-and-install) tool or use [docker image](https://hub.docker.com/r/wingrunr21/alpine-heroku-cli/)
3. Clone this sameple project `git clone git@git.ouroath.com:nwei/heroku-sample.git`

# Develop

If you use heroku docker image, just replace the command `heroku` by `sudo docker run --rm -e HEROKU_API_KEY=<YOUR_API_KEY> wingrunr21/alpine-heroku-cli`

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
