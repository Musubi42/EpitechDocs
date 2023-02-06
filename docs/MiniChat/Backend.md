---
sidebar_position: 2
---

# Backend

We use a classic Express architecture for our backend

Reference-style: 
![alt text][logo]

## .env

For the environment variables you have .env.example with all the keys, but for the value you have to ask on GitHub

Reference-style: 
![alt text][logo]


## databse schema

Every user store their private message on their document
Reference-style: 
![alt text][logo]


All the message of a private channel is stored on his document 
Reference-style: 
![alt text][logo]


## Connect to the mongoDB cluster

Download compass
[Link to compass](https://www.mongodb.com/try/download/compass)

To get the URL of the cluster contact us on GitHub

## Auth

At the register before the register controller is triggered, we use a middleware *getRandomAvatar*, so we can add a avatar picture for the user.

Reference-style: 
![alt text][logo]


