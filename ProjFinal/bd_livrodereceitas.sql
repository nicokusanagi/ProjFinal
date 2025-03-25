CREATE SCHEMA IF NOT EXISTS `livro_de_receita` DEFAULT CHARACTER SET utf8 ;

USE `livro_de_receita` ;

CREATE TABLE IF NOT EXISTS `livro_de_receita`.`tb_receitas` (
  `id_receita` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `descricao` TEXT NOT NULL,
  `tempo_preparo` INT NOT NULL,
  `rendimento` INT NOT NULL,
  `ingredientes` TEXT NOT NULL,
  `modo_preparo` TEXT NOT NULL,
  
  PRIMARY KEY (`id_receita`))
  
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;