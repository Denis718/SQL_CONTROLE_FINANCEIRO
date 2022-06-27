USE CONTROLE_FINANCEIRO;

BEGIN TRANSACTION;
	--CUSTOMERS

	INSERT INTO CUSTOMERS VALUES ( 'admin','f','admin@email.com',1,GETDATE(),'denis.silva',GETDATE(),'denis.silva');


	--USER ADMIN
	INSERT INTO USERS VALUES ( 'devmaster', 'fafed9a7afec2868090490d7c77cb90c','admin@email.com', 1, 1, GETDATE(), 'devmaster', GETDATE(), 'devmaster' );

	--BANKS

	INSERT INTO BANKS VALUES (1, '001 - BANCO DO BRASIL S/A', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva');


	--PLANS

	INSERT INTO PLANS VALUES ( 1, 'Free', 12, 0.00, 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO PLANS VALUES ( 2, 'Basic', 24, 399.00, 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO PLANS VALUES ( 3, 'Complete', 36, 799.00, 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO PLANS VALUES ( 4, 'Enterprise', 12, 1599.00, 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO PLANS VALUES ( 5, 'Custom', 6, 0.00, 0, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );

	--FEATURES

	INSERT INTO FEATURES VALUES ( 1, 'Financial control', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO FEATURES VALUES ( 2, 'Statistics', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO FEATURES VALUES ( 3, 'Mutiple accounts', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO FEATURES VALUES ( 4, 'Schedule', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO FEATURES VALUES ( 5, 'Budgets', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO FEATURES VALUES ( 6, 'Test', 0, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );

	--SIGNATURES

	INSERT INTO SIGNATURES VALUES ( '2022-03-10','2025-03-10', 3, 1, 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );

	--PLAN_FEATURES
	--id, plan_id, feature_id, active, created_at, created_by, updated_at, updated_by

	INSERT INTO PLAN_FEATURES VALUES ( 4, 3, 1, 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO PLAN_FEATURES VALUES ( 5, 3, 2, 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO PLAN_FEATURES VALUES ( 6, 3, 4, 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO PLAN_FEATURES VALUES ( 7, 3, 5, 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );

	--OPERATION_TYPE

	INSERT INTO OPERATION_TYPE VALUES ( 1, 'Despesa', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO OPERATION_TYPE VALUES ( 2, 'Despesa com cartão', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO OPERATION_TYPE VALUES ( 3, 'Receita', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );

	--CURRENCIES

	INSERT INTO CURRENCIES VALUES ( 2, 'Dollars', 'USD', '$', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO CURRENCIES VALUES ( 18, 'Reais', 'BRL', 'R$', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );

	--CATEGORIES

	INSERT INTO CATEGORIES VALUES ( 1, 'Moradia', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO CATEGORIES VALUES ( 2, 'Supermercado', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO CATEGORIES VALUES ( 3, 'Internet', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO CATEGORIES VALUES ( 4, 'Telefone', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO CATEGORIES VALUES ( 5, 'TV', 0, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO CATEGORIES VALUES ( 6, 'Transporte', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO CATEGORIES VALUES ( 7, 'Lazer', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO CATEGORIES VALUES ( 8, 'Saúde', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO CATEGORIES VALUES ( 9, 'Bares e restaurantes', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO CATEGORIES VALUES ( 10, 'Pagamento recebido', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
	INSERT INTO CATEGORIES VALUES ( 11, 'Educação', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );

COMMIT TRANSACTION;


