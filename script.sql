CREATE DATABASE db_conta_azul;
USE db_conta_azul;


/** Tabela de Usuarios **/
    CREATE TABLE tb_users (
        id INT PRIMARY KEY AUTO_INCREMENT,
        id_company INT NOT NULL,
        email VARCHAR(50) NOT NULL,
        password VARCHAR(32) NOT NULL,
        id_group INT NOT NULL
    );

/** Tabela de Grupos Permissões **/
    CREATE TABLE tb_permission_group (
        id INT PRIMARY KEY AUTO_INCREMENT,
        id_company INT NOT NULL,
        name VARCHAR(50) NOT NULL,
        params VARCHAR(200) NOT NULL
    );

/** Tabela de Permissões **/
    CREATE TABLE tb_permission_params (
        id INT PRIMARY KEY AUTO_INCREMENT,
        id_company INT NOT NULL,
        name VARCHAR(50) NOT NULL
    );

/** Tabela de Informações do Cliente OK **/
    CREATE TABLE tb_clients (
        id INT PRIMARY KEY AUTO_INCREMENT,
        id_company INT NOT NULL,
        name VARCHAR(100) NOT NULL,
        email VARCHAR(100),
        phone VARCHAR(50),
        address VARCHAR(100),
        address_neighb VARCHAR(100),
        address_city VARCHAR(50), 
        address_state VARCHAR(50),
        address_country VARCHAR(50),
        address_zipcode VARCHAR(50),
        stars INT NOT NULL DEFAULT 3,
        internal_obs TEXT
    );

/** Tabela Informações de estoque OK **/
    CREATE TABLE tb_inventory (
        id INT PRIMARY KEY AUTO_INCREMENT,
        id_company INT NOT NULL,
        name VARCHAR(100) NOT NULL,
        price FLOAT NOT NULL,
        quant INT NOT NULL,
        min_quant INT NOT NULL
    );

/** Tabela Informações Historico Estoque OK **/
    CREATE TABLE tb_inventory_history (
        id INT PRIMARY KEY AUTO_INCREMENT,
        id_company INT NOT NULL,
        id_product INT NOT NULL,
        id_user INT NOT NULL,
        action VARCHAR(3) NOT NULL,
        date_action DATETIME NOT NULL
    );

/** Tabela de Informações de Vendas **/
    CREATE TABLE tb_sales (
        id INT PRIMARY KEY AUTO_INCREMENT,
        id_company INT NOT NULL,
        id_client INT NOT NULL,
        id_user INT NOT NULL,
        date_sale DATETIME NOT NULL,
        total_price FLOAT NOT NULL
    );


/** Tabela de Informações da Venda ( Referente produto )  **/
    CREATE TABLE tb_sales_products (
        id INT PRIMARY KEY AUTO_INCREMENT,
        id_company INT NOT NULL,
        id_sale INT NOT NULL,
        id_product INT NOT NULL,
        quant INT NOT NULL,
        sale_price FLOAT NOT NULL
    );


/** Tabela de Informações Compras  **/
    CREATE TABLE tb_purchases (
        id INT PRIMARY KEY AUTO_INCREMENT,
        id_company INT NOT NULL,
        id_user INT NOT NULL,
        date_purchase DATETIME NOT NULL,
        total_price FLOAT NOT NULL
    );

/** Tabela de Informações Compras ( Referente Produtos ) **/
    CREATE TABLE tb_purchases_products (
        id INT PRIMARY KEY AUTO_INCREMENT,
        id_company INT NOT NULL,
        id_purchase INT NOT NULL,
        name VARCHAR(100) NOT NULL,
        quant INT NOT NULL,
        purchase_price FLOAT NOT NULL
    );

/** Tabela de Informações Empresas ( SaaS ) **/
    CREATE TABLE tb_companies (
        id INT PRIMARY KEY AUTO_INCREMENT,
        name VARCHAR(100) NOT NULL
    );

/** Inserindo Registro de Usuario **/
INSERT INTO tb_users ( 
        id_company, 
        email, 
        password, 
        id_group 
) VALUES ( 
    1, 
    'allan.cdev@gmail.com', 
    MD5('123'), 
    0
);

/** Inserindo Registro de Empresa **/
INSERT INTO tb_companies ( 
    name
) VALUES ( 
    'DigitalSmartBR' 
);