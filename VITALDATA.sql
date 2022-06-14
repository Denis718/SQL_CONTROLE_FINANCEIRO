--CUSTOMERS

INSERT INTO CUSTOMERS VALUES ( 'admin','f','admin@email.com',0,GETDATE(),'denis.silva',GETDATE(),'denis.silva');


--USER ADMIN
INSERT INTO USERS VALUES ( 'admin', 'admin', 1, 1, GETDATE(), 'admin', GETDATE(), 'admin' );

--BANKS

INSERT INTO BANKS VALUES (001, '001 - BANCO DO BRASIL S/A', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva');


--PLANS

INSERT INTO PLANS VALUES ( 'Free', 12, 0.00, 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
INSERT INTO PLANS VALUES ( 'Basic', 24, 399.00, 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
INSERT INTO PLANS VALUES ( 'Complete', 36, 799.00, 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
INSERT INTO PLANS VALUES ( 'Enterprise', 12, 1599.00, 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
INSERT INTO PLANS VALUES ( 'Custom', 6, 0.00, 0, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );

--FEATURES

INSERT INTO FEATURES VALUES ( 'Financial control', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
INSERT INTO FEATURES VALUES ( 'Statistics', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
INSERT INTO FEATURES VALUES ( 'Mutiple accounts', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
INSERT INTO FEATURES VALUES ( 'Schedule', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
INSERT INTO FEATURES VALUES ( 'Budgets', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
INSERT INTO FEATURES VALUES ( 'Test', 0, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );

--SIGNATURES

INSERT INTO SIGNATURES VALUES ( '2025-03-10', 3, 1, 0, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );

--PLAN_FEATURES

INSERT INTO PLAN_FEATURES VALUES ( 3, 1, 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
INSERT INTO PLAN_FEATURES VALUES ( 3, 2, 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
INSERT INTO PLAN_FEATURES VALUES ( 3, 4, 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
INSERT INTO PLAN_FEATURES VALUES ( 3, 5, 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );

--OPERATION_TYPE

INSERT INTO OPERATION_TYPE VALUES ( 'Despesa', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
INSERT INTO OPERATION_TYPE VALUES ( 'Despesa com cartão', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
INSERT INTO OPERATION_TYPE VALUES ( 'Receita', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );

--CURRENCIES

INSERT INTO CURRENCIES  VALUES ('Dollars', 'USD', '$',1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva');

--CATEGORIES

INSERT INTO CATEGORIES VALUES ( 'Moradia', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
INSERT INTO CATEGORIES VALUES ( 'Supermercado', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
INSERT INTO CATEGORIES VALUES ( 'Internet', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
INSERT INTO CATEGORIES VALUES ( 'Telefone', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
INSERT INTO CATEGORIES VALUES ( 'TV', 0, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
INSERT INTO CATEGORIES VALUES ( 'Transporte', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
INSERT INTO CATEGORIES VALUES ( 'Lazer', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
INSERT INTO CATEGORIES VALUES ( 'Saúde', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
INSERT INTO CATEGORIES VALUES ( 'Bares e restaurantes', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
INSERT INTO CATEGORIES VALUES ( 'Pagamento recebido', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );
INSERT INTO CATEGORIES VALUES ( 'Educação', 1, GETDATE(), 'denis.silva', GETDATE(), 'denis.silva' );