-- update (flag para 1 - aparece no site) marca pelo site adm

SET delimiter //
CREATE PROCEDURE SP_Upd_Flag_Marca(
    IN xid_marca INT,
    OUT message varchar(50)
)

BEGIN 
  -- verificar se a marca já existe
	IF (NOT EXISTS (SELECT id_marca FROM Marca 
						WHERE id_marca = xid_marca))
	THEN
		SET message = 'Essa marca NÃO existe no banco de dados';
	ELSE
		UPDATE Marca SET flag = 1 WHERE id_marca = xid_marca;
		SET message = 'Marca adicionada a lista do banner do site com sucessso';
	END IF;
END//

SET delimiter ;