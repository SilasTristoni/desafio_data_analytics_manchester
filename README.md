# Desafio Data Analytics

Projeto desenvolvido para o desafio técnico da Manchester Investimentos.

O objetivo foi analisar uma base de vendas utilizando Python, SQL e Power BI, buscando entender o perfil dos clientes, desempenho das categorias, sazonalidade e diferenças entre regiões.

## Estrutura

- `Base-Dados-Desafio-500k.xlsx`: base original do desafio
- `notebooks/analise_vendas.ipynb`: tratamento, análises e gráficos em Python
- `sql/analises.sql`: consultas SQL das principais análises
- `powerbi/dashboard_vendas.pbix`: dashboard final do Power BI
- `powerbi/dashboard_vendas.pbip`: versão do projeto Power BI

## Como executar

Para executar o notebook é necessário ter Python 3 instalado.

Bibliotecas utilizadas:

```bash
pip install pandas numpy matplotlib openpyxl
```

Depois, abra o arquivo:

```text
notebooks/analise_vendas.ipynb
```

e execute as células na ordem.

O notebook utiliza o arquivo `Base-Dados-Desafio-500k.xlsx`, que está na raiz do repositório.

Para visualizar o dashboard, abra o arquivo abaixo no Power BI Desktop:

```text
powerbi/dashboard_vendas.pbix
```

## O que foi analisado

Foram analisados:

- perfil de idade dos clientes
- distribuição de vendas por estado
- faturamento e volume por categoria
- ticket médio por categoria
- vendas ao longo dos meses
- evolução das vendas por região
- relação entre faixa etária e categoria comprada

A aba `PRODUTOS` do Excel foi utilizada junto com a base de vendas para trazer a categoria correta de cada produto.

## Alguns resultados

O faturamento total da base tratada ficou em aproximadamente **R$ 3,01 bilhões**, com cerca de **93 milhões de unidades vendidas**.

A faixa etária de **35 a 44 anos** é a que aparece com maior frequência na base.

**São Paulo** possui a maior participação em faturamento quando comparado aos outros estados analisados.

Em faturamento por categoria, **Jardinagem** apresentou o maior resultado. Em volume de vendas, **Mangueiras** também apresentou bastante participação.

Na análise ao longo dos meses existem variações no faturamento, mas não foi observada uma sazonalidade muito forte apenas com os dados disponíveis.

## Recomendações

Algumas ações que poderiam ser testadas a partir das análises são:

- campanhas diferentes de acordo com a faixa etária dos clientes
- atenção maior às categorias com maior faturamento e volume
- campanhas regionais, principalmente comparando o desempenho de São Paulo com os outros estados
- acompanhar as vendas mensalmente para identificar mudanças de comportamento ao longo do tempo

## Power BI

O dashboard possui indicadores de:

- faturamento total
- quantidade vendida
- ticket médio
- quantidade de clientes

Também foram adicionados gráficos por categoria, estado, período e faixa etária, além de filtros de estado e categoria.

O modelo possui relacionamento entre as tabelas de vendas e produtos e utiliza medidas simples em DAX.

## Tecnologias

- Python
- Pandas
- NumPy
- Matplotlib
- SQL
- Power BI
- Git

## Limitações

A base possui poucas informações adicionais sobre os clientes, então não foi possível realizar uma segmentação mais detalhada.

Também não existem informações de custo, lucro ou margem, então as análises financeiras ficaram concentradas principalmente no faturamento.

O ticket médio utilizado considera o valor médio dos registros de venda, pois a base não possui um identificador específico de pedido ou carrinho.

## Próximos passos

Como próximos passos seria interessante adicionar informações de margem, canais de venda, pedidos e mais dados sobre os clientes.

Também seria possível aprofundar análises como crescimento mensal, comparação entre anos e concentração de faturamento por categoria.
