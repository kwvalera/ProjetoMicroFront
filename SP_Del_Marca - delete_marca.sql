-- delete marca pelo site adm

SET delimiter //
CREATE PROCEDURE SP_Del_Marca(
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
		DELETE FROM Marca WHERE id_marca = xid_marca;
		SET message = 'Marca deletada com sucessso';
	END IF;
END//

SET delimiter ;