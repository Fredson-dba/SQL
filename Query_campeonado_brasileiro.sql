use db_brasileirao_2025;

-- 01 Liste o nome e a posição de todos os jogadores.
SELECT 
    nome, posicao
FROM
    jogador
WHERE
    posicao IS NOT NULL
ORDER BY nome;

-- 02 Liste o nome completo e a sigla de todos os times.

SELECT 
    nome_completo, sigla
FROM
    time
ORDER BY nome_completo;

-- 03 Mostre os nomes dos estádios e suas respectivas capacidades.

SELECT 
    nome as 'Estádio',
    capacidade
FROM
    estadio
ORDER BY capacidade DESC;

-- 04 Exiba todos os dados das partidas.

SELECT 
    *
FROM
    partida;

-- 05 Liste o nome dos jogadores nascidos desde o ano 2000.

SELECT 
    nome as Nome,
    dt_nascimento as 'Data de nascimento'
FROM
    jogador
WHERE
    dt_nascimento >= '2000-01-01';
    
    -- 06 Mostre os eventos que ocorreram após o minuto 60.
   
SELECT 
    *
FROM
    evento
WHERE
    minuto > 60
ORDER BY minuto;

-- 07 Liste todas as partidas que terminaram empatadas.

SELECT 
    *
FROM
    partida
WHERE
    gol_mandante = gol_visitante;

-- 08 Liste os times ordenados pela cidade em ordem alfabética

SELECT 
    nome as 'Nome',
    cidade as 'Cidade'
FROM
    time
ORDER BY cidade;

-- 09 Exiba os 5 jogadores mais jovens (data de nascimento mais recentes).

SELECT 
    nome, dt_nascimento
FROM
    jogador
where dt_nascimento is not null
ORDER BY dt_nascimento desc limit 5;

-- 10 Liste os eventos ordenados do mais recente para o mais antigo (por minuto).

SELECT 
    *
FROM
    evento
ORDER BY minuto ASC;

