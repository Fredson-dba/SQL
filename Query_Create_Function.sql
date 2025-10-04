/* 01. function comparacao */

delimiter $$
create function comparacao(numero1 int, numero2 int)
returns varchar(50)
deterministic
begin
	declare mensagem varchar(50);
    if numero1 > numero2 then
		set mensagem = concat(numero1, ' > ',numero2);
    elseif numero1 < numero2 then
		set mensagem = concat(numero1, ' < ', numero2);
    else
		set mensagem = concat(numero1, ' = ',numero2);
    end if;
    return mensagem;
end $$
delimiter ;
drop function comparacao;
select comparacao(5,5);


-- 02. function data_br

delimiter $$
create function data_br (dt date)
returns varchar(50)
deterministic
begin	
    return DATE_FORMAT (dt, '%d/%m/%Y');
end $$

delimiter ;

select data_br('1987-07-21'), data_br(curdate());

-- 03. function signo

delimiter $$

create function signo(dt date)
returns varchar(250)
deterministic
begin
	declare mensagem varchar(20);
    declare dtf varchar(4);
    set dtf = date_format(dt,'%m%d');
    if dtf between '0321' and '0419' then
		set mensagem = ('Áries');
    elseif dtf between '0420' and '0520' then
		set mensagem = ('Touro');
    elseif dtf between '0521' and '0620' then
		set mensagem = ('Gêmeos');  
	elseif dtf between '0621' and '0722' then
		set mensagem = ('Câncer'); 
	elseif dtf between '0723' and '0822' then
		set mensagem = ('Leão'); 
	elseif dtf between '0823' and '0922' then
		set mensagem = ('Virgem'); 
	elseif dtf between '0923' and '1022' then
		set mensagem = ('Libra'); 
	elseif dtf between '1023' and '1121' then
		set mensagem = ('Escorpião'); 
	elseif dtf between '1122' and '1222' then
		set mensagem = ('Sagitário'); 
	elseif dtf between '1222' and '1231' or dtf between '0101' and '0119' then
		set mensagem = ('Capricórnio');
	-- if dtf >= '1222' or dtf <= '0119' then set mensagem = ('Capricórnio'); 
	elseif dtf between '0120' and '0218' then
		set mensagem = ('Aquário');
	elseif dtf between '0219' and '0320' then
		set mensagem = ('Peixes');
    else
		set mensagem = ('Data Inválida');
    end if;
    return mensagem;
end $$
delimiter ;
drop function signo;

select signo('2024-04-01');
select signo('2024-05-01');
select signo('2024-06-01');
select signo('2024-07-01');
select signo('2024-08-01');
select signo('2024-09-01');
select signo('2024-10-01');
select signo('2024-11-01');
select signo('2024-12-01');
select signo('2024-01-01');
select signo('2024-02-01');
select signo('2024-03-01');

-- 04. function valor_aleatorio

delimiter $$
create function valor_aleatorio(min int, max int)
returns int
not deterministic
reads sql data
begin
	declare resultado int;
    set resultado = round(rand() * (max-min)+min);
    return resultado;
end$$
delimiter ;

drop function valor_aleatorio;

select valor_aleatorio(5,15);
select valor_aleatorio(5,15);
select valor_aleatorio(5,15);
select valor_aleatorio(5,15);
select valor_aleatorio(5,15);
select valor_aleatorio(5,15);
select valor_aleatorio(5,15);
select valor_aleatorio(5,15);
select valor_aleatorio(5,15);
select valor_aleatorio(5,15);
select valor_aleatorio(5,15);
select valor_aleatorio(5,15);
select valor_aleatorio(5,15);
select valor_aleatorio(5,15);
select valor_aleatorio(5,15);



