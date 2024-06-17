-- insert marca pelo site adm

SET delimiter //
CREATE PROCEDURE SP_Ins_Marca(
    IN xnome_marca varchar(20),
    IN xdescricao_marca varchar(100),
    IN xurl_marca varchar(100),
    OUT message varchar(50)
)

BEGIN 
  -- verificar se a marca já existe
	IF (EXISTS (SELECT nome_marca FROM Marca 
						WHERE nome_marca = xnome_marca))
	THEN
		SET message = 'Essa marca já existe no banco de dados';
	ELSE
		INSERT INTO Marca (nome_marca, descricao_marca, url_marca)
					VALUES(xnome_marca, xdescricao_marca, xurl_marca);
		SET message = 'Marca inserida com sucessso';
	END IF;
END//

SET delimiter ;