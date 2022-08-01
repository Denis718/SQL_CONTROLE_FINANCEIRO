-- subtotal e total de assinaturas por plano e tipo de cliente
SELECT 
    ISNULL(plans.description, 'Total') AS plans,
    ISNULL(CONVERT(VARCHAR(10),customers.type), 'Subtotal') AS type,
	count(signatures.planId) AS totalAssinaturas
FROM plans LEFT JOIN signatures ON
	plans.planId = signatures.planId
	LEFT JOIN customers ON
	signatures.customerId = customers.customerId
GROUP BY 
	ROLLUP(plans.description, customers.type);

-- totais por descrição de operação
SELECT operations.description, COUNT(*) AS total FROM operations
WHERE operations.operationTypeId = 2
GROUP BY operations.description
ORDER BY total DESC;


--clientes de quais bancos tendem a usar mais este app?
SELECT banks.name, COUNT(DISTINCT customerId) AS total 
FROM bankAccounts LEFT JOIN banks ON
bankAccounts.bankCode = banks.bankCode
GROUP BY banks.name
ORDER BY total DESC;

--clientes que fazem quais tipos de compra tendem a utilizar o app?
SELECT DISTINCT operations.description  FROM operations

--quais os planos utilizados por tipo de cliente?
SELECT customers.type, plans.description, COUNT(signatures.planId) AS totalAssinaturas
FROM plans LEFT JOIN signatures ON
plans.planId = signatures.planId
LEFT JOIN customers ON
signatures.customerId = customers.customerId
WHERE plans.active = 1 and signatures.active = 1
GROUP BY plans.description, customers.type
ORDER BY customers.type, totalAssinaturas DESC;

--dos clientes que assinam eles renovam o plano ou aderem a um novo?


--quantas contas bancárias tem em média por cliente?
CREATE VIEW CONTAS AS SELECT bankAccounts.customerId, COUNT(bankAccounts.customerId) AS totalContas FROM bankAccounts  GROUP BY bankAccounts.customerId

SELECT AVG(totalContas) AS mediaContasClientes FROM CONTAS

-- Salário médio por tipo de cliente
SELECT customers.type, CAST(AVG([expectedAmount]) AS DECIMAL(8,2)) AS salarioMedio 
FROM operations LEFT JOIN customers ON
operations.customerId = customers.customerId
WHERE description = 'Salário'
GROUP BY customers.type


-- total de despesas dos clientes por período mensal e ano

DECLARE @receita TINYINT = 3
DECLARE @mesInicial TINYINT = 2
DECLARE @mesFinal TINYINT = 5
DECLARE @ANO SMALLINT = 2023

SELECT 
	  ISNULL(customers.name, 'Total') AS customerId
	, ISNULL(CONVERT(CHAR, MONTH(operations.expectedDate)), '') AS mes
	, ISNULL(CONVERT(VARCHAR(10),YEAR(operations.expectedDate)), 'Subtotal') AS ano
	, SUM(operations.expectedAmount) AS quantia
FROM operations LEFT JOIN customers ON
	operations.customerId = customers.customerId
WHERE 
	operations.operationTypeId != @receita AND
	MONTH(operations.expectedDate) BETWEEN @mesInicial AND @mesFinal AND
	YEAR(operations.expectedDate) = @ano
GROUP BY 
	ROLLUP(customers.name, operations.expectedDate)
