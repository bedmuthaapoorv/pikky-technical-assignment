# pikky-technical-assignment

# Project Name

## Getting Started

### Prerequisites

- Docker installed and running on your system

### Installation and Running

1. Open a terminal
2. Run the following command:
   ```
   docker compose up
   ```
3. Wait until you see the following message in the terminal:
   ```
   api       | App is working at: 3000
   ```
4. At this point, the project is running and ready to use

## API Documentation

Base URL: `http://localhost:3000`

### 1. Get Locations

Endpoint: `/getLocations`

Method: GET

Description: Returns all available locations in the database to find food items with their respective location IDs.

Response structure:
```json
[
    {
        "locationid": "<location-id>",
        "country": "<country-name>",
        "city": "<city-name>"
    },
    ...
]
```

### 2. Food Search

Endpoint: `/foodSearch`

Method: POST

Description: Returns all available food items with their respective nutritional info at the specified location.

Request body:
```json
{
    "locationID": "<location-id>"
}
```

Response structure:
```json
[
    {
        "foodid": "<food-id>",
        "name": "<food-name>",
        "description": "<description>",
        "price": "<price>",
        "stock": "<stock>",
        "serving": "<serving-size>",
        "calories": "<calories>"
    },
    ...
]
```
