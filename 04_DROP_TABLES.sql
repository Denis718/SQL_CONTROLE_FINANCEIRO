USE CONTROLE_FINANCEIRO;

BEGIN TRANSACTION;

	DROP TABLE cards_operations;

	DROP TABLE operations;

	DROP TABLE categories;

	DROP TABLE currencies;

	DROP TABLE operationType;

	DROP TABLE cards;

	DROP TABLE users;

	DROP TABLE plan_features;

	DROP TABLE signatures;

	DROP TABLE features;

	DROP TABLE plans;

	DROP TABLE bankAccounts;

	DROP TABLE customers;

	DROP TABLE banks;

COMMIT TRANSACTION;

