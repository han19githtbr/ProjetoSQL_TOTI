-- Questão 1 RESPOSTA
SELECT cliente.id, 
	   cliente.nome, 
       cliente_conta.id_cliente,
       cliente_conta.dependente
FROM cliente
JOIN cliente_conta ON cliente.id = cliente_conta.id_cliente
where dependente = 1
GROUP BY cliente_conta.dependente, cliente.nome 


-- Questão 2 MAIORES TRANSACOES
select id_cliente_conta, valor AS "MAIORES TRANSACOES" FROM transacao
ORDER BY valor desc
limit(5);


-- Questão 2 MENORES TRANSACOES
select id_cliente_conta, valor AS "MENORES TRANSACOES" FROM transacao
ORDER BY valor asc
limit(5);


-- Questão 3 RESPOSTA
select id_cliente_conta, 
	   valor, 
       descricao, 
       SUM(valor) AS "Saldo"
FROM transacao 
JOIN tipo_transacao ON transacao.id_tipo_transacao = tipo_transacao.id
WHERE id_tipo_transacao = 1 GROUP BY id_cliente_conta ORDER BY id_cliente_conta
 
