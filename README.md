<h1 align="center">
  <a href="https://www.auroralabs.com/">
    <img src="https://www.auroralabs.com/wp-content/uploads/2021/09/newsNevents_11-07-18.jpg" alt="auroralabs">
  </a>
</h1>
<p align="center">
  This repository contains the instalation of <strong>Jenkins </strong> with a single job.
  It's the solution for the Devops position – Home assignment.
</p>

<p align="center">
<a href="#prerequisites">Prerequisites</a> &nbsp;&bull;&nbsp;
<a href="#introduction">Introduction</a> &nbsp;&bull;&nbsp;
<a href="#installation">Installation</a> &nbsp;&bull;&nbsp;
<a href="#usage">Usage</a>
</p>

# Prerequisites
To use this solution you will need the following installed:

- <a href="https://docs.docker.com/engine/install/ubuntu/">Docker</a>
- Linux environment this solution was tested only on ubuntu server

# Introduction
This <b>solution</b> using the following:

- Docker to build the Jenkins image with all the necessary plugins and dependencies.
- docker-compose to run the solution.
- Custom folder that holds configuration for the organaztion folder that will listen to this repo changes.
- Jcasc for creating the secret that we use to fetch Github repo. 
- Python script that prints Devops is great.

## Installation
##### Docker Compose
Run the below command with the Access Token that was sent in the email.
```
GITHUB_ACCESS_TOKEN=<Access Token> docker-compose up -d

for example:

GITHUB_ACCESS_TOKEN=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 docker-compose up -d

```



## Usage
Login to Jenkins create PR and see Job run:<br/>
```
1. Login to jenkins using the following address: http://localhost:8080/
2. Go to Aurora Labs- DevOps exam organization folder
3. Click on aurora-labs-devops-exam repository
4. Create PR in Github and watch how it run the job under Pull Requests

```
The other available methods are described in the next section.
