# Grain Menu Project

## **Overview**
This repository contains a Ruby on Rails application developed as part of a technical interview. The application implements a GraphQL API for managing menus, sections, items, modifier groups, and modfiers.

The primary goal is to demonstrate the ability to:
- Set up a Rails project from scratch.
- Create a fully functional GraphQL API.
- Setup a database with the correct entities and relationships according to the provided ERD.
- Deploy the application live so that the endpoint can be evaluated.

---

## **Features**
- GraphQL API with the following functionalities:
  - Fetch all menus, sections, items, modifier groups, and modifiers.
  - Can be accessed via `POST localhost:3000/graphql`

---

## **Getting Started**
### Prerequisites 
- Install Ruby `3.3,6`
- Install Rails `8.0.1`
- Install and configure PostgreSQL `15+`
- Docker (for creating docker image to be pushed to ECR) 
- AWS CLI (for docker image deployment)

### How to setup the project locally.
- Clone the repository
- Configure database settings in `database.yml`
- run `rails s`
