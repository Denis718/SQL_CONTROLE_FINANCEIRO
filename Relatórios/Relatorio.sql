-- total de assinaturas por plano e tipo de cliente
SELECT plans.description, count(signatures.planId) AS totalAssinaturas, customers.type
FROM plans LEFT JOIN signatures ON
plans.planId = signatures.planId
LEFT JOIN customers ON
signatures.customerId = customers.customerId
GROUP BY plans.description, customers.type;

-- Verifica se existe cliente pessoa física com plano Enterprise
SELECT plans.description, customers.type, customers.customerId
FROM plans LEFT JOIN signatures ON
plans.planId = signatures.planId
LEFT JOIN customers ON
signatures.customerId = customers.customerId
WHERE customers.Type = 'f' AND plans.description = 'Enterprise'

-- Verifica se existe cliente pessoa jurídica com plano Free
SELECT plans.description, customers.type, customers.customerId
FROM plans LEFT JOIN signatures ON
plans.planId = signatures.planId
LEFT JOIN customers ON
signatures.customerId = customers.customerId
WHERE customers.Type = 'j' AND plans.description = 'Free'

select operations.description, count(*) from operations
group by operations.description;

SELECT AVG(bankAccounts.customerId) AS mediaContas FROM bankAccounts
GROUP BY bankAccounts.customerId

SELECT COUNT(*) FROM operations


--clientes de qual banco tendem a usar mais este app?
SELECT banks.name, COUNT(operations.bankAcctId) AS total FROM operations
INNER JOIN bankAccounts ON
operations.bankAcctId = bankAccounts.bankAccountId
INNER JOIN banks ON
bankAccounts.bankCode = banks.bankCode
GROUP BY banks.name


--clientes que fazem quais tipos de compra tendem a utilizar o app?
SELECT DISTINCT operations.description FROM operations




--quais os planos mais utilizados?
SELECT plans.description, count(signatures.planId) AS totalAssinaturas
FROM plans LEFT JOIN signatures ON
plans.planId = signatures.planId
WHERE plans.active = 1 and signatures.active = 1
GROUP BY plans.description;

--dos clientes que assinam eles renovam o plano ou aderem a um novo?

--quantas contas bancárias tem em média por cliente?
CREATE VIEW CONTAS AS SELECT bankAccounts.customerId, COUNT(bankAccounts.customerId) AS totalContas FROM bankAccounts  GROUP BY bankAccounts.customerId

SELECT AVG(totalContas) AS mediaContasClientes FROM CONTAS

SELECT AVG([expectedAmount]) FROM operations
WHERE description = 'Salário'