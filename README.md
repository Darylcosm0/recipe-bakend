# Rails Recipe App Backend

Welcome to the Rails Recipe App backend! This application serves as the backend API for the React Recipe App frontend. The Rails Recipe App provides endpoints for the frontend to retrieve recipe data, user data, and to submit new recipes.

This app is built using Ruby on Rails as its backend and the Frontend created by React you can view the Repo [here](https://github.com/Darylcosm0/phase4)

## Getting Started
To get started with the Rails Recipe App backend, follow these steps:

- Clone the repository to your local machine.

- Run `bundle install` to install all necessary dependencies.

- Run `rails db:create` to create the PostgreSQL database.

- Run `rails db:migrate` to run database migrations.

- Run `rails db:seed` to seed the database with sample data.

- Run `rails s` to start the Rails server.

- The API can be accessed at `http://localhost:3000.`

# Endpoints
The Rails Recipe App backend provides the following endpoints:

## Recipes
- GET /api/recipes: Returns a list of all recipes in the database.

- GET /api/recipes/:id: Returns the recipe with the specified ID.

- POST /api/recipes: Creates a new recipe in the database.

- PUT /api/recipes/:id: Updates the recipe with the specified ID.

- DELETE /api/recipes/:id: Deletes the recipe with the specified ID.

## Users
- GET /api/users: Returns a list of all users in the database.

- GET /api/users/:id: Returns the user with the specified ID.

- POST /api/users: Creates a new user in the database.

## Contributing
Contributions to the Rails Recipe App backend are welcome! To contribute, follow these steps:

- Fork the repository.

- Create a new branch for your feature or bug fix.

- Make your changes and commit them with descriptive commit messages.

- Push your changes to your forked repository.

- Submit a pull request to the original repository with a description of your changes.

## License
The Rails Recipe App backend is licensed under the MIT License. See the LICENSE file for more information.
