create database ecommerce;
use ecommerce;

create table cliente(
	id_cliente bigint unsigned primary key auto_increment,
    nome varchar(100) not null,
    endereco varchar(100) not null,
    email varchar(100) not null,
    cell bigint not null,
    data date not null
);
create table produto(
	id_produto bigint unsigned primary key auto_increment, 
    nome varchar(100) not null,
    preco decimal (9,2) not null,
    descricao varchar(200) not null,
    qt_estoque int not null
);

create table pedidos(
	id_pedidos bigint primary key auto_increment,
    id_cliente bigint,
    foreign key (id_cliente) references cliente(id_cliente),
    n_pedido bigint not null,
    dt_compra date not null,
    dt_entrega datetime not null,
    v_t decimal (9,2) not null
);

create table itens(
	id_itens bigint primary key auto_increment,
    id_produtos bigint,
    id_produto bigint,
    foreign key (id_pedidos) references pedidos(id_pedidos),
    foreign key (id_produto) references produto(id_produto),
    qt int not null,
    valor_u decimal(9,2),
    v_t decimal(9,2)
);