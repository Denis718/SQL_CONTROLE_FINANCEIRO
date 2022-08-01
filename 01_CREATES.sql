USE [Controle.Financeiro];

CREATE TABLE banks (
	bankCode INT PRIMARY KEY,
	name VARCHAR(80) NOT NULL,
	active BIT NOT NULL,
	createdAt DATETIME NOT NULL,
	createdBy VARCHAR(30) NOT NULL,
	updatedAt DATETIME NOT NULL,
	updatedBy VARCHAR(30) NOT NULL
);

CREATE TABLE customers (
	customerId INT PRIMARY KEY IDENTITY (1, 1),
	name VARCHAR(80) NOT NULL,
	type VARCHAR(1) NOT NULL CHECK (type IN('f', 'j')),
	cpfCnpj VARCHAR(14) NOT NULL,
	email VARCHAR(40) NOT NULL,
	active BIT NOT NULL,
	createdAt DATETIME NOT NULL,
	createdBy VARCHAR(30) NOT NULL,
	updatedAt DATETIME NOT NULL,
	updatedBy VARCHAR(30) NOT NULL
);

CREATE TABLE bankAccounts (
	bankAccountId INT PRIMARY KEY IDENTITY (1, 1),
	balance DECIMAL(8,2) NOT NULL,
	bankCode INT FOREIGN KEY REFERENCES banks (bankCode),
	customerId INT FOREIGN KEY REFERENCES customers (customerId),
	active BIT NOT NULL,
	createdAt DATETIME NOT NULL,
	createdBy VARCHAR(30) NOT NULL,
	updatedAt DATETIME NOT NULL,
	updatedBy VARCHAR(30) NOT NULL
);

CREATE TABLE plans (
	planId TINYINT PRIMARY KEY,
	description VARCHAR(30) NOT NULL,
	duration SMALLINT NOT NULL,
	price DECIMAL(8,2),
	startDate DATE NOT NULL,
	endDate DATE,
	active BIT NOT NULL,
	createdAt DATETIME NOT NULL,
	createdBy VARCHAR(30) NOT NULL,
	updatedAt DATETIME NOT NULL,
	updatedBy VARCHAR(30) NOT NULL
);

CREATE TABLE features (
	featureId SMALLINT PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
	active BIT NOT NULL,
	createdAt DATETIME NOT NULL,
	createdBy VARCHAR(30) NOT NULL,
	updatedAt DATETIME NOT NULL,
	updatedBy VARCHAR(30) NOT NULL
);

CREATE TABLE signatures (
	signatureId INT PRIMARY KEY IDENTITY (1, 1),
	startDate DATE NOT NULL,
	expiration DATE NOT NULL,
	planId TINYINT FOREIGN KEY REFERENCES plans (planId),
	customerId INT FOREIGN KEY REFERENCES customers (customerId),
	active BIT NOT NULL,
	createdAt DATETIME NOT NULL,
	createdBy VARCHAR(30) NOT NULL,
	updatedAt DATETIME NOT NULL,
	updatedBy VARCHAR(30) NOT NULL
);

CREATE TABLE plan_features (
	planFeaturesId INT PRIMARY KEY,
	planId TINYINT FOREIGN KEY REFERENCES plans (planId),
	featureId SMALLINT FOREIGN KEY REFERENCES features(featureId),
	active BIT NOT NULL,
	createdAt DATETIME NOT NULL,
	createdBy VARCHAR(30) NOT NULL,
	updatedAt DATETIME NOT NULL,
	updatedBy VARCHAR(30) NOT NULL
);

CREATE TABLE users (
	userId INT PRIMARY KEY IDENTITY (1, 1),
	username VARCHAR(30) NOT NULL, 
	userpassword VARCHAR(32) NOT NULL, --MD5
	email VARCHAR(40) NOT NULL,
	customerId INT UNIQUE FOREIGN KEY REFERENCES customers (customerId),
	active BIT NOT NULL,
	createdAt DATETIME NOT NULL,
	createdBy VARCHAR(30) NOT NULL,
	updatedAt DATETIME NOT NULL,
	updatedBy VARCHAR(30) NOT NULL
);

CREATE TABLE cards (
	cardId INT PRIMARY KEY IDENTITY (1, 1),
	description VARCHAR(20) NOT NULL,
	cardLimit DECIMAL (8, 2) NOT NULL,
	customerId INT FOREIGN KEY REFERENCES customers (customerId),
	active BIT NOT NULL,
	createdAt DATETIME NOT NULL,
	createdBy VARCHAR(30) NOT NULL,
	updatedAt DATETIME NOT NULL,
	updatedBy VARCHAR(30) NOT NULL
);

CREATE TABLE operationType (
	operationTypeId TINYINT PRIMARY KEY,
	description VARCHAR(20) NOT NULL,
	active BIT NOT NULL,
	createdAt DATETIME NOT NULL,
	createdBy VARCHAR(30) NOT NULL,
	updatedAt DATETIME NOT NULL,
	updatedBy VARCHAR(30) NOT NULL
);

CREATE TABLE currencies (
	currencyId SMALLINT PRIMARY KEY,
	name VARCHAR(20) NOT NULL,
	code VARCHAR(3) NOT NULL,
	symbol VARCHAR(5) NOT NULL,
	active BIT NOT NULL,
	createdAt DATETIME NOT NULL,
	createdBy VARCHAR(30) NOT NULL,
	updatedAt DATETIME NOT NULL,
	updatedBy VARCHAR(30) NOT NULL
);

CREATE TABLE categories (
	categoryId TINYINT PRIMARY KEY,
	description VARCHAR(20) NOT NULL,
	active BIT NOT NULL,
	createdAt DATETIME NOT NULL,
	createdBy VARCHAR(30) NOT NULL,
	updatedAt DATETIME NOT NULL,
	updatedBy VARCHAR(30) NOT NULL
);

CREATE TABLE operations (
	operationId INT PRIMARY KEY IDENTITY (1, 1),
	description VARCHAR(80) NOT NULL,
	expectedDate DATE NOT NULL,
	effectiveDate DATE NOT NULL,
	expectedAmount DECIMAL(8,2) NOT NULL,
	amountPaid DECIMAL(8,2) NOT NULL,
	linkDocumentation VARCHAR(200),
	customerId INT FOREIGN KEY REFERENCES customers (customerId),
	operationTypeId TINYINT FOREIGN KEY REFERENCES operationType (operationTypeId),
	bankAcctId INT FOREIGN KEY REFERENCES bankAccounts (bankAccountId),
	categoryId TINYINT FOREIGN KEY REFERENCES categories (categoryId),
	currencyId SMALLINT FOREIGN KEY REFERENCES currencies (currencyId),
	active BIT NOT NULL,
	createdAt DATETIME NOT NULL,
	createdBy VARCHAR(30) NOT NULL,
	updatedAt DATETIME NOT NULL,
	updatedBy VARCHAR(30) NOT NULL
);

CREATE TABLE cards_operations (
	cardOperationId INT PRIMARY KEY IDENTITY (1, 1),
	installments TINYINT NOT NULL,
	cardId INT FOREIGN KEY REFERENCES CARDS(cardId),
	operationId INT UNIQUE FOREIGN KEY REFERENCES operations(operationId),
	active BIT NOT NULL,
	createdAt DATETIME NOT NULL,
	createdBy VARCHAR(30) NOT NULL,
	updatedAt DATETIME NOT NULL,
	updatedBy VARCHAR(30) NOT NULL
);

