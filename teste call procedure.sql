SET @message = '';

CALL SP_Ins_Marca('MarcaTeste', 'Descrição da Marca', 'http://url.marca.com', @message);

SELECT @message;

SET @message = '';

CALL SP_Del_Marca(2, @message);

SELECT @message;

SET @message = '';

CALL SP_Upd_Flag_Marca(3, @message);

SELECT @message;

SET @message = '';

CALL SP_Upd_Flag_Marca_Retira(3, @message);

SELECT @message;

SELECT * FROM Marca;

