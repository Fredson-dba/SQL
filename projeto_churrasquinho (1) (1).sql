create database db_churrasquinho;


use  db_churrasquinho;

CREATE TABLE produto (
    id_produto INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(500),
    quantidade INT NOT NULL,
    preco DECIMAL(5 , 2 ) NOT NULL,
    CONSTRAINT PK_produto PRIMARY KEY (id_produto)
);
    
CREATE TABLE comanda (
    id_comanda INT AUTO_INCREMENT,
    numero INT NOT NULL,
    mesa INT NOT NULL,
    nome_cliente VARCHAR(150),
    data_hora_abertura DATETIME NOT NULL,
    data_hora_fechamento DATETIME,
    CONSTRAINT PK_comanda PRIMARY KEY (id_comanda)
);
  
CREATE TABLE pedido (
    id_pedido INT AUTO_INCREMENT,
    quantidade INT NOT NULL,
    data_hora DATETIME NOT NULL,
    id_produto INT NOT NULL,
    id_comanda INT NOT NULL,
    CONSTRAINT PK_pedido PRIMARY KEY (id_pedido),
    CONSTRAINT FK_pedido_produto FOREIGN KEY (id_pedido)
        REFERENCES produto (id_produto),
    CONSTRAINT FK_pedido_comanda FOREIGN KEY (id_comanda)
        REFERENCES comanda (id_comanda)
);
    
    
    
   insert into produto (nome, descricao, quantidade, preco)
   values ('Chopp Brahma (350ml) (happy hour)', 'Preço válido para as segundas feiras',50,'4.99'),
   ('Camarão Lêdulce 2P ( happy hour ). preço válido para as segundas feiras','Camarões servidos sobre arroz cremoso com ervilhas e presunto, envolvido ao molho branco. Gratinado com queijos mussarela. Acompanha batata palha','50', '74.9'),
   ('Chopp Brahma (360ml)', '(happy hour)',50,'6.9'),
   ('Cozumel',' ( happy hour )',99,'50'),
   ('Caipirinha de Limão',' ( happy hour )',70,'9.9'),
   ('GT Clássico ( happy hour )','Gin, limão siciliano, alecrim, tônica',80,'19.9'),
   ('Soda Italiana ( happy hour )','Maçã verde, tangerina e granadine',70,'16.9'),
   ('Cerveja spaten 600ml',' (Happy hour)',70,'9.9'),
   ('Carpaccio com molho de mostarda (Happy hour)','Lâminas de lagarto com molho de mostarda, rúcula, parmesão ralado - Acompanha torradinhas',90,'39.9'),
   ('Cerveja Original (600ML) ( happy hour )','Proibido ser servida em balde com gelo.Consumo no local.',70, '9.9'),
   ('Camarão crocante c/ alho ( happy hour )','Camarões com casca fritos e servidos com alho e limão.',80, '69.9'),
   ('Croquete de queijo e bacon ( happy hour )','8 unidades.',45, '34.9'),
   ('Pastéis LêDulce  ( Carne ou queijo) ( happy hour )','8 UNIDADES', 60, '34.9'),
   ('Frango a passarinho ( happy hour )','Cortes de frango fritos, servidos com alho e cebola crispy.',74, '39.9'), 
   ('Filé a milanesa c/ batatas fritas.',' ', 85,'89.9'),
   ('Isca de tilápia ( happy hour )','Iscas de tilápia empanadas na farinha Panko. Acompanha molho da casa.',90, '49.9'),
('Strogonoff de Frango','',60, '34.9'),
('Parmegiana de Frango','',50, '39.9'),
('Parmegiana de Filé','',70,'49.9'),
('Picanha','',80,'69.9'),
('Salmão','',60,'69.9'),
('Filé de Frango','',70, '34.9'),
('Tilápia','',98,'42.9'),
('Picanha Suína','',75,'39.9'),
('Contra-Filé ','',99,'49.9'),
('Ancho ','',99,'49.9'),
('Carne de Sol','',70,'44.9'),
('Camarão caipira','Camarão com bacon e milho ao molho branco. ',78,'47.9'),
('Strogonoff de Camarão','',80,'47.9'),
('Parmegiana de Tilápia','',88,'44.9'),
('Tilápia ao molho de Camarões','',60,'54.9'),
('Picadinho de Filé Mignon','',78,'45.9'),
('Rodízio  R$89,90 por pessoa','',88,'89.9'),
('Carpaccio com molho de mostarda','Lâminas de lagarto com molho de mostarda, rúcula, parmesão ralado - Acompanha torradinhas.',78,'49.9'),
('Small de frios','Tábua de frios com queijo provolone, presunto, salame, tomates cereja, azeitonas e palmito.',90,'49.9'),
('Ceviche de Tilápia ','Cubos de tilápia marinados no suco de limão, suco de laranja , temperados com pimentões coloridos, cebola roxa, pimenta dedo de moça, leite de coco e coentro.',89,'39.9'),
('Escondidinho de camarão ','',87,'39.9'),
('Escondidinho de carne seca','',86,'29.9'),
('Carta fechada  (8 unid)','Pastéis recheados com linguiça mineira, queijo e couve. Servidos com geleia de pimenta.',87,'45.9'),
('Pastéis de Camarão - 8 unidades','Pastéis recheados com creme de camarão ',86,'49.9'),
('Pastéis LêDulce - 8 unidades','Carne ou queijo acompanhado de maionese defumada.',78,'44.9'),
('Arancini de Camarão. (6 unid)','Bolinho de risoto recheado com camarão e queijo. Servidos com molho de goiabada picante. ',87,'59.9'),
('Croquete de queijo e bacon. (8 unid)','Acompanha molho rose.',89,'39.9'),
('Croc Chicken - 8 unidades','Bolinhos de frango crocantes recheados com queijo cremoso - Acompanha molho barbecue.',97,'44.9'),
('Bolinho de Bacalhau','10 unidades de bolinho de bacalhau acompanhado de molho tártaro.',88,'59.9'),
('Isca de Tilápia','Iscas de peixe empanadas, acompanha molho tártaro.',86,'59.9'),
('Isca de Frango','Iscas de Frango empanadas, acompanha molho da casa.',65,'49.9'),
('Torresminho c mandioca ','',75,'49.9'),
('Batata Frita com Cheddar e Bacon','',89,'39.9'),
('Batata Frita com Filé Mignon','Batata frita com 150gr de filé mignon com molho especial de queijo',86, '49.9'),
('Batata Frita Tradicional com Ketchup','',89,'35.9'),
('Camarão Alho e Óleo S/Casca','',89, '89.9'),
('Carne de Sol com Mandioca','',89,'119.9'),
('Picanha com Mandioca','500gr de picanha em bife com mandioca cozida ou frita ',86,'159.9'),
('Costelinha Suína','Baby ribs ao molho barbecue acompanhado de batata rústica.',99,'69.9'),
('Steack angus c/ manteiga de café de paris','Steak angus ( steaks do coração da paleta ) grelhados servidos sob manteiga de ervas. Acompanha arroz a lionese (cebola juliene, ervilha e salsinha) e batatas fritas.',89,'159.9'),
('Filé ao alho com brócolis','Filé mignon grelhado, acompanhado de brócolis, banana empanada e  batatas rústicas.',65,'129.9'),
('Filé ao molho de Gorgonzola','Filé Mignon ao molho de queijo gorgonzola. Acompanha arroz de brócolis e batata frita',99,'139.9'),
('Filet au Poivre','Filé regado ao molho de pimenta acompanhado de arroz piamontese e batatas gratinadas.',98,'129.9'),
('Escalope de filé ao molho de vinho','Escalope de filé grelhado, regado ao molho de vinho. Servido com talharim ao molho Alfredo ( creme de leite, parmesão e raspas de limão siciliano )',86,'149.9'),
('Medalhão de Filé ao molho mostarda','Medalhões de filé mignon envoltos em bacon, regados com molho de mostarda e servidos com arroz branco e batatas recheadas.',87,'139.9'),
('Medalhão de filé ao molho fungi','Medalhões de filé envoltos no bacon, regados ao molho fungi. Servidos com risoto de parmesão.',75,'159.9'),
('Parmê da Lê de Filé','Acompanha arroz e fritas.',86,'99.9'),
('Parmê da Lê de Frango','Acompanha arroz e fritas.',77,'89.9'),
('Frango à Kiev','Frango empanado, recheado com queijo e presunto acompanhado\r\nde arroz cremoso com açafrão e batata chips',86,'89.9'),
('Frango crocante','Filé de frango grelhado em crosta de pão, servido sobre cama de creme de brócolis e gorgonzola. Acompanha espaguete ao molho de sálvia.',92,'99.9'),
('Carne de sol cremosa','Carne de sol desfiada ao molho bechamel sobre arroz de leite com cubos de queijo coalho e gratinada .',95,'89.9'),
('Bacalhau à Moda do Chefe','Bacalhau grelhado servido com a cama de pimentões, purê de batata acompanhado de arroz de alho.',85,'159.9'),
('Salmão ao molho de amêndoas','Salmão grelhado e regado ao molho de amêndoas. Acompanha risoto de parmesão e legumes salteados.',77,'159.9'),
('Peixe a Belle Meunièrie','Peixe grelhado servido com molho à Belle Meunière acompanhado de arroz com brócolis e purê de batatas.',86,'159.9'),
('Peixe à delícia','Peixe grelhado servido ao molho bechamel, banana frita e gratinado com queijo. acompanha Arroz branco e purê de batatas.',87,'119.9'),
('Pirarucu ao molho de Alcaparras','Pirarucu grelhado ao molho de alcaparras,  servido com arroz de leite de Coco e salada.',89,'109.9'),
('Bacalhau à Gomes de Sá','Lascas de bacalhau refogadas no azeite acrescidos com alho, cebola, azeitonas pretas, batata e ovo.  Acompanha arroz branco.',88,'139.9'),
('Salmão Grelhado','Salmão grelhado com molho de maracujá e mix de legumes grelhados.',79,'179.9'),
('Peixe do sertão','Pescada amarela grelhada, gratinada com queijo coalho e rapadura. Servido com baião de dois cremoso e purê de batatas.',95,'149.9'),
('Peixe grelhado','Pescada amarela grelhada, servida com arroz com brócolis e purê de batatas.',86,'109.9'),
('Anchova assada a moda do chef','Anchova assada, regada ao molho de uvas, alcaparras e champignon. Servido com Arroz de amêndoas e legumes salteados.',81,'139.9'),
('Robalo ao molho de manga','Filé de robalo empanado com gergelim, servido sobre molho de manga. Acompanha arroz a grega e batata chips.',68,'139.9'),
('Moqueca LêDulce de Filé de Peixe','Acompanha arroz branco e pirão.',69,'169.9'),
('Moqueca à brasileira','Moqueca de filé de pescada amarela, com repolho, batata, cenoura e ovos cozidos. Servida com arroz branco e pirão.',49,'149.9'),
('Moqueca de robalo','Moqueca de posta de robalo com pimentões, cebola, tomate, leite do coco e dendê. Acompanha arroz branco e pirão.',84,'139.9'),
('Camarões na abóbora','Camarões refogados com pimentões, cebola, tomate e creme de abóbora. Servido com arroz de brócolis e purê de batatas.',75,'129.9'),
('Camarões no coco','Camarões refogados com tomates, cebola, leite de coco e molho bechamel, servidos no próprio coco. Acompanha Arroz branco e batatas sauté.',56,'129.9'),
('Camarão ao alho poró','Filé de camarão refogado com alho poró, champignon,  vinho branco e molho bechamel. Acompanha arroz branco e batata chips.',85,'99.9'),
('Paella','Camarões, Lula, Peixe, Polvo, Mexilhões com e sem casca.',68,'229.9'),
('Mix de Frutos do Mar Grelhados','Mexilhão sem casca, Camarões, Lula, Cauda de Lagosta, Filé de peixe, Polvo, Mexilhões com casca, Tomate. Acompanha arroz apimentado.',87,'249.9'),
('Flat iron','O flat iron vem da região do ombro do boi, também conhecida como paleta, e é conhecido pela sua maciez e sabor incrível. Paleta fina, sem gordura* Escolha 2 guarnições.',68, '59.9'),
('Carne de Sol','',55,'49.95'),
('Arroz Biro Biro','',50,'9.9'),
('Arroz Piamontese','',90,'9.9'),
('Farofa de Ovos','',87,'9.9'),
('Feijão Tropeiro','',88, '9.9'),
('Feijão Carioca','',87,'9.9'),
('Mandioca','',50,'9.9'),
('Batata Frita','',88,'9.9'),
('Purê de Batatas','',77,'9.9'),
('Legumes Salteados','',88,'9.9'),
('Salada Juliana','Alface americana, cenoura, tomate, palmito, batata palha, queijo\r\nparmesão e molho de mostarda, maionese e mel.',87,'29.9'),
('Salada LêDulce','Folhas de rúcula, alface americana, lascas de frango defumado, nozes e molho ‘’da chefe’’ com azeite, mostarda, limão, sal e parmesão ralado.',87,'34.9'),
('Salada tropical com camarões','Mix de folhas, cenoura, tomate cereja, abacaxi grelhado, castanha de caju, camarões grelhados e molho de mostarda e mel.',87,'45.9'),
('Talharim LêDulce','Talharim a carbonara. Alérgicos: contém ovo e bacon.',87,'39.9'),
('Espaguete com camarões ao sugo','',87,'49.9'),
('Espaguete com camarões ao molho branco','',98,'49.9'),
('Risoto de Filé','',50,'49.9'),
('Risoto de Camarão','',77,'59.9'),
('Risoto de carne de sol','',87,'45.9'),
('Polvo ao molho pesto c/ risoto negro','Tentáculos de polvo grelhados e regados ao molho pesto de manjericão. Acompanha risoto negro de parmesão.',77,'89.9'),
('Risoto camarão ao alho poró','',89,'59.9'),
('LêDulcinha de Frango','Filezinho de frango empanado, arroz branco, feijão carioca e fritas.',98,'29.9'),
('LêDulcinha de Carne','Filezinho de mignon, arroz branco, feijão carioca e fritas)',50,'29.9'),
('LêDulcinha de Massa','Espaguetinho ao molho sugo com carne moída.',87,'29.9'),
('ESPAGUETE DE ABOBRINHA AO MOLHO SUGO DE CASA E CRÓTONS DE CARNE DE SOJA','',87, '29.9'),
('LASANHA DE BERINJELA COM PALMITO','',87,'29.9'),
('Churros com Doce de Leite','',87,'29.9'),
('Cocada LêDulce com sorvete','',77,'24.9'),
('Cheesecake de frutas vermelhas','Torta de queijo e calda de frutas vermelhas.',87,'29.9'),
('Pudim','Pudim de leite condensado',87,'14.9'),
('Suspiro Lêdulce','Creme de ninho em camadas com geleia de morango e suspiros.',77,'29.9'),
('Petit Gatêau de Chocolate','Bolinho cremoso de chocolate acompanhado de sorvete de creme.',87,'24.9'),
('Baked gelaska','Sorvete de creme recheado com geleia de morango e merengue suíço flamejado no topo.',89,'25.9'),
('Refrigerantes','',88,'7.9'),
('Suco Detox','Couve com Laranja e Gengibre (500ML) Abacaxi, Água de coco e Hortelã 500ML', 86,'15.9'),
('Soda Italiana','Frutas Vermelhas, Maçã Verde ou Tangerina',99, '22.9'),
('Água com gás','',99, '7.9'),
('Água sem gás','',88,'6.9'),
('Água de Côco','',77,'9.9'),
('Água Tônica','',87,'7.9'),
('Schweppes Citrus','',85,'7.9'),
('Café Expresso','',89,'5.9'),
('H2O / H2O Limoneto','',89, '9.9'),
('Amstel','',87, '14.9'),
('Antárctica Original','',87, '14.9'),
('Brahma Duplo Malte','',89,'14.9'),
('Budweiser','',87,'14.9'),
('Stella Artois','',90,'15.9'),
('Heineken','',89,'17.9'),
('Chopp Brahma (350ML)','',87,'10.9'),
('Cervejas 0,00 Álcool','',87, '11.9'),
('Preparo do Cozumel','',87, '10.9'),
('Limão Espremido','',98, '2.9'),
('Budweiser','',88, '11.9'),
('Corona Extra','',90,'12.9'),
('Heineken','',77,'11.9'),
('Stella Artois','',54,'11.9'),
('Pina Colada','Rum Bacardi, purê de côco e suco de abacaxi',99,'23.9'),
('Mojito Clássico','Rum Bacardi xarope simples, hortelã, suco de limão e água com gás',87,'22.9'),
('Cozumel','375 ml cerveja ou chopp, suco de limão, gelo e sal na borda do copo',75,'21.9'),
('Cuervo Margarita','Tequila, licor Cointreau , suco de limão',66,'23.9'),
('Aperol Spritz','Aperol, Espumante, Laranja,bahia, água com gás',56,'27.9'),
('Refresco','Monin Gengibre, suco limão, Monin maça verde, Agua com gás, rodelas limão siciliano',75,'19.9'),
('GT Red','Monin cranberry, hibisco desidratado, limão siciliano, tônica',45,'19.9'),
('Verão','Monin chá verde, Monin cranberry, rodela limão taiti, água com gás',45,'19.9'),
('Caipirinha','Limão, Abacaxi, Abacaxi c/ Hortelã, Frutas Vermelhas, Morango, Maracujá, Cítrico*, Cajú*, Cajá*, Jabuticaba**Verificar Disponibilidade',88,'19.9'),
('Sake','',88,'19.9'),
('Arco Íris','Sorvete morango, amora, leite, calda blue, leite condensado',77,'19.9'),
('Negroni','Gin, vermouth rosso, campari e laranja',54,'27.9'),
('TriLêgal','Tequila, cointreau, limão, cranberry, curaçau blue e maçã verde.',78,'25.9'),
('Clericot','Espumante rosê, suco de laranja, cranberry, morango e maçã verde.',66,'24.9'),
('Snow','Tequila, suco de limão, curaçau blue e licor fino de pêssego.',75,'25.9'),
('Rose','Rum, suco de limão e xarope de toranja.',75,'24.9'),
('Lemon ','Energético monster ice tea lemon, xarope de maçã verde, sumo de limão, alecrim.',55,'30.9'),
('Peach','Energético monster ice tea peach, melaço de cana, sumo de limão',45,'24.9'),
('Caipirinha do sertão ','Caipirinha feita com cachaça 51, limão e rapadura.',78,'22.9'),
('Campari','',58,'11.9'),
('Martini Bianco','',74,'11.9'),
('Rum Bacardi','',75,'11.9'),
('Tequilo Jose Cuervo Especial GOLD','',87,'18.9'),
('Tequilo Jose Cuervo Especial SILVER','',54,'18.9'),
('Cachaça São Francisco','',99,'9.9'),
('Cachaça Seleta','',75,'9.9'),
('Cachaça de Banana','',75,'10.9'),
('Cachaça Germana','',48,'14.9'),
('Cachaça Vale Verde','',75,'13.9'),
('Cachaça Sagatiba','',45,'9.9'),
('Cachaça ParaTudo','',27,'7.9'),
('Chivas Regal','',78,'22.9'),
('Jack Daniel s','',45,'22.9'),
('Johnnie Walker Black Label','',88,'24.9'),
('Johnnie Walker Red Label','',77,'19.9'),
('Old Parr','',55,'22.9'),
('Absolut','',78,'19.9'),
('Smirnoff','',55,'14.9'),
('Tanqueray','',47,'20.9'),
('Amarula','',87,'19.9'),
('Cointreau','',88,'19.9'),
('Licor 43','',78,'19.9'),
('Red Bull','',66,'15.9'),
('Combo Smirnoff + 6 red bull','',88,'179.9'),
('Combo Absolut + 6 red bull','',78,'249.9'),
('Combo Tanqueray + 6 red bull','',66,'299.9'),
('Combo Chivas + 6 red bull','',55,'349.9'),
('Combo Old par + 6 red bull','',57,'349.9'),
('Combo Jack Daniels + 6 red bull','',62,'349.9'),
('Combo Red Label + 6 red bull','',74,'269.9');



insert into comanda (numero, mesa, data_hora_abertura)
values (floor(rand()*100)+1,floor(rand()*60)+1,now());

set @max_comanda = (select count(*) from comanda);
set @max_produto = (select count(*) from produto);

insert into pedido(data_hora, id_produto, id_comanda, quantidade)
values (now(),floor(rand()*@max_produto)+1, floor(rand()*@max_comanda)+1,floor(rand()*5)+1);

select * from pedido;
select * from produto;


-- Consultar o cardápio completo

select 
	nome as Produto,
    descricao as 'Descrição',
    preco as 'Preço'
from 
	produto;


-- Listar todas as comandas abertas

select
	*
from
	comanda;

-- Obter o histórico de pedidos realizados

select
	*
from
	pedido;
    
-- Verificar quais pratos foram pedidos em uma determinada comanda.

select 
	id_pedido as 'Pedido',
    id_comanda 'Comanda',
    nome as 'Pedido',
    preco as 'Preço' 
from
	pedido
inner join produto on produto.id_produto = pedido.id_produto
order by id_comanda asc;

-- Calcular o total gasto por cada comanda

select 
	id_comanda as 'Comanda',
    nome as 'Produto',
    pedido.quantidade as 'Quantidade',
    preco as 'Valor Unitário',
	pedido.quantidade * preco as 'Valor Total'
from
	pedido
inner join produto on produto.id_produto = pedido.id_produto
order by Comanda asc;

-- Identificar qual prato foi o mais pedido e quantas vezes ele foi solicitado
select
	count(nome) as 'Quantidade',
    nome as 'Produto'
from
	pedido
inner join produto on produto.id_produto = pedido.id_produto
group by nome
order by Quantidade desc;



