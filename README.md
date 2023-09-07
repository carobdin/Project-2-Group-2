# Project-2-Group-2

- Group Members

Priyanshi Gajjar & Caroline Bordin Bastos

# Index 

The project are divided into the following subsections:

1. Create the Category and Subcategory DataFrames
2. Create the Campaign DataFrame
3. Create the Contacts DataFrame
4. Create the Crowdfunding Database

# Subsection

1. Create the Category and Subcategory DataFrames

- Extract and transform the crowdfunding.xlsx Excel data to create a category DataFrames. 
- Export the category DataFrame as category.csv and save it to your GitHub repository.
- Extract and transform the crowdfunding.xlsx Excel data to create a subcategory DataFrames.
- Export the subcategory DataFrame as subcategory.csv and save it to your GitHub repository.



2. Create the Campaign DataFrame

- Extract and transform the crowdfunding.xlsx Excel data to create a campaign DataFrame.
- Export the campaign DataFrame as campaign.csv and save it to your GitHub repository.



3. Create the Contacts DataFrame

- By using the " Python dictionary method" for extracting and transforming the data from the contacts.xlsx 
- Complete the following steps:
   - Import the contacts.xlsx file into a DataFrame 
   - Iterate through the DataFrame, converting each row to a dictionary.
   - Iterate through each dictionary, doing the following: 
       - Extract the dictionary values from the keys by using a Python list comprehension.
       - Add the values for each row to a new list.
  - Create a new DataFrame that contains the extracted data.
  - Split each "name" column value into a first and last name, and place each in a new column.
  - Clean and export the DataFrame as contacts.csv and save it to your GitHub repository
- Check that your final DataFrame resembles the one in the given.



4. Create the Crowdfunding Database


- Inspect the four CSV files, and then sketch an ERD of the tables by using QuickDBDLinks to an external site.
- Use the information from the ERD to create a table schema for each CSV file. (Note: Remember to specify the data types, primary keys, foreign keys, and other constraints.)
- Save the database schema as a Postgres file named crowdfunding_db_schema.sql, and save it to your GitHub repository.
- Create a new Postgres database, named crowdfunding_db.
- Using the database schema, create the tables in the correct order to handle the foreign keys.
- Verify the table creation by running a SELECT statement for each table.
- Import each CSV file into its corresponding SQL table.
- Verify that each table has the correct data by running a SELECT statement for each. 
