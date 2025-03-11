CREATE TABLE [AdventureWorks2022].[sales].[visits](
visits_id INT PRIMARY KEY IDENTITY (1,1), 
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
vistited_at DATETIME,
phone VARCHAR(20) NOT NULL,
store_id INT NOT NULL,
FOREIGN KEY (store_id) REFERENCES sales.storeNew (store_id)
)

CREATE TABLE [AdventureWorks2022].[sales].[storeNew](
store_id INT NOT NULL,
sales INT
)

/*** SET store_id as primary key using the design option****/
