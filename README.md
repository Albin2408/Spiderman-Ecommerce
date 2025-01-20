# Spiderman: The Multiverse Shop

## Project Overview
This project is a PHP and MySQL-based web application for managing a fictional e-commerce store, "Spiderman: The Multiverse Shop." The platform includes client and employee login functionalities, product catalog management, a shopping cart, and order submission.

## Features
- **User Authentication**: Separate login systems for employees and clients.
- **Shopping Cart**: Add, view, and clear cart functionalities.
- **Order Management**: Submit orders and view order history.
- **Employee Tools**: View transactions, client data, and top-selling products.
- **Product Filters**: Filter available products by categories.
- **Database Integration**: All data is stored in a MySQL database.

---

## Installation
1. **Clone the Repository**:
   ```bash
   git clone <repository-url>
   ```

2. **Set Up the Database**:
   - Import the provided SQL dump (`lopeza21_SpiderMan-TheMultiVerseShop.sql`) into your MySQL database.
   - Update database credentials in PHP files as needed.

3. **Start a Local Server**:
   Use a tool like [XAMPP](https://www.apachefriends.org/index.html) to host the project locally.
   - Place the project folder in the `htdocs` directory.

4. **Access the Application**:
   Navigate to `http://localhost/<project-folder>` in your browser.

---

## File Structure
- **AddtoCart.php**: Handles cart operations, including adding and clearing items.
- **ClientRegistration.php**: Provides a registration form for new clients.
- **LoginCheckForm.php**: Processes login requests for clients and employees.
- **SubmitOrder.php**: Handles order submission and stores data in the database.
- **clientProductPage.php**: Displays available products and provides cart functionality.
- **employeeView.php**: Employee dashboard for viewing transactions, clients, and revenue.
- **logout.php**: Logs out the current user.
- **orderHistory.php**: Displays the order history for the logged-in client.

---

## Database Schema
The application uses the following tables:

### `CLIENT`
| Column      | Type        | Description                 |
|-------------|-------------|-----------------------------|
| Client_ID   | INT         | Primary Key                |
| FirstName   | VARCHAR(15) | First name of the client   |
| LastName    | VARCHAR(20) | Last name of the client    |
| password    | VARCHAR(30) | Client password            |
| username    | VARCHAR(20) | Unique username            |
| Sex         | CHAR(1)     | Client's gender            |

### `EMPLOYEE`
| Column      | Type        | Description                 |
|-------------|-------------|-----------------------------|
| Employee_id | INT         | Primary Key                |
| Fname       | VARCHAR(20) | First name of the employee |
| ...         | ...         | Additional fields          |

### `PRODUCT`
| Column         | Type        | Description                 |
|----------------|-------------|-----------------------------|
| Product_ID     | INT         | Primary Key                |
| Product_Stock  | INT         | Stock quantity             |
| Product_Name   | VARCHAR(255)| Name of the product        |
| Category_ID    | INT         | Foreign key to `CATEGORY`  |
| Product_Price  | INT         | Price of the product       |

---

## Usage
1. **Register and Log In**:
   - Clients can register via `ClientRegistration.php`.
   - Use `loginCheck.html` to log in as a client or employee.

2. **Shopping Cart**:
   - Add products from `clientProductPage.php`.
   - View and manage your cart in `AddtoCart.php`.

3. **Order Submission**:
   - Submit your cart as an order in `SubmitOrder.php`.

4. **Employee Tools**:
   - Access transaction details, client information, and sales data in `employeeView.php`.

---

## Security Considerations
- **SQL Injection**: Prepared statements are used to prevent SQL injection.
- **Session Management**: PHP sessions are used to handle user logins and cart data securely.

---

## Future Improvements
- Add user-friendly error handling.
- Enhance UI/UX with modern CSS frameworks.
- Integrate payment gateways.
- Improve session security with token-based authentication.

---

## Credits
Developed as part of a database class project by Albin Lopez.

