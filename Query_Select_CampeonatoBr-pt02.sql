-- 11 Mostre o nome do jogador e o nome do time onde ele joga.

select 
	jogador.nome as "Jogador",
	time.nome as "Time"
from 
	jogador
inner join time on time.id_time = jogador.id_time;
	

-- 12 Liste as partidas com o nome do time mandante e visitante.

select 
	id_partida as "Partida",
	m.nome as "Mandante",
	v.nome as "Visitante"
from
	partida p
inner join "time" m on
	p.id_mandante = m.id_time
inner join "time" v on
	p.id_visitante = v.id_time;

-- 13 Exiba o nome do estádio e o nome dos times que têm esse estádio como casa.

select 
	time.nome as "Time" ,
	estadio.nome as "Estádio"
from
	time
inner join estadio
	on time.id_estadio = estadio.id_estadio
order by time.nome;

-- 14 Mostre os eventos das partidas junto com o nome do jogador responsável.

select 
	j.nome as "Jogador" ,
	descricao as "Evento"
from
	evento e
inner join jogador j 
	on e.id_jogador = j.id_jogador
order by j.nome;

-- 15 Liste o nome das cidades e os estádios que estão localizados nelas.

select 
	t.cidade as "Cidade",
	e.nome as "Estádio"
from
	estadio e
inner join "time" t 
	on t.id_estadio = e.id_estadio
order by t.cidade;

-- 16 Mostre os nomes dos jogadores e os estádios onde ocorreram partidas que eles participaram (via evento).

select 
	e.id_partida as "Nº da Partida",
	j.nome as "Jogador",
	e2.nome as "Estádio"
from
	jogador j
inner join evento e
	on e.id_jogador = j.id_jogador
inner join partida p  
	on e.id_partida = p.id_partida
inner join estadio e2 
	on p.id_estadio = e2.id_estadio
order by j.nome;
	
	
-- 17 Exiba o nome do time, nome do estádio, e cidade onde está localizado o time.

select 
	t.nome as "Time",
	e.nome as "Estádio" ,
	t.cidade as "Cidade"
from
	time t
inner join estadio e 
	on t.id_estadio = e.id_estadio;

-- Agregação
-- 18 Conte quantos jogadores cada time possui.

select 
	t.nome as "Time",
	count(j.nome) as "Qtd de Jogadores"
from
	jogador j
inner join "time" t 
	on j.id_time = t.id_time
group by t.nome;

-- 19 Calcule a média de gols marcados por time mandante.

select 
	m.nome as "Mandante",
	avg(gol_mandante ) as "Média de Gols"
from
	partida p 
inner join time m
	on p.id_mandante = m.id_time
inner join time v
	on p.id_visitante = v.id_time
group by m.nome 
order by avg(gol_mandante ) desc;


-- 20 Mostre o total de partidas jogadas em cada estádio.
	
select 
	e.nome as "Estádio",
	COUNT(id_partida) as "Nº de Partidas"
from 
	partida p
inner join estadio e 
	on p.id_estadio = e.id_estadio
group by e.nome
order by COUNT(id_partida) desc;
	