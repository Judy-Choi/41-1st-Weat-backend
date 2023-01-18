# 🥩 Weat (Back-End)
### Back-End Team Members

[👑 MJ Choi (Judy) (Project Manager)](https://github.com/Judy-Choi), [SW Park](https://github.com/Jetkick)

<br>

## 💻 Tech Stack

Back-End : 
<img src="https://img.shields.io/badge/Node.js-339933?style=flat&amp;logo=Node.js&amp;logoColor=white">
<img src="https://img.shields.io/badge/Nodemon-76D04B?style=flat&amp;logo=Nodemon&amp;logoColor=white">
<img src="https://img.shields.io/badge/Express-000000?style=flat&amp;logo=Express&amp;logoColor=white">
<img src="https://img.shields.io/badge/MySQL-4479A1?style=flat&amp;logo=MySQL&amp;logoColor=white">
<img src="https://img.shields.io/badge/JWT-CC6699?style=flat&amp;logo=JSON&amp;logoColor=white">
<img src="https://img.shields.io/badge/Dbmate-009DC7?style=flat&amp;logo=Bcrypt&amp;logoColor=white">
<img src="https://img.shields.io/badge/Bcrypt-CA424?style=flat&amp;logo=Bcrypt&amp;logoColor=white">

Common : 
<img src="https://img.shields.io/badge/Git-F05032?style=flat&amp;logo=Git&amp;logoColor=white">
<img src="https://img.shields.io/badge/GitHub-181717?style=flat&amp;logo=GitHub&amp;logoColor=white">
<img src="https://img.shields.io/badge/Prettier-F7B93E?style=flat&amp;logo=prettier&amp;logoColor=white">
<img src="https://img.shields.io/badge/RestfulAPI-F7533E?style=flat&amp;logo=RestfulAPII&amp;logoColor=white">
<img src="https://img.shields.io/badge/VSCode-007ACC?style=flat&amp;logo=Visual Studio Code&amp;logoColor=white">
<img src="https://img.shields.io/badge/Postman-FF6C37?style=flat&amp;logo=Postman Code&amp;logoColor=white">

<br>

## 🛠️ Dev Details
### 🗄️ DataBase
- DB design and implementation using ERD
- Data management with MySQL WorkBench

### 👨‍👩‍👧‍👦 Users
#### Sign Up
- Encrypt user's password using Bcrypt and save it to DB
  - Manage user's account information more securely
- Use regular expressions to check quickly if user's password follows password generation rules

#### Login
- When login is successful, the server uses secret key to generate JWT
- After login, use JWT instead of password for user authentication/authorization (to improve security)

### 🍖 Products
#### Main page
- Top 6 product data are extracted from DB (Sorted in descending order by sales volume)
- Increase code reusability
  - To minimize the repeated use of similar SQL queries on the Main and Category pages, duplicate queries are declared with the defaultQuery string only once and then more queries are added.

#### Category page
- Efficient request from FE by using query parameters
- In order to support Page Nation of FE, only 6 data (per page) are extracted from DB and provided to FE.
  - It also reduces traffic overload and execution time (prevent delivering too much data at once)

#### Detail page
- Provide the details of a particular product
- (BE only) Developed product review API

### 🛒 Carts
Authorization and authentication using JWT
- Verify logged-in user's JWT before all APIs are performed.

#### Add product to shopping cart / change quantity
- Implementing INSERT and UPDATE simultaneously within one API and one query using 'UPSERT'

#### Lookup Shopping cart / delete product in the cart
- Combine 'INNER JOIN' to get all information of the shopping cart with just one JWT (minimize information exposure and enhance security)

### 💳 Orders
Authorization and authentication using JWT
- Verify logged-in user's JWT before all APIs are performed.

#### Order/Payment
- Use 'transaction' to ensure that CRUD of data in DB when it not partially executed or interrupted
#### Order List Lookup
- INNER JOIN queries are combined to allow users to view all order lists with only one order information (order ID) (minimize information exposure)
<br>

## 📑 API Documentation
[Postman Link](https://documenter.getpostman.com/view/24998473/2s8Z76x9km)

<br>

## 🤔 Future Works

<details>
    <summary>Read more</summary>
    
### JWT is too weak...
- Security risk can occur
  - 💡 We can use MFA / Refresh token

### Our DB are in each member's local...
- Could not share same DB & Could not test our module in the same environment
  - 💡 Let's try AWS RDS or S3 next time!

### Inefficient FE-BE connection test
- Can run only one server at the same time
- We had to wait until our supervisor feedbacks to the pull request and merges to the main branch
- There are many sub branches. So when we had some module test, we had to checkout sub branches often
  - 💡 Change port number
  - 💡 Make test branch & merge all sub branches to the test branch

### Create API using MySQL queries only  
- I heard that developers don't develop using only MySQL queries...!? 👩‍💻
- 💡 MyBatis
  - A framework to help with DB integration in Java (Spring)
  - SQL Mapper framework most commonly used to develop query-based web applications
  - We can use MyBatis with MySQL queries (there are many easy methods that MySQL does not have)
  - Development with MyBatis is easier than using only MySQL
- 💡 Query Builder
  - One of the most powerful function of TypeORM
  - It is easier to handle DB and more readable and efficient

### Prevent bugs 🐞
- When I tested my code, there were too many bugs
- 💡 In the development stage, test my code using Jest

### Spaghetti code 🍝
- My back-end co-worker couldn't easily understand my code (Sometimes... me too 😂)
- 💡 Refactoring!
  - ex) Separate code into classes (modular)
  - ex) Change the method (API) name to make it more legible.
</details>
