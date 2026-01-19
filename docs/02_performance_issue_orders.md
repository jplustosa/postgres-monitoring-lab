# Diagnóstico de lentidão - tabela orders

## Sintoma
Consultas SELECT na tabela orders apresentaram
alto tempo total de execução.

## Evidência
pg_stat_statements indicou queries com:
- alto total_exec_time
- múltiplas execuções
- leitura completa de tabela

## Causa raiz
Ausência de índices nas colunas utilizadas
em filtros e ordenações.

## Impacto
Alto consumo de CPU e I/O em consultas simples.
