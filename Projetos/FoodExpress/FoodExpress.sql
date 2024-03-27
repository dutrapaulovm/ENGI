-- Exclui o banco de dados
DROP SCHEMA IF EXISTS ifooddb;

-- Criar o banco de dados
CREATE SCHEMA IF NOT EXISTS ifooddb  DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE ifooddb;

-- -----------------------------------------------------
-- Table `ifooddb`.`estado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifooddb`.`estado` (
  `EstadoID` INT(11) NOT NULL AUTO_INCREMENT,  
  `UFIBGE` VARCHAR(2) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL DEFAULT '',
  `UF` VARCHAR(2) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL DEFAULT '',
  `Nome` VARCHAR(200) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL DEFAULT '',
   PRIMARY KEY (`EstadoID`),
   UNIQUE INDEX `UF_UNIQUE` (`UF`),
   UNIQUE INDEX `UFIBGE_UNIQUE` (`UFIBGE`))
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

-- -----------------------------------------------------
-- Table `ifooddb`.`cidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifooddb`.`Cidade` (
  `CidadeID` INT(11) NOT NULL AUTO_INCREMENT,
  `IBGE` VARCHAR(10) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL DEFAULT '',
  `Nome` VARCHAR(200) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL DEFAULT '',
   PRIMARY KEY (`CidadeID`),  
   UNIQUE INDEX `IBGE_UNIQUE` (`IBGE`))
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

-- -----------------------------------------------------
-- Table `ifooddb`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifooddb`.`usuarios` (
  `UsuarioID` INT(11) NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(200) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL DEFAULT '',
  `NomeUsuario` VARCHAR(80) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL DEFAULT '',
  `Email` VARCHAR(150) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL DEFAULT '',
  `Senha` VARCHAR(256) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL DEFAULT '',
  `CPF` VARCHAR(11) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL DEFAULT '',
  `Endereco` VARCHAR(200) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL DEFAULT '',
  `Numero` VARCHAR(10) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL DEFAULT '',
  `Cep` VARCHAR(50) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL DEFAULT '',
  `CidadeID` INT(11) NOT NULL,
  `Cidade` VARCHAR(200) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL DEFAULT '',
  `EstadoID` INT(11) NOT NULL,
  `UF` VARCHAR(2) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL DEFAULT '',
  `Telefone` VARCHAR(50) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL DEFAULT '',
  `Celular` VARCHAR(50) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL DEFAULT '',
  `DataNas` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`UsuarioID`),
  UNIQUE INDEX `Email_UNIQUE` (`Email`),
  UNIQUE INDEX `CPF_UNIQUE` (`CPF`),  
  CONSTRAINT `fk_usuarios_cidade`
    FOREIGN KEY (`CidadeID`)
    REFERENCES `ifooddb`.`cidade` (`CidadeID`)
    ON DELETE CASCADE,
CONSTRAINT `fk_usuarios_estado`
    FOREIGN KEY (`EstadoID`)
    REFERENCES `ifooddb`.`estado` (`EstadoID`)
    ON DELETE CASCADE)
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

-- -----------------------------------------------------
-- Table `ifooddb`.`restaurantes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifooddb`.`restaurantes` (
  `RestauranteID` INT(11) NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(100) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL DEFAULT '',
  `Descricao` VARCHAR(3000) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL DEFAULT '',
  `Endereco` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL DEFAULT '',
  PRIMARY KEY (`RestauranteID`))
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

-- -----------------------------------------------------
-- Table `ifooddb`.`pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifooddb`.`pedidos` (
  `PedidoID` INT(11) NOT NULL AUTO_INCREMENT,
  `NumeroPedido` VARCHAR(100) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL DEFAULT '',
  `UsuarioID` INT(11) NOT NULL,
  `RestauranteID` INT(11) NOT NULL,
  `Status` VARCHAR(5) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL DEFAULT '',
  `DataHora` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`PedidoID`),
  INDEX `UsuarioID` (`UsuarioID`),
  INDEX `RestauranteID` (`RestauranteID`) ,
  UNIQUE INDEX `NumeroPedido_UNIQUE` (`NumeroPedido`),
  CONSTRAINT `fk_pedidos_usuarios`
    FOREIGN KEY (`UsuarioID`)
    REFERENCES `ifooddb`.`usuarios` (`UsuarioID`)
    ON DELETE CASCADE,
  CONSTRAINT `fk_pedidos_restaurantes`
    FOREIGN KEY (`RestauranteID`)
    REFERENCES `ifooddb`.`restaurantes` (`RestauranteID`)
    ON DELETE CASCADE)
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

-- -----------------------------------------------------
-- Table `ifooddb`.`avaliacoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifooddb`.`avaliacoes` (
  `AvaliacaoID` INT(11) NOT NULL AUTO_INCREMENT,
  `PedidoID` INT(11) NOT NULL,
  `Nota` INT(11) NOT NULL DEFAULT '0',
  `CriandoEm` DATETIME NOT NULL DEFAULT current_timestamp,
  `RemovidoEm` DATETIME NULL,
  `likesCount` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `Comentario` VARCHAR(3000) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL DEFAULT '',
  PRIMARY KEY (`AvaliacaoID`),
  INDEX `PedidoID` (`PedidoID`),
  CONSTRAINT `fk_avaliacoes_pedidos`
    FOREIGN KEY (`PedidoID`)
    REFERENCES `ifooddb`.`pedidos` (`PedidoID`)
    ON DELETE CASCADE)
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `ifooddb`.`categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifooddb`.`categorias` (
  `CategoriaID` INT(11) NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(50) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL DEFAULT '',
  PRIMARY KEY (`CategoriaID`))
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

-- -----------------------------------------------------
-- Table `ifooddb`.`enderecos_entrega`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifooddb`.`enderecos_entrega` (
  `EnderecosID` INT(11) NOT NULL AUTO_INCREMENT,
  `UsuarioID` INT(11) NULL DEFAULT NULL,
  `Endereco` VARCHAR(600) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL DEFAULT '',
  `Numero` VARCHAR(10) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL DEFAULT '',
  `Cep` VARCHAR(50) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL DEFAULT '',
  `uf` VARCHAR(2) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL DEFAULT '',
  `cidade` VARCHAR(100) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL DEFAULT '',
  PRIMARY KEY (`EnderecosID`),
  INDEX `UsuarioId` (`UsuarioID`),
  CONSTRAINT `fk_enderecos_entrega`
    FOREIGN KEY (`UsuarioID`)
    REFERENCES `ifooddb`.`usuarios` (`UsuarioID`)
    ON DELETE CASCADE)
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `ifooddb`.`produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifooddb`.`produtos` (
  `ProdutoID` INT(11) NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(150) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL DEFAULT '',
  `Descricao` VARCHAR(3000) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL DEFAULT '',
  `Preco` DOUBLE PRECISION NOT NULL DEFAULT '0',
  `RestauranteID` INT(11) NOT NULL,
  `CategoriaID` INT(11) NOT NULL,
  PRIMARY KEY (`ProdutoID`),
  INDEX `RestauranteID` (`RestauranteID`),
  INDEX `CategoriaID` (`CategoriaID`),
  CONSTRAINT `fk_produtos_restaurantes`
    FOREIGN KEY (`RestauranteID`)
    REFERENCES `ifooddb`.`restaurantes` (`RestauranteID`)
    ON DELETE CASCADE,
  CONSTRAINT `fk_produtos_categorias`
    FOREIGN KEY (`CategoriaID`)
    REFERENCES `ifooddb`.`categorias` (`CategoriaID`)
    ON DELETE CASCADE)
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

-- -----------------------------------------------------
-- Table `ifooddb`.`estoque`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifooddb`.`estoque` (
  `EstoqueID` INT(11) NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(100) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL DEFAULT '',
  `Descricao` VARCHAR(3000) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL DEFAULT '',
  `Quantidade` DOUBLE PRECISION NOT NULL DEFAULT '0',
  `RestauranteID` INT(11) NOT NULL,
  `ProdutoID` INT(11) NOT NULL,
  PRIMARY KEY (`EstoqueID`),
  INDEX `RestauranteID` (`RestauranteID`),
  INDEX `ProdutoID` (`ProdutoID`),
  CONSTRAINT `fk_estoque_restaurante`
    FOREIGN KEY (`RestauranteID`)
    REFERENCES `ifooddb`.`restaurantes` (`RestauranteID`)
    ON DELETE CASCADE,
  CONSTRAINT `fk_estoque_produtos`
    FOREIGN KEY (`ProdutoID`)
    REFERENCES `ifooddb`.`produtos` (`ProdutoID`)
    ON DELETE CASCADE)
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `ifooddb`.`itenspedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifooddb`.`itenspedido` (
  `ItemID` INT(11) NOT NULL AUTO_INCREMENT,
  `PedidoID` INT(11) NOT NULL,
  `ProdutoID` INT(11) NOT NULL,
  `Quantidade` DOUBLE PRECISION NOT NULL DEFAULT '0',
  `PrecoUnitario` DOUBLE PRECISION NOT NULL DEFAULT '0',
  `Subtotal` DOUBLE PRECISION NOT NULL DEFAULT '0',
  PRIMARY KEY (`ItemID`),
  INDEX `PedidoID` (`PedidoID`),
  INDEX `ProdutoID` (`ProdutoID`),
  CONSTRAINT `fk_itenspedido_pedidos`
    FOREIGN KEY (`PedidoID`)
    REFERENCES `ifooddb`.`pedidos` (`PedidoID`)
    ON DELETE CASCADE,
  CONSTRAINT `fk_itenspedido_produtos`
    FOREIGN KEY (`ProdutoID`)
    REFERENCES `ifooddb`.`produtos` (`ProdutoID`)
    ON DELETE CASCADE)
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;