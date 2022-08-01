USE [Controle.Financeiro];

BEGIN TRANSACTION;
	--CUSTOMERS

	INSERT INTO customers ( name, type, cpfCnpj, email, active, createdAt, createdBy, updatedAt, updatedBy ) VALUES ( 'admin','f','16541721000149','admin@email.com',1,GETDATE(),'denis.silva',GETDATE(),'denis.silva');

	--USER ADMIN

	INSERT INTO users ( username, userpassword, email, customerId, active, createdAt, createdBy, updatedAt, updatedBy ) VALUES ( 'devmaster', 'fafed9a7afec2868090490d7c77cb90c','admin@email.com', 1, 1, GETDATE(), 'devmaster', GETDATE(), 'devmaster' );

	--BANKS

	INSERT INTO banks ( bankCode, name, active, createdAt, createdBy, updatedAt, updatedBy ) VALUES (1, '001 - BANCO DO BRASIL S/A', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva');

	--PLANS

	INSERT INTO plans ( planId, description, duration, price, startDate, endDate, active, createdAt, createdBy, updatedAt, updatedBy ) VALUES ( 1, 'Free', 12, 0.00, '2020-01-25', null, 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO plans ( planId, description, duration, price, startDate, endDate, active, createdAt, createdBy, updatedAt, updatedBy ) VALUES ( 2, 'Basic', 24, 399.00, '2020-01-25', null, 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO plans ( planId, description, duration, price, startDate, endDate, active, createdAt, createdBy, updatedAt, updatedBy ) VALUES ( 3, 'Complete', 36, 799.00, '2020-01-25', null, 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO plans ( planId, description, duration, price, startDate, endDate, active, createdAt, createdBy, updatedAt, updatedBy ) VALUES ( 4, 'Enterprise', 12, 1599.00, '2020-01-25', null, 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO plans ( planId, description, duration, price, startDate, endDate, active, createdAt, createdBy, updatedAt, updatedBy ) VALUES ( 5, 'Custom', 6, 0.00, '2020-01-25', '2020-10-15', 0, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	
	--FEATURES

	INSERT INTO features ( featureId, name, active, createdAt, createdBy, updatedAt, updatedBy ) VALUES ( 1, 'Financial control', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO features ( featureId, name, active, createdAt, createdBy, updatedAt, updatedBy ) VALUES ( 2, 'Statistics', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO features ( featureId, name, active, createdAt, createdBy, updatedAt, updatedBy ) VALUES ( 3, 'Mutiple accounts', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO features ( featureId, name, active, createdAt, createdBy, updatedAt, updatedBy ) VALUES ( 4, 'Schedule', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO features ( featureId, name, active, createdAt, createdBy, updatedAt, updatedBy ) VALUES ( 5, 'Budgets', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO features ( featureId, name, active, createdAt, createdBy, updatedAt, updatedBy ) VALUES ( 6, 'Test', 0, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );

	--SIGNATURES

	INSERT INTO signatures ( startDate, expiration, planId, customerId, active, createdAt, createdBy, updatedAt, updatedBy ) VALUES ( '2022-03-10','2025-03-10', 3, 1, 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );

	--PLAN_FEATURES

	INSERT INTO plan_features ( planFeaturesId, planId, featureId, active, createdAt, createdBy, updatedAt, updatedBy ) VALUES ( 4, 3, 1, 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO plan_features ( planFeaturesId, planId, featureId, active, createdAt, createdBy, updatedAt, updatedBy ) VALUES ( 5, 3, 2, 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO plan_features ( planFeaturesId, planId, featureId, active, createdAt, createdBy, updatedAt, updatedBy ) VALUES ( 6, 3, 4, 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO plan_features ( planFeaturesId, planId, featureId, active, createdAt, createdBy, updatedAt, updatedBy ) VALUES ( 7, 3, 5, 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );

	--OPERATION TYPE

	INSERT INTO operationType ( operationTypeId, description, active, createdAt, createdBy, updatedAt, updatedBy ) VALUES ( 1, 'Despesa', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO operationType ( operationTypeId, description, active, createdAt, createdBy, updatedAt, updatedBy ) VALUES ( 2, 'Despesa com cartão', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO operationType ( operationTypeId, description, active, createdAt, createdBy, updatedAt, updatedBy ) VALUES ( 3, 'Receita', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );

	--CURRENCIES

	INSERT INTO currencies ( currencyId, name, code, symbol, active, createdAt, createdBy, updatedAt, updatedBy ) VALUES ( 2, 'Dollars', 'USD', '$', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO currencies ( currencyId, name, code, symbol, active, createdAt, createdBy, updatedAt, updatedBy ) VALUES ( 18, 'Reais', 'BRL', 'R$', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );

	--CATEGORIES

	INSERT INTO categories ( categoryId, description, active, createdAt, createdBy, updatedAt, updatedBy ) VALUES ( 1, 'Moradia', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO categories ( categoryId, description, active, createdAt, createdBy, updatedAt, updatedBy ) VALUES ( 2, 'Supermercado', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO categories ( categoryId, description, active, createdAt, createdBy, updatedAt, updatedBy ) VALUES ( 3, 'Internet', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO categories ( categoryId, description, active, createdAt, createdBy, updatedAt, updatedBy ) VALUES ( 4, 'Telefone', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO categories ( categoryId, description, active, createdAt, createdBy, updatedAt, updatedBy ) VALUES ( 5, 'TV', 0, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO categories ( categoryId, description, active, createdAt, createdBy, updatedAt, updatedBy ) VALUES ( 6, 'Transporte', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO categories ( categoryId, description, active, createdAt, createdBy, updatedAt, updatedBy ) VALUES ( 7, 'Lazer', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO categories ( categoryId, description, active, createdAt, createdBy, updatedAt, updatedBy ) VALUES ( 8, 'Saúde', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO categories ( categoryId, description, active, createdAt, createdBy, updatedAt, updatedBy ) VALUES ( 9, 'Bares e restaurantes', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO categories ( categoryId, description, active, createdAt, createdBy, updatedAt, updatedBy ) VALUES ( 10, 'Pagamento recebido', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO categories ( categoryId, description, active, createdAt, createdBy, updatedAt, updatedBy ) VALUES ( 11, 'Educação', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );

COMMIT TRANSACTION;


