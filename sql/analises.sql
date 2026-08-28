-- perfil de clientes por idade
SELECT
    CASE
        WHEN idade BETWEEN 18 AND 24 THEN '18-24'
        WHEN idade BETWEEN 25 AND 34 THEN '25-34'
        WHEN idade BETWEEN 35 AND 44 THEN '35-44'
        WHEN idade BETWEEN 45 AND 54 THEN '45-54'
        WHEN idade BETWEEN 55 AND 64 THEN '55-64'
        ELSE '65+'
    END AS faixa_etaria,
    COUNT(*) AS quantidade
FROM vendas
GROUP BY faixa_etaria
ORDER BY faixa_etaria;


-- estados com mais vendas
SELECT
    estado,
    COUNT(*) AS quantidade
FROM vendas
GROUP BY estado
ORDER BY quantidade DESC;


-- faturamento por categoria
SELECT
    c.categoria,
    SUM(v.quantidade_vendida * v.preco_unitario) AS faturamento
FROM vendas v
LEFT JOIN categorias_produtos c
    ON v.produto = c.produto
GROUP BY c.categoria
ORDER BY faturamento DESC;


-- quantidade vendida por categoria
SELECT
    c.categoria,
    SUM(v.quantidade_vendida) AS quantidade_vendida
FROM vendas v
LEFT JOIN categorias_produtos c
    ON v.produto = c.produto
GROUP BY c.categoria
ORDER BY quantidade_vendida DESC;


-- vendas por mês
SELECT
    EXTRACT(MONTH FROM data) AS mes,
    SUM(quantidade_vendida * preco_unitario) AS faturamento
FROM vendas
GROUP BY mes
ORDER BY mes;


-- faturamento por estado e ano
SELECT
    estado,
    EXTRACT(YEAR FROM data) AS ano,
    SUM(quantidade_vendida * preco_unitario) AS faturamento
FROM vendas
GROUP BY estado, ano
ORDER BY estado, ano;


-- categoria por faixa de idade
SELECT
    CASE
        WHEN idade BETWEEN 18 AND 24 THEN '18-24'
        WHEN idade BETWEEN 25 AND 34 THEN '25-34'
        WHEN idade BETWEEN 35 AND 44 THEN '35-44'
        WHEN idade BETWEEN 45 AND 54 THEN '45-54'
        WHEN idade BETWEEN 55 AND 64 THEN '55-64'
        ELSE '65+'
    END AS faixa_etaria,
    c.categoria,
    SUM(v.quantidade_vendida) AS quantidade_vendida
FROM vendas v
LEFT JOIN categorias_produtos c
    ON v.produto = c.produto
GROUP BY faixa_etaria, c.categoria
ORDER BY faixa_etaria, quantidade_vendida DESC;
