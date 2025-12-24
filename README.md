# Vehicle Rental System Database 

## Overview
This project demonstrates a simplified Vehicle Rental System database design and SQL queries. The system manages:

- Users (Admin / Customers)  
- Vehicles (Car / Bike / Truck)  
- Bookings (Vehicle rental records)

The assignment focuses on:

- Designing an ERD with One-to-One, One-to-Many, and Many-to-One relationships  
- Implementing primary keys, foreign keys, and status fields  
- Writing SQL queries using JOIN, EXISTS, WHERE, GROUP BY, and HAVING

---

## ERD
The ERD can be viewed here: https://lucid.app/lucidchart/174c8a22-48f8-40f1-a0c2-ac7f3a4493e3/edit?invitationId=inv_103525b0-d2ea-4964-b63b-73b60b207d3e&page=0_0#

**Relationships:**

- **Users → Bookings**: One-to-Many  
- **Vehicles → Bookings**: One-to-Many  
- Each booking connects **exactly one user** and **exactly one vehicle**  
- Primary Keys, Foreign Keys, and status fields are included in the ERD


## SQL Queries

All queries are included in `queries.sql`. They cover:

1. **JOIN** – Retrieve booking information along with customer name and vehicle name  
2. **NOT EXISTS** – Find vehicles never booked  
3. **WHERE** – Retrieve all available vehicles of a specific type  
4. **GROUP BY & HAVING** – Count total bookings per vehicle and filter for more than 2 bookings  

