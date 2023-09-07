-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [CAMPAIGN] (
    [cf_id] INT  NOT NULL ,
    [contact_id] INT  NOT NULL ,
    [company_id] VARCAHR(100)  NOT NULL ,
    [description] TEXT  NOT NULL ,
    [goal] NUMERIC(10,2)  NOT NULL ,
    [pledged] NUMERIC(10,2)  NOT NULL ,
    [outcome] VARCAHR(50)  NOT NULL ,
    [backers_count] INT  NOT NULL ,
    [country] VARCAHR(10)  NOT NULL ,
    [currency] VARCAHR(10)  NOT NULL ,
    [launch_date] DATE  NOT NULL ,
    [end_date] DATE  NOT NULL ,
    [category_id] VARCAHR(10)  NOT NULL ,
    [subcategory_id] VARCAHR(10)  NOT NULL ,
    CONSTRAINT [PK_CAMPAIGN] PRIMARY KEY CLUSTERED (
        [cf_id] ASC
    )
)

CREATE TABLE [CATEGORY] (
    [category_id] VARCAHR(10)  NOT NULL ,
    [category_name] VARCAHR(50)  NOT NULL ,
    CONSTRAINT [PK_CATEGORY] PRIMARY KEY CLUSTERED (
        [category_id] ASC
    )
)

CREATE TABLE [SUBCATEGORY] (
    [subcategory_id] VARCAHR(10)  NOT NULL ,
    [subcategory_name] VARCAHR(50)  NOT NULL ,
    CONSTRAINT [PK_SUBCATEGORY] PRIMARY KEY CLUSTERED (
        [subcategory_id] ASC
    )
)

CREATE TABLE [Contacts] (
    [contact_id] INT  NOT NULL ,
    [first_name] VARCHAR(50)  NOT NULL ,
    [last_name] VARCHAR(50)  NOT NULL ,
    [email] VARCHAR(100)  NOT NULL ,
    CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED (
        [contact_id] ASC
    )
)

ALTER TABLE [CAMPAIGN] WITH CHECK ADD CONSTRAINT [FK_CAMPAIGN_contact_id] FOREIGN KEY([contact_id])
REFERENCES [Contacts] ([contact_id])

ALTER TABLE [CAMPAIGN] CHECK CONSTRAINT [FK_CAMPAIGN_contact_id]

ALTER TABLE [CAMPAIGN] WITH CHECK ADD CONSTRAINT [FK_CAMPAIGN_category_id] FOREIGN KEY([category_id])
REFERENCES [CATEGORY] ([category_id])

ALTER TABLE [CAMPAIGN] CHECK CONSTRAINT [FK_CAMPAIGN_category_id]

ALTER TABLE [CAMPAIGN] WITH CHECK ADD CONSTRAINT [FK_CAMPAIGN_subcategory_id] FOREIGN KEY([subcategory_id])
REFERENCES [SUBCATEGORY] ([subcategory_id])

ALTER TABLE [CAMPAIGN] CHECK CONSTRAINT [FK_CAMPAIGN_subcategory_id]

COMMIT TRANSACTION QUICKDBD