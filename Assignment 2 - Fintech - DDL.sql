-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- pgModeler  version: 0.9.1
-- PostgreSQL version: 9.5
-- Project Site: pgmodeler.io
-- Model Author: ---

-- Database creation must be done outside a multicommand file.
-- These commands were put in this file only as a convenience.
-- -- object: "Assignment02-Fintech" | type: DATABASE --
-- -- DROP DATABASE IF EXISTS "Assignment02-Fintech";
-- CREATE DATABASE "Assignment02-Fintech";
-- -- ddl-end --

-- object: public.merchants_t | type: TABLE --
DROP TABLE IF EXISTS public.merchants_t CASCADE;
CREATE TABLE public.merchants_t(
	merchant_guid uuid NOT NULL,
	created_at timestamp NOT NULL,
	business_name varchar(255) NOT NULL,
	CONSTRAINT merchant_guid_pk PRIMARY KEY (merchant_guid)
);

-- ddl-end --

-- object: public.applicants_t | type: TABLE --
DROP TABLE IF EXISTS public.applicants_t CASCADE;
CREATE TABLE public.applicants_t(
	applicant_guid uuid NOT NULL,
	merchant_guid uuid NOT NULL,
	email varchar(255) NOT NULL,
	phone_number varchar(20) NOT NULL,
	CONSTRAINT applicant_guid_pk PRIMARY KEY (applicant_guid)
);
-- ddl-end --

-- object: public.bank_accounts_t | type: TABLE --
DROP TABLE IF EXISTS public.bank_accounts_t CASCADE;
CREATE TABLE public.bank_accounts_t(
	bank_account_guid uuid NOT NULL,
	applicant_guid uuid NOT NULL,
	account_number varchar(50) NOT NULL,
	CONSTRAINT bank_account_guid_pk PRIMARY KEY (bank_account_guid)
);
-- ddl-end --

-- object: public.offers_t | type: TABLE --
DROP TABLE IF EXISTS public.offers_t CASCADE;
CREATE TABLE public.offers_t(
	offer_guid uuid NOT NULL,
	bank_account_guid uuid NOT NULL,
	o_state varchar(20) NOT NULL,
	term smallint NOT NULL,
	apr decimal(9,6) NOT NULL,
	principal_amount decimal(12,2) NOT NULL,
	CONSTRAINT offer_guid_pk PRIMARY KEY (offer_guid)
);
-- ddl-end --

-- object: public.applications_t | type: TABLE --
DROP TABLE IF EXISTS public.applications_t CASCADE;
CREATE TABLE public.applications_t(
	application_guid uuid NOT NULL,
	offer_guid uuid NOT NULL,
	a_state varchar(50) NOT NULL,
	application_amount decimal(12,2) NOT NULL,
	CONSTRAINT application_guid_pk PRIMARY KEY (application_guid)
);
-- ddl-end --

-- object: public.loans_t | type: TABLE --
DROP TABLE IF EXISTS public.loans_t CASCADE;
CREATE TABLE public.loans_t(
	loan_guid uuid NOT NULL,
	application_guid uuid NOT NULL,
	amount decimal(12,2) NOT NULL,
	loan_deposited_at timestamp NOT NULL,
	CONSTRAINT loan_guid_pk PRIMARY KEY (loan_guid)
);
-- ddl-end --

-- object: merchant_guid_fk | type: CONSTRAINT --
ALTER TABLE public.applicants_t DROP CONSTRAINT IF EXISTS merchant_guid_fk CASCADE;
ALTER TABLE public.applicants_t ADD CONSTRAINT merchant_guid_fk FOREIGN KEY (merchant_guid)
REFERENCES public.merchants_t (merchant_guid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE;
-- ddl-end --

-- object: applicant_guid_fk | type: CONSTRAINT --
ALTER TABLE public.bank_accounts_t DROP CONSTRAINT IF EXISTS applicant_guid_fk CASCADE;
ALTER TABLE public.bank_accounts_t ADD CONSTRAINT applicant_guid_fk FOREIGN KEY (applicant_guid)
REFERENCES public.applicants_t (applicant_guid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE;
-- ddl-end --

-- object: bank_account_fk | type: CONSTRAINT --
ALTER TABLE public.offers_t DROP CONSTRAINT IF EXISTS bank_account_fk CASCADE;
ALTER TABLE public.offers_t ADD CONSTRAINT bank_account_fk FOREIGN KEY (bank_account_guid)
REFERENCES public.bank_accounts_t (bank_account_guid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE;
-- ddl-end --

-- object: offer_guid_fk | type: CONSTRAINT --
ALTER TABLE public.applications_t DROP CONSTRAINT IF EXISTS offer_guid_fk CASCADE;
ALTER TABLE public.applications_t ADD CONSTRAINT offer_guid_fk FOREIGN KEY (offer_guid)
REFERENCES public.offers_t (offer_guid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE;
-- ddl-end --

-- object: application_guid | type: CONSTRAINT --
ALTER TABLE public.loans_t DROP CONSTRAINT IF EXISTS application_guid CASCADE;
ALTER TABLE public.loans_t ADD CONSTRAINT application_guid FOREIGN KEY (application_guid)
REFERENCES public.applications_t (application_guid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE;
-- ddl-end --

-- adding Metadata comments
-- applicants_t
comment on column applicants_t.applicant_guid is 'GUID for each applicant';
comment on column applicants_t.merchant_guid is 'GUID for each merchant';
comment on column applicants_t.email is 'Email address';
comment on column applicants_t.phone_number is 'phone number';

-- applications_t
comment on column applications_t.application_guid is 'GUID for each application';
comment on column applications_t.offer_guid is 'GUID for each offer';
comment on column applications_t.a_state is '"pending", "approved", "rejected"';
comment on column applications_t.application_amount is 'how much loan applied for';

-- bank_accounts_t
comment on column bank_accounts_t.bank_account_guid is 'GUID for each bank account';
comment on column bank_accounts_t.applicant_guid is 'GUID for each applicant';
comment on column bank_accounts_t.account_number is 'account number';

-- loans_t
comment on column loans_t.loan_guid is 'GUID for each loan';
comment on column loans_t.application_guid is 'GUID for each application';
comment on column loans_t.amount is 'approved loan amount';
comment on column loans_t.loan_deposited_at is 'the time loan deposited';

-- merchants_t
comment on column merchants_t.merchant_guid is 'GUID for each business';
comment on column merchants_t.created_at is 'the time account created';
comment on column merchants_t.business_name is 'name of the business';

-- offers_t
comment on column offers_t.offer_guid is 'GUID for each offer';
comment on column offers_t.bank_account_guid is 'GUID for each bank account';
comment on column offers_t.o_state is '"open", "closed"';
comment on column offers_t.term is 'loan term length';
comment on column offers_t.apr is 'rate of the interest';
comment on column offers_t.principal_amount is 'principal amount';

-- metadata
SELECT column_name, data_type, character_maximum_length as length
FROM INFORMATION_SCHEMA.COLUMNS
WHERE
TABLE_NAME = 'applicants_t' or
TABLE_NAME = 'applications_t' or
TABLE_NAME = 'bank_accounts_t' or
TABLE_NAME = 'loans_t' or
TABLE_NAME = 'merchants_t' or
TABLE_NAME = 'offerss_t';