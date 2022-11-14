---
sidebar_position: 2
---

# Stacks

## Front

We've decided to use Vanilla, almost vanilla because we use JQuerry, to develop faster.


## Back

### API

For the API we have a base Spring project, with Maven for building.
Our widgets use this Spring API to fetch data.
A complete list of all externals APIs we've used can be found [here](https://docs.dashless.musubi.dev/docs/How_to-Dev/ressources)

## Authentification

### Firebase auth

All triggers functions are avaible at this path `useless_dashboard/api/gcp`, there are written in Java.
![Firebase auth](https://miro.medium.com/max/1200/0*yEoRjmyk4dOuidmF)

To authentified an user we get credentials from him. These credentials can be email/password, or an OAuth Token from third provider (Google, Facebook, ...). We then pass those credentials to Firebase, which take care to verify those credentials. <br/> <br/>
We then execute a GCP function `createUserReference` : <br/> <br/>
![onAuthStateChanged Observer](/Register/FunctionCreateUser.png)

This function will store in `Realtime Database` this following information :<br/> <br/>
![onAuthStateChanged Observer](/Register/store.png)

<br/>
Once the user is registered firebase returns us a response to the front.<br/> <br/>

On the front side we use the observer `onAuthStateChanged`, to have an image in real time of the user. <br/>
![onAuthStateChanged Observer](/Dashboard/isConnected.png)

So when a user signin or signup we can redirect him to the corresponding page, according to the different steps in needs to fullfil to connect to the useless dashboard.
A complete step by step of the authentification can be found [here](https://docs.dashless.musubi.dev/docs/User-guide/Register)
