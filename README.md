# factorySimulation
A project focused on building a factory simulation system. It involves creating and managing a database using SQL statements. The database includes tables for storing information about pieces, equipment, operations, workers, and norms. The project enables the execution of SQL queries to retrieve specific data from the database. The queries allow for tasks such as calculating average execution time for a particular piece, obtaining worker information along with associated norms, and identifying the piece with the highest number of distinct associated equipment. Overall, the project aims to simulate a factory environment and facilitate data analysis related to various aspects of the factory operations.

<p align="center">
  <br>
  <img src="https://i.pinimg.com/originals/90/c2/bd/90c2bd3350b9804f8e12b5a35b304e58.gif" alt="pic" width="500">
  <br>
</p>
<p align="center" >
  <a href="#Files">Files</a> •
  <a href="#Features">Features</a> •
  <a href="#how-to-use">How To Use</a> 
</p>

## Files

- src: the file that implements de solution.

## Features
The main features of the application include:
- Creation of tables: The project includes SQL statements to create tables for storing information related to pieces, equipment, operations, workers, and norms.
- Data relationships: The tables establish foreign key relationships to maintain data integrity and ensure proper associations between entities.
- Query 1: Calculates the average execution time for a specific type of piece based on related norms and operations.
- Query 2: Retrieves worker information along with the quantity of norms associated with each worker.
- Query 3: Retrieves the piece name with the highest number of distinct equipment used in operations.
- Efficient data storage: The project enables effective data storage by organizing information into structured tables.
- Data retrieval: Users can extract specific information from the tables by executing SQL queries.
- Data analysis: The project facilitates analysis and decision-making based on the collected data.
- Modular structure: The project is divided into separate files for table creation and querying, promoting code organization and reusability.

## How To Use
To clone and run this application, you'll need [Git](https://git-scm.com) and a database management system like [Postgresql](https://www.postgresql.org/) installed on your computer. From your command line:

...
```bash
# Clone this repository
$ git clone https://github.com/bl33h/factorySimulation

# From your database management system
$ CREATE DATABASE factory

# Execute the factorySimulationTablesCreation.sql file it in your database management system
$ cd src/factorySimulationTablesCreation.sql

# Open the factorySimulationQueries.sql file in your SQL editor
$ cd src/factorySimulationQueries.sql
