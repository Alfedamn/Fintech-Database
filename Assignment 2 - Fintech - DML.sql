-- Populate merchants_t
-- Edited on March 27, 2023
-- By Alfred Wang
delete from merchants_t;
insert into merchants_t (merchant_guid, created_at, business_name) values
('c6aaf9c9-9e62-4c4d-8e77-6bea99eb17b4', '2022-12-31 23:59:59', 'Acme Inc.'),
('66a2b17a-8c5e-4a22-b35f-9b06df3f4c75', '2023-01-01 00:00:01', 'ABC Company'),
('21bcf0c9-5788-4d05-9315-5b1f80e5e8c4', '2023-02-14 12:34:56', 'XYZ Corporation'),
('d81ce6e3-b3db-4d7a-b6c2-6a14f6baa52a', '2023-03-27 09:15:00', '123 Industries'),
('fa85b9bf-8811-455c-8901-994d7790e0b2', '2023-03-27 13:45:30', 'The Best Company'),
('f04e1c91-1026-4db3-b3e6-b30c6ed12760', '2023-03-28 08:30:00', 'New Horizons LLC'),
('8b4d4e51-6744-4539-8b8d-044bfa08623b', '2023-03-29 15:00:00', 'Emerald Enterprises'),
('ae62fcf7-1a0c-49e5-879c-23b95a9f63e5', '2023-03-30 11:11:11', 'Global Solutions'),
('f7a399c3-b3c2-41aa-bf26-43d70ebfbcc5', '2023-04-01 00:00:00', 'Big Business Inc.'),
('30b50e24-8a94-4e29-b117-152d767a2322', '2023-04-02 14:30:00', 'Prime Partners'),
('45848a7f-144d-49c1-a8a1-41291a421b6d', '2023-04-03 09:30:00', 'Innovative Innovations'),
('f928b04c-c2aa-4cf6-9a8a-6c3b774b3c6c', '2023-04-04 18:45:00', 'The Company'),
('f17a48e7-21a1-42f1-8a1b-9961436b9d99', '2023-04-05 11:22:33', 'Awesome Enterprises'),
('2a4b4c7d-9e4d-4a81-8b21-c93e2d10dcdc', '2023-04-06 16:00:00', 'Top Tier Solutions'),
('ca24cda4-035d-4c0d-bad8-86e556f9eef4', '2023-04-07 08:00:00', 'Global Enterprises');

-- Populate applicants_t
-- Edited on March 27, 2023
-- By Alfred Wang
delete from applicants_t;
INSERT INTO applicants_t (applicant_guid, merchant_guid, email, phone_number) VALUES
('32d22c0e-1a51-4b2c-b1d9-9f52e89eb25d', 'c6aaf9c9-9e62-4c4d-8e77-6bea99eb17b4', 'john@example.com', '555-1234'),
('7543b68f-1de5-40f5-b139-5a5e5a5d7c36', '66a2b17a-8c5e-4a22-b35f-9b06df3f4c75', 'jane@example.com', '555-5678'),
('fa83a3f9-2c1f-41b1-85b6-78db8c7cf645', '21bcf0c9-5788-4d05-9315-5b1f80e5e8c4', 'bob@example.com', '555-9012'),
('c41d5671-14f6-45f9-9e03-83f6f28959c7', 'd81ce6e3-b3db-4d7a-b6c2-6a14f6baa52a', 'sara@example.com', '555-3456'),
('d827c5d5-32e1-4986-9f6e-2f29b58c2960', 'fa85b9bf-8811-455c-8901-994d7790e0b2', 'tim@example.com', '555-7890'),
('9d3e2b3d-f7bf-4c6f-b02c-2aa4d3eb6e1f', 'f04e1c91-1026-4db3-b3e6-b30c6ed12760', 'amy@example.com', '555-2345'),
('c2d6af0d-5eb5-4b5c-8325-8f4a4f4fb3aa', '8b4d4e51-6744-4539-8b8d-044bfa08623b', 'chris@example.com', '555-6789'),
('7a28c75f-cc97-41c1-ba07-341dcf841c7a', 'ae62fcf7-1a0c-49e5-879c-23b95a9f63e5', 'lisa@example.com', '555-0123'),
('e2e94b4d-5a78-4c84-83a5-5a5d5d5c5c5f', 'f7a399c3-b3c2-41aa-bf26-43d70ebfbcc5', 'joe@example.com', '555-4321'),
('8c8b635f-266e-41e7-ba08-0aa6e2f6e63f', 'f928b04c-c2aa-4cf6-9a8a-6c3b774b3c6c', 'emily@example.com', '555-8765'),
('b2d9ac19-0d68-44a8-8f23-2ebef76e85e3', 'f17a48e7-21a1-42f1-8a1b-9961436b9d99', 'tyler@example.com', '555-2109'),
('f6c2df6b-8e0c-4f1c-89ea-d7fc1c035b37', '2a4b4c7d-9e4d-4a81-8b21-c93e2d10dcdc', 'maria@example.com', '555-6543'),
('7bf18714-8348-43e1-9d3e-cf10ee740ba1', 'ca24cda4-035d-4c0d-bad8-86e556f9eef4', 'nate@example.com', '555-0987');

-- Populate bank_accounts_t
-- Edited on March 27, 2023
-- By Alfred Wang
delete from bank_accounts_t;
insert into bank_accounts_t (bank_account_guid, applicant_guid, account_number) values
('a36037e2-2d78-4a0e-85d9-9c19e3381284', '32d22c0e-1a51-4b2c-b1d9-9f52e89eb25d', '2345678901'),
('f1e63e44-bfe7-46ec-9a98-d9f0c6b0a5f5', '7543b68f-1de5-40f5-b139-5a5e5a5d7c36', '3456789012'),
('d8b7e688-49ec-41b5-a6df-0e7fb287601c', 'fa83a3f9-2c1f-41b1-85b6-78db8c7cf645', '4567890123'),
('a8b74d17-1211-4de4-9d9e-75876b4c49c3', 'c41d5671-14f6-45f9-9e03-83f6f28959c7', '5678901234'),
('c62fa7b2-d674-4cd9-a703-8c8f0bc93e39', 'd827c5d5-32e1-4986-9f6e-2f29b58c2960', '6789012345'),
('2e7fca3c-14c7-4ba1-ba28-cbfb52a6a153', '9d3e2b3d-f7bf-4c6f-b02c-2aa4d3eb6e1f', '7890123456'),
('43832448-0832-41cc-9242-d7315e9e06a5', 'c2d6af0d-5eb5-4b5c-8325-8f4a4f4fb3aa', '8901234567'),
('6aa2f2df-24e1-4626-963f-c3bb3aa942a9', '7a28c75f-cc97-41c1-ba07-341dcf841c7a', '9012345678'),
('0975c8b5-1d2c-487d-89e5-396be5da9ec5', 'e2e94b4d-5a78-4c84-83a5-5a5d5d5c5c5f', '0123456789'),
('f3ee8833-107f-4160-b35a-7e2bcafe32f9', '8c8b635f-266e-41e7-ba08-0aa6e2f6e63f', '1234567890'),
('7f64e4c4-e215-4ec1-847f-cd74610e8e88', 'b2d9ac19-0d68-44a8-8f23-2ebef76e85e3', '2345678901'),
('aaeae407-8682-46ef-bcb1-0f3178cb29c3', 'f6c2df6b-8e0c-4f1c-89ea-d7fc1c035b37', '3456789012'),
('d131cc2e-c36b-4372-84e2-1f35d8a0c91f', '7bf18714-8348-43e1-9d3e-cf10ee740ba1', '4567890123');

-- Populate offers_t
-- Edited on March 27, 2023
-- By Alfred Wang
delete from offers_t;
INSERT INTO offers_t (offer_guid, bank_account_guid, o_state, term, apr, principal_amount) VALUES
('54d8bc1f-0a68-4b9a-a59d-f8e2607c18b6', 'f1e63e44-bfe7-46ec-9a98-d9f0c6b0a5f5', 'open', 24, 5.99, 10000.00),
('7d956903-1c0a-4d53-9db7-04f71e05e7b3', 'd8b7e688-49ec-41b5-a6df-0e7fb287601c', 'closed', 36, 8.25, 5000.00),
('8f3eb3c3-42e3-4df1-97c1-620f9ac4d4c4', 'a8b74d17-1211-4de4-9d9e-75876b4c49c3', 'open', 12, 4.99, 20000.00),
('abd16d34-7d2a-45e3-9de9-59d284dbf763', 'c62fa7b2-d674-4cd9-a703-8c8f0bc93e39', 'open', 60, 9.99, 15000.00),
('e86c3ba9-3c56-4c57-897d-7f1a2a2a2a2f', '2e7fca3c-14c7-4ba1-ba28-cbfb52a6a153', 'closed', 48, 7.50, 25000.00),
('5d5e5d5c-4c84-4c84-a5a5-d5d5c5c5c5f5', '0975c8b5-1d2c-487d-89e5-396be5da9ec5', 'open', 24, 6.50, 5000.00),
('7d799987-f512-f512-19a6-d3146f186f18', 'f3ee8833-107f-4160-b35a-7e2bcafe32f9', 'closed', 36, 9.99, 10000.00),
('c4d4c4d4-c4d4-c4d4-42e3-42e342e342e3', '7f64e4c4-e215-4ec1-847f-cd74610e8e88', 'open', 60, 8.99, 20000.00),
('cd058ecc-76f7-458a-bb1e-47c790994d85', 'aaeae407-8682-46ef-bcb1-0f3178cb29c3', 'open', 48, 6.99, 15000.00),
('28cdd285-4629-4e07-a2e2-168dc05a64b6', 'd131cc2e-c36b-4372-84e2-1f35d8a0c91f', 'closed', 12, 3.99, 10000.00);

-- Populate applications_t
-- Edited on March 27, 2023
-- By Alfred Wang
delete from applications_t;
INSERT INTO applications_t (application_guid, offer_guid, a_state, application_amount) VALUES
('79fb3f1c-998d-4747-8a45-60cf7abedf89', '8f3eb3c3-42e3-4df1-97c1-620f9ac4d4c4', 'pending', 5000.00),
('4d4e4f4a-4b4c-4d4e-4f4a-4b4c4d4e4f4a', 'abd16d34-7d2a-45e3-9de9-59d284dbf763', 'approved', 10000.00),
('e2e3e0e1-e2e3-e0e1-e2e3-e0e1e2e3e0e1', 'e86c3ba9-3c56-4c57-897d-7f1a2a2a2a2f', 'approved', 25000.00),
('d1d0d3d2-d3d2-d1d2-d0d1-d0d1d2d3d0d1', '5d5e5d5c-4c84-4c84-a5a5-d5d5c5c5c5f5', 'approved', 50000.00),
('d285168d-05a6-4b62-9d23-1f94b9053128', '7d799987-f512-f512-19a6-d3146f186f18', 'approved', 100000.00),
('d9c08e7b-8d1f-4292-9be2-2517f31af4cc', 'c4d4c4d4-c4d4-c4d4-42e3-42e342e342e3', 'rejected', 5000.00),
('2c2d2e2f-2a2b-2c2d-2e2f-2a2b2c2d2e2f', 'cd058ecc-76f7-458a-bb1e-47c790994d85', 'approved', 10000.00),
('31a4a86f-32c6-4d88-a4a8-6f32c64d88a4', '28cdd285-4629-4e07-a2e2-168dc05a64b6', 'approved', 15000.00);

-- Populate loans_t
-- Edited on March 27, 2023
-- By Alfred Wang
delete from loans_t;
INSERT INTO loans_t (loan_guid, application_guid, amount, loan_deposited_at) VALUES
('a5f8d164-2a2a-4e55-9c8d-4d4b3fbb0b13', '4d4e4f4a-4b4c-4d4e-4f4a-4b4c4d4e4f4a', 5000.00, '2022-01-15 09:30:00'),
('b2f9c071-8d28-4c68-93b1-9b9fa2dd3042', 'e2e3e0e1-e2e3-e0e1-e2e3-e0e1e2e3e0e1', 8000.00, '2022-02-22 14:45:00'),
('d9b2e796-925d-41e5-89a5-c11603c1e8d6', 'd1d0d3d2-d3d2-d1d2-d0d1-d0d1d2d3d0d1', 12000.00, '2022-03-08 11:15:00'),
('f5e1a285-0e05-4d5e-a41c-55f9fa0f0d47', 'd285168d-05a6-4b62-9d23-1f94b9053128', 2500.00, '2022-04-02 16:20:00'),
('c9a4e187-8d6c-4f2d-8c8b-55e1c392bb75', '2c2d2e2f-2a2b-2c2d-2e2f-2a2b2c2d2e2f', 7000.00, '2022-05-11 10:00:00'),
('e3c8f180-3c02-4b0c-9d3c-37e2e00f7d97', '31a4a86f-32c6-4d88-a4a8-6f32c64d88a4', 10000.00, '2022-06-20 13:45:00');



-- LEFT OUTER JOIN
-- display the approved loan amount that greater than $8000 in the loans_t with it's business name
SELECT merchants_t.business_name, loans_t.amount
FROM loans_t
LEFT JOIN applications_t ON loans_t.application_guid = applications_t.application_guid
LEFT JOIN offers_t ON applications_t.offer_guid = offers_t.offer_guid
LEFT JOIN bank_accounts_t ON offers_t.bank_account_guid = bank_accounts_t.bank_account_guid
LEFT JOIN applicants_t ON bank_accounts_t.applicant_guid = applicants_t.applicant_guid
LEFT JOIN merchants_t ON applicants_t.merchant_guid = merchants_t.merchant_guid
WHERE loans_t.amount > 5000;

-- RIGHT OUTER JOIN
-- display the rejected applications with their busiiness names
SELECT applications_t.a_state, merchants_t.business_name
FROM merchants_t
RIGHT OUTER JOIN applicants_t ON merchants_t.merchant_guid = applicants_t.merchant_guid
RIGHT OUTER JOIN bank_accounts_t ON applicants_t.applicant_guid = bank_accounts_t.applicant_guid
RIGHT OUTER JOIN offers_t ON bank_accounts_t.bank_account_guid = offers_t.bank_account_guid
RIGHT OUTER JOIN applications_t ON offers_t.offer_guid = applications_t.offer_guid
WHERE applications_t.a_state = 'rejected';

-- UNION
-- combine the open and closed offer_state from the offers_t
SELECT o_state as offer_state, bank_account_guid
FROM offers_t
where o_state = 'open'
UNION
SELECT o_state, bank_account_guid
FROM offers_t
where o_state = 'closed'

-- Dynamic View
-- View all the merchants information from all tables where eventually have loan approved.
drop view if exists merchants_loan_approved_dv;
CREATE VIEW merchants_loan_approved_dv AS
SELECT m.merchant_guid, m.created_at, m.business_name, a.email,
       a.phone_number, b.account_number, o.offer_guid, o.o_state,
       o.term, o.apr, o.principal_amount,
       ap.application_guid, ap.a_state, ap.application_amount,
       l.loan_guid, l.amount, l.loan_deposited_at
FROM merchants_t m
JOIN applicants_t a ON m.merchant_guid = a.merchant_guid
JOIN bank_accounts_t b ON a.applicant_guid = b.applicant_guid
JOIN offers_t o ON b.bank_account_guid = o.bank_account_guid
JOIN applications_t ap ON o.offer_guid = ap.offer_guid
JOIN loans_t l ON ap.application_guid = l.application_guid
WHERE ap.a_state = 'approved';

-- Meterial View
-- View all the merchants information have an offer.
drop materialized view if exists merchants_with_offers_v;
CREATE MATERIALIZED VIEW merchants_with_offers_v AS
SELECT DISTINCT m.*, o.offer_guid, o.principal_amount, o.apr, o.term
FROM merchants_t m
JOIN applicants_t a ON m.merchant_guid = a.merchant_guid
JOIN bank_accounts_t b ON a.applicant_guid = b.applicant_guid
JOIN offers_t o ON b.bank_account_guid = o.bank_account_guid;
