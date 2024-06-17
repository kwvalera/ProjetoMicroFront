-- update (flag para 0 - retira do site) marca pelo site adm

SET delimiter //
CREATE PROCEDURE SP_Upd_Flag_Marca_Retira(
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
		UPDATE Marca SET flag = 0 WHERE id_marca = xid_marca;
		SET message = 'Marca retirada da lista do banner do site com sucessso';
	END IF;
END//

SET delimiter ;