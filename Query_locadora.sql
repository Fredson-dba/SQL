use locadora;

-- 01. Quais os países cadastrados?

SELECT DISTINCT
    pais as 'Países'
FROM
    pais
ORDER BY pais;

-- 02. Quantos países estão cadastrados?

SELECT 
    COUNT(pais) AS 'Qtd de países' 
FROM
    pais;

-- 03. Quantos países que terminam com a letra "A" estão cadastrados?

SELECT 
    COUNT(pais) AS 'Qtd'
FROM
    pais
WHERE
    pais LIKE 'a%';

-- 04. Listar, sem repetição, os anos que houveram lançamento de filme.

SELECT DISTINCT
    ano_de_lancamento as 'Lançamento'
FROM
    filme;
    

-- 05. Alterar o ano de lançamento igual 2007 para filmes que iniciem com a Letra "B".

UPDATE filme 
SET 
    ano_de_lancamento = 2007
WHERE
    titulo LIKE 'b%';

-- 06. Listar os filmes que possuem duração do filme maior que 100 e classificação igual a "G".

SELECT 
    titulo as 'Título',
    duracao_do_filme as 'Duração',
    classificacao as 'Classificação'
FROM
    filme
WHERE
    classificacao = 'G'
        AND duracao_do_filme > 100;

-- 07. Alterar o ano de lançamento igual 2008 para filmes que possuem duração da locação menor que 4 e classificação igual a "PG".

UPDATE filme 
SET 
    ano_de_lancamento = 2008
WHERE
    duracao_da_locacao < 4
        AND classificacao = 'PG';


-- 08. Listar a quantidade de filmes que estejam classificados como "PG-13" e preço da locação maior que 2.40.

select count(titulo) as 'QTD PG-13'
from filme
where classificacao = 'PG-13' and preco_da_locacao > 2.40;

-- 09. Listar a quantidade de filmes por classificação.

SELECT 
    classificacao, COUNT(titulo) AS 'QTD'
FROM
    filme
GROUP BY classificacao
ORDER BY QTD DESC;

-- 10. Listar, sem repetição, os preços de locação dos filmes cadastrados.

SELECT DISTINCT
    preco_da_locacao
FROM
    filme;
    