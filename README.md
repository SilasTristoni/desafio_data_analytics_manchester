# Desafio Data Analytics

Projeto desenvolvido para o desafio técnico da Manchester Investimentos.

O objetivo foi analisar uma base de vendas utilizando Python, SQL e Power BI.

## Estrutura

- `Base-Dados-Desafio-500k.xlsx`: base original
- `notebooks/analise_vendas.ipynb`: tratamento e análises
- `sql/analises.sql`: consultas SQL
- `powerbi/dashboard_vendas.pbip`: projeto do dashboard no Power BI

## O que foi analisado

Foram analisados:

- perfil de idade dos clientes
- vendas por estado
- faturamento e volume por categoria
- vendas ao longo dos meses
- evolução por região
- relação entre faixa etária e categoria

## Alguns resultados

A faixa de idade entre 35 e 44 anos aparece com bastante frequência na base.

São Paulo possui uma participação maior em quantidade de registros e faturamento.

Algumas categorias possuem valores próximos de faturamento, com destaque para Jardinagem e Mangueiras.

Na análise por mês existem variações, mas não foi identificada uma sazonalidade muito forte somente com essa análise.

## Power BI

O dashboard possui indicadores de faturamento, quantidade vendida, ticket médio e clientes, além de gráficos por categoria, estado, período e faixa etária.

O projeto está salvo no formato PBIP e utiliza a base Excel deste próprio repositório como fonte de dados.

## Tecnologias

- Python
- Pandas
- Matplotlib
- SQL
- Power BI

## Limitações

A base possui poucas informações sobre os clientes, então não foi possível fazer uma segmentação mais detalhada.

Também não existem informações de custo ou lucro, então as análises financeiras ficaram concentradas no faturamento.

## Próximos passos

Como próximos passos seria interessante adicionar dados sobre margem, canais de venda e mais informações dos clientes.
