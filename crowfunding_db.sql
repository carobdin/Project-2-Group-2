CREATE TABLE campaign(
	cf_df INT PRIMARY KEY NOT NULL,
	contact_id INT NOT NULL,
	company_id VARCHAR(100) NOT NULL,
	description TEXT NOT NULL,
	goal NUMERIC(10,2) NOT NULL,
	pledged NUMERIC(10,2) NOT NULL,
	outcome VARCHAR(50) NOT NULL,
	backers_count INT,
	country VARCHAR(10) NOT NULL,
	currency VARCHAR(10) NOT NULL,
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(10) NOT NULL,
	subcategory_id VARCHAR(10) NOT NULL
	
);

SELECT * from campaign;

CREATE TABLE contacts(
	contact_id INT PRIMARY KEY NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL
);

SELECT * from contacts; 

CREATE TABLE category(
	category_id VARCHAR(10) PRIMARY KEY NOT NULL,
	category_name VARCHAR(50) NOT NULL
);

SELECT * from category;

CREATE TABLE subcategory(
subcategory_id VARCHAR(10) PRIMARY KEY NOT NULL,
subcategory_name VARCHAR(50) NOT NULL
);

SELECT * from subcategory;

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");