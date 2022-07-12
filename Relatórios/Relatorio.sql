-- total de assinaturas por plano e tipo de cliente
SELECT plans.description, count(signatures.planId) AS totalAssinaturas, customers.type
FROM plans LEFT JOIN signatures ON
plans.planId = signatures.planId
LEFT JOIN customers ON
signatures.customerId = customers.customerId
GROUP BY plans.description, customers.type;

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


-- total de despesas dos clientes por mês e ano
SELECT operations.customerId, MONTH(operations.expectedDate) AS mes, YEAR(operations.expectedDate) AS ano, SUM(operations.expectedAmount) AS total FROM operations
WHERE operations.operationTypeId != 3
GROUP BY operations.customerId, mes, ano;


SELECT MONTH(operations.expectedDate) AS mes FROM operations
