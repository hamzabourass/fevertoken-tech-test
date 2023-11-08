# fevertokens_Test
Hi, Im Hamza Bouras, This Repository shows the solution I made to the FEVERTOKENS Internship Program Technical Test.

## Table of Contents

1. [Purpose](#purpose)
2. [Setup](#setup)
3. [Building](#building)
4. [Running](#running)
5. [Dependencies](#dependencies)
6. [Task Process](#task-process)

## Purpose

This repository serves as a test project for an internship application. It is divided into three main tasks:

1. **Task 1 - CI/CD with GitHub Actions:** The first task involves demonstrating proficiency in setting up Continuous Integration and Continuous Deployment (CI/CD) pipelines using GitHub Actions. This part of the test showcases my ability to automate the build and deployment process efficiently.

2. **Task 2 - Programming Skills:** The second task assesses my programming skills. I'll be working on programming challenges or projects that demonstrate my coding abilities, code quality, and problem-solving skills.

3. **Task 3 - Problem Solving:** The third task involves solving problems and providing solutions. This is an opportunity to showcase my analytical and creative problem-solving skills.

The completion of these tasks will serve as a comprehensive representation of my capabilities, making this repository a vital part of my internship application.


## Setup

To set up this project, follow these steps:

1. Clone this repository to your local machine: `git clone https://github.com/hamzabourass/fevertokens_Test.git`
2. Navigate to the project folder: `cd fevertokens_Test`

### Bash Script and Docker Compose Setup

3. Make sure you have Docker and Docker Compose installed on your machine. If you don't have them installed, you can download Docker from [Docker's official website](https://www.docker.com/get-started) and Docker Compose from [here](https://docs.docker.com/compose/install/).

4. Run the following command to generate an SSH key: `ssh-keygen -t ed25519 -P "" -f ~/.ssh/id_ed25519`

5. Use the `deployment.sh` script to deploy the application. You can run it with the following command: `./deployment.sh`

6. During the execution of the script, it will prompt you for the IP address, which should look like this: `ip172-18-0-19-cl5s540gftqg00boi520@direct.labs.play-with-docker.com`. You will need to provide this IP and set it as the value for the `PWD_MANAGER` variable within the script when prompted.

7. Ensure that the path specified in the Docker Compose YAML file within the script (`docker-compose.yml`) corresponds to the actual location of the Docker Compose file in your project.

These steps should set up your environment, generate SSH keys, and deploy the application using the provided Bash script and Docker Compose configuration.


## Building

If the project requires a build step, you can build it using the following command:

```bash
npm run build

