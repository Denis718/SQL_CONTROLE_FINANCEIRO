USE CONTROLE_FINANCEIRO;

CREATE TABLE banks (
	bank_code INT PRIMARY KEY,
	name VARCHAR(80) NOT NULL,
	active BIT NOT NULL,
	created_at DATETIME NOT NULL,
	created_by VARCHAR(30) NOT NULL,
	updated_at DATETIME NOT NULL,
	updated_by VARCHAR(30) NOT NULL
);

CREATE TABLE customers (
	id INT PRIMARY KEY IDENTITY (1, 1),
	name VARCHAR (80) NOT NULL,
	custom_type VARCHAR(1) NOT NULL CHECK (custom_type IN('f', 'j')),
	email VARCHAR(40) NOT NULL,
	active BIT NOT NULL,
	created_at DATETIME NOT NULL,
	created_by VARCHAR(30) NOT NULL,
	updated_at DATETIME NOT NULL,
	updated_by VARCHAR(30) NOT NULL
);

CREATE TABLE bank_accounts (
	id INT PRIMARY KEY IDENTITY (1, 1),
	balance DECIMAL(8,2) NOT NULL,
	bank_code INT FOREIGN KEY REFERENCES banks (bank_code),
	customer_id INT FOREIGN KEY REFERENCES customers (id),
	active BIT NOT NULL,
	created_at DATETIME NOT NULL,
	created_by VARCHAR(30) NOT NULL,
	updated_at DATETIME NOT NULL,
	updated_by VARCHAR(30) NOT NULL
);

CREATE TABLE plans (
	id TINYINT PRIMARY KEY,
	description VARCHAR(30) NOT NULL,
	duration SMALLINT NOT NULL,
	price DECIMAL(8,2),
	active BIT NOT NULL,
	created_at DATETIME NOT NULL,
	created_by VARCHAR(30) NOT NULL,
	updated_at DATETIME NOT NULL,
	updated_by VARCHAR(30) NOT NULL
);

CREATE TABLE features (
	id SMALLINT PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
	active BIT NOT NULL,
	created_at DATETIME NOT NULL,
	created_by VARCHAR(30) NOT NULL,
	updated_at DATETIME NOT NULL,
	updated_by VARCHAR(30) NOT NULL
);

CREATE TABLE signatures (
	id INT PRIMARY KEY IDENTITY (1, 1),
	startDate DATE NOT NULL,
	expiration DATE NOT NULL,
	plan_id TINYINT FOREIGN KEY REFERENCES plans (id),
	customer_id INT FOREIGN KEY REFERENCES customers (id),
	active BIT NOT NULL,
	created_at DATETIME NOT NULL,
	created_by VARCHAR(30) NOT NULL,
	updated_at DATETIME NOT NULL,
	updated_by VARCHAR(30) NOT NULL
);

CREATE TABLE plan_features (
	id INT PRIMARY KEY,
	plan_id TINYINT FOREIGN KEY REFERENCES plans (id),
	feature_id SMALLINT FOREIGN KEY REFERENCES features(id),
	active BIT NOT NULL,
	created_at DATETIME NOT NULL,
	created_by VARCHAR(30) NOT NULL,
	updated_at DATETIME NOT NULL,
	updated_by VARCHAR(30) NOT NULL
);

CREATE TABLE users (
	id INT PRIMARY KEY IDENTITY (1, 1),
	username VARCHAR(30) NOT NULL, 
	userpassword VARCHAR(32) NOT NULL, --MD5
	email VARCHAR(40) NOT NULL,
	customer_id INT UNIQUE FOREIGN KEY REFERENCES customers (id),
	active BIT NOT NULL,
	created_at DATETIME NOT NULL,
	created_by VARCHAR(30) NOT NULL,
	updated_at DATETIME NOT NULL,
	updated_by VARCHAR(30) NOT NULL
);

CREATE TABLE cards (
	id INT PRIMARY KEY IDENTITY (1, 1),
	description VARCHAR(20) NOT NULL,
	card_limit DECIMAL (8, 2) NOT NULL,
	customer_id INT FOREIGN KEY REFERENCES customers (id),
	active BIT NOT NULL,
	created_at DATETIME NOT NULL,
	created_by VARCHAR(30) NOT NULL,
	updated_at DATETIME NOT NULL,
	updated_by VARCHAR(30) NOT NULL
);

CREATE TABLE operation_type (
	id TINYINT PRIMARY KEY,
	description VARCHAR(20) NOT NULL,
	active BIT NOT NULL,
	created_at DATETIME NOT NULL,
	created_by VARCHAR(30) NOT NULL,
	updated_at DATETIME NOT NULL,
	updated_by VARCHAR(30) NOT NULL
);

CREATE TABLE currencies (
	id SMALLINT PRIMARY KEY,
	name VARCHAR(20) NOT NULL,
	code VARCHAR(3) NOT NULL,
	symbol VARCHAR(5) NOT NULL,
	active BIT NOT NULL,
	created_at DATETIME NOT NULL,
	created_by VARCHAR(30) NOT NULL,
	updated_at DATETIME NOT NULL,
	updated_by VARCHAR(30) NOT NULL
);

CREATE TABLE categories (
	id TINYINT PRIMARY KEY,
	description VARCHAR(20) NOT NULL,
	active BIT NOT NULL,
	created_at DATETIME NOT NULL,
	created_by VARCHAR(30) NOT NULL,
	updated_at DATETIME NOT NULL,
	updated_by VARCHAR(30) NOT NULL
);

CREATE TABLE operations (
	id INT PRIMARY KEY IDENTITY (1, 1),
	description VARCHAR(80) NOT NULL,
	expected_date DATE NOT NULL,
	effective_date DATE NOT NULL,
	expected_amount	DECIMAL(8,2) NOT NULL,
	amount_paid	DECIMAL(8,2) NOT NULL,
	link_documentation VARCHAR(100),
	customer_id INT FOREIGN KEY REFERENCES customers (id),
	optype_id TINYINT FOREIGN KEY REFERENCES operation_type (id),
	bank_acct_id INT FOREIGN KEY REFERENCES bank_accounts (id),
	category_id TINYINT FOREIGN KEY REFERENCES categories (id),
	currency_id SMALLINT FOREIGN KEY REFERENCES currencies (id),
	active BIT NOT NULL,
	created_at DATETIME NOT NULL,
	created_by VARCHAR(30) NOT NULL,
	updated_at DATETIME NOT NULL,
	updated_by VARCHAR(30) NOT NULL
);

CREATE TABLE cards_operations (
	id INT PRIMARY KEY IDENTITY (1, 1),
	installments TINYINT NOT NULL,
	card_id INT FOREIGN KEY REFERENCES CARDS(id),
	operation_id INT UNIQUE FOREIGN KEY REFERENCES OPERATIONS(id),
	active BIT NOT NULL,
	created_at DATETIME NOT NULL,
	created_by VARCHAR(30) NOT NULL,
	updated_at DATETIME NOT NULL,
	updated_by VARCHAR(30) NOT NULL
);

