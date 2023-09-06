-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "CAMPAIGN" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_id" VARCAHR(100)   NOT NULL,
    "description" TEXT   NOT NULL,
    "goal" NUMERIC(10,2)   NOT NULL,
    "pledged" NUMERIC(10,2)   NOT NULL,
    "outcome" VARCAHR(50)   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCAHR(10)   NOT NULL,
    "currency" VARCAHR(10)   NOT NULL,
    "launch_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_id" VARCAHR(10)   NOT NULL,
    "subcategory_id" VARCAHR(10)   NOT NULL,
    CONSTRAINT "pk_CAMPAIGN" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "BACKERS" (
    "backer_id" VARCHAR(10)   NOT NULL,
    "cf_id" INT   NOT NULL,
    "first_name" VARCHAR(50)   NOT NULL,
    "last_name" VARCHAR(50)   NOT NULL,
    "email" VARCHAR(100)   NOT NULL,
    CONSTRAINT "pk_BACKERS" PRIMARY KEY (
        "backer_id"
     )
);

CREATE TABLE "CATEGORY" (
    "category_id" VARCAHR(10)   NOT NULL,
    "category_name" VARCAHR(50)   NOT NULL,
    CONSTRAINT "pk_CATEGORY" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "SUBCATEGORY" (
    "subcategory_id" VARCAHR(10)   NOT NULL,
    "subcategory_name" VARCAHR(50)   NOT NULL,
    CONSTRAINT "pk_SUBCATEGORY" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "Contacts" (
    "contact_id" INT   NOT NULL,
    "first_name" VARCHAR(50)   NOT NULL,
    "last_name" VARCHAR(50)   NOT NULL,
    "email" VARCHAR(100)   NOT NULL
);

ALTER TABLE "CAMPAIGN" ADD CONSTRAINT "fk_CAMPAIGN_cf_id" FOREIGN KEY("cf_id")
REFERENCES "BACKERS" ("backer_id");

ALTER TABLE "CAMPAIGN" ADD CONSTRAINT "fk_CAMPAIGN_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Contacts" ("contact_id");

ALTER TABLE "CAMPAIGN" ADD CONSTRAINT "fk_CAMPAIGN_category_id" FOREIGN KEY("category_id")
REFERENCES "CATEGORY" ("category_id");

ALTER TABLE "CAMPAIGN" ADD CONSTRAINT "fk_CAMPAIGN_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "SUBCATEGORY" ("subcategory_id");

