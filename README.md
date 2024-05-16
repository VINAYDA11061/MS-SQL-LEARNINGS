# Sql 

##### DBMS(Database Management System)
DBMS applications store data as files.
Data is generally stored in either a hierarchical form or a navigational form. 
There can be, or there might not be “relation” between the files
It may even be stored in a graph form, which can be seen in the network model.
Examples : File system, XML, Windows Registry, etc.

##### RDBMS( Relational Database Management System)
RDBMS applications store data in a tabular form.
Data values will be stored in the form of tables.
There will be “relation” between the tables.
Every value stored in the relational database is accessible. This value can be updated by the system.
Examples : SQL Server, Oracle etc

### MS SQL Server

To Get Line Numbers : Tools - Options - Text Editor - Transact SQL - Line Numbers(Check the box)
 Three options to execute your query : 
	 Execute button at the top of the query window
	 Use F5 (fn+F5)
	 Ctrl + E
 To hide/unhide the results/console window/pane : Ctrl + R
 To Comment a line of code  : Ctrl+K+C
 To uncomment : Ctrl+K+U
 -- 2 types of comments
	-- Single Line : --
	-- Multi Line  : /*.....*/

-- Tables in SQL Server
	-- Table is a container that comprises of multiple fields(columns) that helps us in storing data
	-- Alt + F1 - To view the metadata of the object


### Chodd__Rules
Dr Edgar F. Codd, after his extensive research on the Relational Model of database systems, came up with twelve rules of his own, which according to him, 
a database must obey in order to be regarded as a true relational database



##### Rule 1 : Information Rule - Data (User Data, Metadata) should be stored in a cell of the table
	              User data - Data that we store on our own (Employee, Product, Price)
	              Metadata - Name of the table, CreationDate and Time, ModifiedDate and Time, Columns, Type of data
##### Rule 2 : Guranteed Access Rule - Any data value in the database can be fetched using 3 paramters : 
                TableName, Row Identifier and the Column Name

##### Rule 3 : Systematic Treatment of NULL values -  We can use NULL in 3 cases
        	        Data is missing(D/M)
        	        Data is not applicable(N/A)
        	        Data is not known(N/K)
                  NULL's should be used only in a single scenario all throughout the database to maintain consistency in the data

##### Rule 4 : Active Online Catalog - Every RDBMS should store the Structure description of the whole database in the form of a data(metadata) dictionary

##### Rule 5 : Comprehensive Data Sub Language Rule - All the below operations should be performed using one single language that has a linear syntax
                                                	Store Data
                                                	Manipulate/manage Data
                                                	Retrieve Data

##### Rule 6 : View Updating Rule - 
                          Any data that is visible to us and that we have write permission on, should be updatable

##### Rule 7 : High Level Insert-Update and DELETE rule -
                                        A database must support high level insert, update and delete, more importantly for multiple rows(bulk)

##### Rule 8 : Physical Data Independence -  
                                          Irrespective of the physical location from where the application is accessed from, the underlying data should not change

##### Rule 9 : Logical Data Independence - The RDBMS should provide us the flexibilty to create a virtual logical layer, so that any modifications on the logical layer does not have to cause the application to fail
                                            Employee(Virtual)
                                            
                                            EmployeeBasicDetails
                                            EmployeeDOB
                                            EmployeeSalary
                                            EmployeeLeaves

##### Rule 10 : Integrity Independence - 
                      Any modifications that we do on the integrity constraints for the table, the application should not be forced to changed/modified to support this.

##### Rule 11 : Distribution Independence : 
                      The end user must not be able to see that the data is distributed across multiple locations.

##### Rule 12 : Non-Subversion Rule : 
                      You cannot grant access to a child object without granting access to the parent. In case you do, the RDBMS should automatically grant access to the parent as well.
