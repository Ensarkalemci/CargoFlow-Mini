# CargoFlow Mini

## Technologies

- Ruby
- Ruby on Rails
- SQLite
- Postman

## Features

- Create new shipments
- View all shipments
- Update shipment information
- Delete shipments
- Generate tracking numbers automatically
- Find shipments using tracking numbers
- Update shipment status
- Check data with validations

## Shipment Status

There are three shipment statuses:

- `pending` - The shipment is waiting.
- `in_transit` - The shipment is on the way.
- `delivered` - The shipment has been delivered.

## How to Run

First, install the required gems:

```bash
bundle install
```

Set up the database:

```bash
bin/rails db:prepare
bin/rails db:seed
```

Start the server:

```bash
bin/rails server
```

The server runs at `http://localhost:3000`.

## API Endpoints

| Method | Endpoint | Description |
|---|---|---|
| GET | /api/shipments | View all shipments |
| GET | /api/shipments/:id | View one shipment |
| POST | /api/shipments | Create a shipment |
| PATCH | /api/shipments/:id | Update a shipment |
| DELETE | /api/shipments/:id | Delete a shipment |
| GET | /api/track/:tracking_number | Track a shipment |
| GET | /api/service_types | View service types |
| GET | /api/transport_modes | View transport modes |

## Example Request

Create a shipment:

`POST /api/shipments`

```json
{
  "name": "Laptop",
  "weight": 5,
  "volume": 2,
  "origin": "Istanbul",
  "destination": "Ankara",
  "status": "pending",
  "service_type_id": 1
}
```

The system creates a tracking number for the new shipment.

## Note

This is a learning project. User login and authorization are not added yet.