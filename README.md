# DOCKERBASE

Hello and welcome to the DOCKERBASE! 🤙
This is a base app with Ruby on Rails and Bootstrap 5 within Docker.
Just clone it and don't worry about the first step configuration.

### Versions
- **Ruby**: 3.0.0
- **Ruby on Rails**: 6.1.1
- **Bootstrap**: 5.0.0-beta1

### Setup

**1.** Install the Docker (if you don't have it). [Here's the Docker webpage](https://www.docker.com/products/docker-desktop).

**2.** Clone it in your machine:
```bash
git clone https:
```

**3.** Jump in the folder you just cloned:
```bash
cd dockerbase
```

**4.** Build & Up the docker:
```bash
docker-compose up --build
```

**5.** Connecting to the container (open a new Terminal tab):
```bash
docker exec -it dockerbase_app /bin/bash
```

### ⛔️ Style not working properly
If your style is not working properly it might mean that we didn't install the Bootstrap 5 correctly.
You'll need to connect your container:
```bash
```

Then you'll need to run these installations below:
```bash
yarn add bootstrap@next
yarn add popper.js
yarn add @popperjs/core
```

### ⚠️ Change the name
By default the app name is `dockerbase`. Do change it to your app's name.

To do so just take a full search in this repo for `dockerbase`.