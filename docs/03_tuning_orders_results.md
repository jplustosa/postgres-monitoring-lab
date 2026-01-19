# Correção de performance - tabela orders

## Ação tomada
Criação de índices nas colunas:
- status
- customer_id
- created_at

## Resultado observado
Após aplicação dos índices e reset das métricas:
- Redução significativa no tempo total de execução
- Redução do tempo médio das queries
- Melhoria geral na responsividade

## Conclusão
A lentidão estava diretamente associada à ausência
de índices adequados para o padrão de consulta.
