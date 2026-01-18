# PostgreSQL Monitoring Lab

Este projeto é um laboratório prático para simular um ambiente real de PostgreSQL utilizando Docker, com foco em organização, observabilidade e boas práticas comuns no dia a dia de um DBA / DataOps.

O objetivo não é apenas “subir um banco”, mas estruturar um projeto reproduzível, versionado e próximo de cenários de produção.

---

## 🎯 Objetivos do projeto

* Simular um ambiente PostgreSQL real em Docker
* Organizar scripts SQL de forma profissional
* Executar cargas de dados controladas
* Criar base para análises de performance e monitoramento
* Servir como projeto de portfólio técnico

---

## 🧱 Estrutura do projeto

```
postgres-monitoring-lab/
├── docker-compose.yml
├── env.example
├── monitoring/
│   ├── queries.sql
│   └── analysis.sql
├── sql/
│   ├── 01_schema.sql
│   ├── 02_tables.sql
│   └── 03_seed.sql
├── scripts/
│   └── init.sh
└── README.md
```

---

## 🐳 Docker e PostgreSQL

O ambiente é levantado via `docker-compose`, utilizando:

* PostgreSQL (imagem oficial)
* Volume persistente para dados
* Variáveis de ambiente externalizadas

### Subir o ambiente

```bash
docker compose up -d
```

### Acessar o banco

```bash
psql -h localhost -U dba_admin -d labdb
```

---

## 🗄️ Scripts SQL

Os scripts seguem uma ordem lógica:

1. Criação de schema
2. Criação de tabelas
3. Carga de dados (seed)

Isso facilita:

* versionamento
* reaproveitamento
* automação futura com migrations

---

## 📊 Monitoramento e análise

A pasta `monitoring/` contém queries voltadas para:

* Análise de volume de dados
* Verificação de tabelas mais acessadas
* Base para futuras integrações com ferramentas de monitoramento

---

## 🔐 Variáveis de ambiente

O arquivo `env.example` serve como modelo.

Crie seu próprio `env.sh` ou `.env` a partir dele, sem versionar credenciais sensíveis.

---

## 🚀 Próximos passos planejados

* Integração com ferramenta de monitoramento
* Simulação de queries lentas
* Análise de índices
* Pipeline de migrations
* CI/CD com GitHub Actions

---

## 📌 Observação

Este projeto é educacional e faz parte da construção de portfólio técnico voltado para Banco de Dados, DataOps e Arquitetura de Dados.

---

## Projeto 2 — Monitoramento de performance

Evolução direta do Projeto 1, com foco em diagnóstico de lentidão,
análise de queries, coleta histórica de métricas e tuning básico
em PostgreSQL.

