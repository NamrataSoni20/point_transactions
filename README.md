# README

Creating a README file for your Rails API project helps provide documentation and instructions for developers who will work on or use your API. Below is a template and content you can use for your README file:

---

# Points Transactions API

Points Transactions API is a Rails API application designed to process point transactions from external API vendors. It supports bulk creation and single record creation of transactions and includes PostgreSQL as the database backend.

## Features

- **API-only Rails Application**: Built using Rails API mode without unnecessary middleware.
- **PostgreSQL Database**: Utilizes PostgreSQL for storing user information and transactions.
- **Bulk Creation API**: Endpoint for bulk creation of point transactions.
- **Single Record Creation API**: Endpoint for creating a single point transaction.
- **RSpec Tests**: Includes comprehensive tests using RSpec for controllers and services.

## Requirements

- Ruby = ruby-3.0.0
- Rails >= 7.1.3
- PostgreSQL

## Installation

1. **Clone the repository:**
   
   ```bash
   git clone <repository-url>
   cd points_transactions
   ```

3. **Install dependencies:**

```bash

   bundle install
```

5. **Set up the database:**

   Modify `config/database.yml` with your PostgreSQL configuration, then run:
```bash
   rails db:create
   rails db:migrate
```

6. Change the "mocked-api" URL in app/services/transaction_service.rb

     Replace/Update the **SINGLE_TRANS_BASE_URL** and **BULK_TRANS_BASE_URL** with original URLs.

7. **Run the server:**
```bash

   rails server
```

   Your API will be available at `http://localhost:3000`.

## API Endpoints

### Bulk Creation

- **POST `/api/v1/transactions/bulk`**

  Endpoint to create multiple transactions in bulk.

  **Request Body:**
  ```json
  {
    "transactions": [
                {
                    "transaction_id": "12",
                    "points": "100",
                    "user_id": "12"
                },
                {
                    "transaction_id": "12",
                    "points": "100",
                    "user_id": "12"
                }
            ]        
  }
  ```

### Single Record Creation

- **POST `/api/v1/transactions/single`**

  Endpoint to create a single transaction.

  **Request Body:**
  ```json
    {
        "transaction_id": "12",
        "points": "100",
        "user_id": "12"
    }
  ```

## Running Tests

To run RSpec tests:
```bash
rspec
```

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/new-feature`)
3. Commit your changes (`git commit -am 'Add new feature'`)
4. Push to the branch (`git push origin feature/new-feature`)
5. Create a new Pull Request

## License

This project is licensed under the [MIT License](LICENSE).

---

Adjust the `<repository-url>` placeholder with the actual URL of your repository. Customize the API endpoints and request bodies according to your application's specific requirements. This README provides essential information for developers to set up, use, and contribute to your Points Transactions API project.




