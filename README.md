# Design

This document outlines the design of this application including decisions that were made and why.

![RoR Badge](https://img.shields.io/badge/-Ruby_On_Rails-b32424?style=flat&labelColor=cc0000&logo=ruby-on-rails&logoColor=white)
![PostgreSQL Badge](https://img.shields.io/badge/-PostgreSQL-426078?style=flat&labelColor=336791&logo=postgresql&logoColor=white)

## Requirements

From the original requirements specification,

> **Project Requirements**:
>
> 1. How you would generate a unique ID for each URL.
> 2. How you would generate unique IDs at scale (8K+ requests per second).
> 3. How your service would handle redirects.
> 4. How you would support custom short URLs.
> 5. How you would track click stats.
> 6. Draw flowcharts diagrams and architecture diagram for this service.
>
## Getting Started

### Installing

A step by step series of examples that tell you how to get a development env running.

- Clone Repository

```bash

# run the following command to clone to your machine:

git clone https://github.com/Dev-Alchemist/Url-Shortener.git
```

- Install Dependencies

```bash
# To install Gems
bundle

# To install webpacker and npm dependencies
bundle exec rails webpacker:install
```

- Setup Postgres Database

```bash
default: &default
  adapter: postgresql
  encoding: unicode
  username: postgresName
  password: databaseName
  host: localhost
```

- Run Server

```bash
# Start your Rails server
rails server

# In a separate tab
bin/webpack-dev-server
```
- Navigate *http://127.0.0.1:3000/*


## Usage

### 1. Create New Shortened Url

Example:

- Visit Root Route

```bash
http://localhost:3000/
```
- Enter a valid Standard Url
- Click on `Create Url` button


### 2. Copy short Url
- After successfully creating a new short url you're redirected to the show route

```bash
http://localhost:3000/urls/:id
```
- Click on the `copy` button to copy the short url or click on the `open` button to open the url in a new browser tab

### 3. Redirect To Long Url

- To visit the original url, paste the copied short url into the browser and you will be redirected to the original url.

### 4. View Short Url Analytics (Error Encountered)

- To see the analytics of a particular short url go to the route:

```bash
http://localhost:3000/:shortcode/stat
```

# Todo

- Implement a User authentication system, to allow only authenticated Users to create shortened Url with jwt for deletion of expired urls.

# Additional Information

I took this project with minimal knowledge on Ruby on Rails and gained a ton of information. I'm yet to perfect testing with Rspec(BDD) approach and on the framework itself. Also the redirection works by using the original url `allow_other_host: true` in our controller otherwise we receive an error. My assumption is that for the service to work we require a hosted service to attach the dynamic generated urls such as `bit` service.

