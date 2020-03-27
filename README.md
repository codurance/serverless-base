# Serverless Base Image

  

This base image will help us ease and speed up the **AWS Lambda** sessions. This one provides the baseline for anyone to pickup and start developing *Lambdas* without the need of setting up the whole environment.

  

---

  

## Requirements

  

- Docker CE installed.

- Command line tool that can execute **docker** commands.

  

---

  

## How to use this

  

You can either run it directly with *docker* or with *docker-compose*.

  

### Docker example

  

-  `docker build -t codurance/serverless . ` First you need to build the image.

-  `docker run --rm -it --name codurance-serverless -v $(pwd):/home/svrless -p 8000:8000 -p 3000:3000 codurance/serverless /bin/bash` This will start an interactive session.

  

### Docker Compose example

 
 
-  `docker-compose build ` Builds the image (or updates it if you've made changes to the image) 
-  `docker-compose up -d ` Starts the container in dettached mode
-  `docker exec -it serverless-image_serverless-framework_1 /bin/bash ` starts and interactive session

  
  

After this, you'll be inside the container, able to run all serverless commands.

  

---

  

## Getting started

  

In order to create your first lambda, you can leverage on the **Serverless Framework**, by executing

`serverless create -t aws-nodejs -n my-service`. 

This will create a sample Lambda function called `my-service` based on **NodeJS** which you can change and configure later. You can specify other types like, as mentioned in the [docs](https://serverless.com/framework/docs/providers/aws/cli-reference/create/)

  

In order to interact with **AWS**, first you need to configure your credentials. You can do so by executing 

`serverless config credentials --provider aws --key KEY --secret SECRET`, 

where KEY and SECRET can be obtained from AWS *My security credentials* menu.

  

After that, you can deploy your Lambda Function by running 
`serverless deploy`

Alternatively, you can deploy to a specific environment by doing
 
 `serverless deploy --stage <YOUR_ENVIRONMENT_NAME> `, 
 
 for example: 
 
 `serverless deploy --stage production`

  

For further reference, please have look at [Serverless with AWS](https://serverless.com/framework/docs/providers/aws/)
