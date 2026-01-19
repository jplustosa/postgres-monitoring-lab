# Análise inicial de performance

## Contexto
Após ativação do pg_stat_statements, foram executadas
rotinas de monitoramento básico para geração de carga controlada.

## Observações iniciais
- Queries de monitoramento aparecem como as mais executadas
- O tempo médio de execução é baixo
- O impacto maior vem da frequência, não da complexidade

## Conclusão preliminar
O ambiente encontra-se saudável sob carga leve.
Nenhuma query individual apresenta tempo elevado,
mas há concentração de execuções repetidas.
