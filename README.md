# Trips API with Gemini AI Integration

## Overview

This Rails API allows users to manage a database of their trips, including creating, editing, and deleting trips. Users can also manage places within these trips, such as adding, updating, or removing things to do. Additionally, the API integrates with Google's Gemini AI, providing suggestions to help plan trips more effectively.

## Features

- **Manage Trips**: Create, edit, and delete trips.
- **Manage Places**: Add, update, and delete places within trips.
- **AI-Powered Suggestions**: Use Gemini AI to get suggestions for trip planning.

## Requirements

- Ruby 3.0.0 or higher
- Rails 6.1.4 or higher
- PostgreSQL 12.0 or higher
- A Google API key with Gemini AI access

## Installation

Follow these steps to get your API running locally:

1. **Clone the Repository**

 ```
git clone https://github.com/yourusername/trips-api.git 
 cd trips-api
```
2. **Bundle Install**
Install the necessary Ruby gems.
```
bundle install
```
3. **Database Setup**
Make sure PostgreSQL is running and create your database:
```
rails db:create
rails db:migrate
```
4. **Environment Variables**
Set up the required environment variables in your .env file:
```
GOOGLE_API_KEY=your_google_api_key_here
```
5. **Start the Server**
Run the Rails server:
```
rails s
```

## Usage

### Endpoints

#### Trips

- **GET `/trips`**: Fetch all trips.
- **POST `/trips`**: Create a new trip.
- Parameters: `name`, `start_date`, `end_date`
- **PUT `/trips/:id`**: Update an existing trip.
- **DELETE `/trips/:id`**: Delete a trip.

#### Places

- **GET `/trips/:trip_id/places`**: Fetch all places for a trip.
- **POST `/trips/:trip_id/places`**: Add a new place to a trip.
- Parameters: `name`, `description`
- **PUT `/trips/:trip_id/places/:id`**: Update a place within a trip.
- **DELETE `/trips/:trip_id/places/:id`**: Remove a place from a trip.

### Using Gemini AI

To get suggestions for your trip, use the following endpoint:

- **POST `/trips/:trip_id/suggestions`**
- This endpoint will interact with the Gemini AI API to fetch suggestions based on the existing details of the trip.

## Testing
Here is a breakdown of the test coverage:

### Models Tested

- **Trip Model**: Tests cover all CRUD actions (Create, Read, Update, Delete).
- **Places Model**: Tests ensure that CRUD operations are functioning correctly for places within trips.
- **User Model**: Tests ensure user create action works correctly.

To run the tests, execute:
```
rails t
```

