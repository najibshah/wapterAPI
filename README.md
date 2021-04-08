# wecare-api
system wide api documentation and mocking 

## Mock Server
A mock server can be started using `npm run start`, this will use prisme to run a mock api server that will use `api/api.oas2.yml`.

## Local Development Service Hub
A Local stack docker image can will be setup with a following setps
- copy `.env.sample` to a new file called `.env`
- default values in sample file should be enough but you can  change as requirment
- use command `docker-compose up --build` to the start the dockerize localstack (with `-d` flag this will run in background)

A default network of `wecare-service-hub` will be created all other container that requires access to this serice hub, e.g., for docker-compose file 
```
networks:
  default:
    external:
      name: wecare-service-hub_default
```

Dynamodb and Dynamdb-Admin service are currently set up by this service hub. All table that are created can be found in `docker/localstack/db`
Once setup properly you will be able to conenct to Dynamodb use the following example code 
```
new DynamoDB.DocumentClient({
    accessKeyId: 'AWS_ACCESS_KEY',
    secretAccessKey: 'AWS_ACCESS_SECRET',
    endpoint: 'http://localstack:4566'
  })
```

- Dynamodb admin is avaiable at `localhost:8001` this port number can be changed in `.env` file
- Localstack is exposed on edge port `4566` can be changed in `.env` file
# wapterAPI
