# What is a Tech Stack?

## Overview
A *Tech Stack* is a collection of technologies used to create, deploy, and maintain an application.

This collection of technologies all fall into one of three categories:  
1. Front-end - *user interface*
2. APIs - *Glues the front-end to the back-end. Includes essential 3rd party services, i.e. payment authentication, messaging, email*
3. Back-end - *server-side run-time + database to store info. Usually provided by host-provider (AWS, Google Cloud, Azure Cloud, etc.)*

## Front-End
**Programming Language** - Used to create your app
Where will my customers be consuming the application?
Web --> JavaScript --> Typescript scales better
**UI framework** - supplements JavaScript
React is the most popular
**State Management Software** - Helps scale your app
I.e. Redux
**Writing Code**
tailwindCSS --> Makes CSS easier to use, simplifies HTML
Sass --> CSS pre-processor, similar to TypeScript in that it adds syntax and helps us write code more efficiently
PostCSS --> Purge un-used CSS
**Module Bundler** --> Combines your javascript files into a bundle used by the browser
Webpack

## Back-End
**Primary database**
NoSQL document databases: Flexible, cheap, fast, but not good at defining relationships.
Relational database: MySQL, PostGres, not as flexible, more overhead costs  
Graph database: neo4j 
**Secondary database**
Redis --> Caching layer that stores data on memory instead of disk. Used to speed up primary database
**Server-side Runtime**
What language are you most comfortable with?
Python: Flask, django
Ruby: Rails
PHP: Larvel
Spring: Java
JavaScript: nodeJS (runtime), nestJS (server-side stuff)
**Object Relational Mapper**
Helps write to your database instead of doing it manually, i.e. SQL queries.
**Web Server**
Nginx, Apache

## Docker
Dockerize your app! Employ Kubernetes to orchestrate containers.

## References
[Youtube - How to OVER Engineer a Website // What is a Tech Stack?](https://www.youtube.com/watch?v=Sxxw3qtb3_g&t=448s)


## Tags
#dev
