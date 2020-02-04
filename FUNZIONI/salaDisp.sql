CREATE DEFINER=`root`@`localhost` FUNCTION `salaDisp`(nomes varchar(10),dataa date,oraapp time,durataapp int) RETURNS tinyint(1)
    DETERMINISTIC
begin
	declare tempD int default 0;
    while tempD < durataapp
    do 
    if not exists(select nome from sala where nomes=nome and nome not in(select nomesala from appuntamento where (addtime(oraapp,sec_to_time(tempD*60)) between Ora and addtime(Ora,sec_to_time((durata-1)*60)))and dataa=dataapp))
    then return false;
    end if;
    set tempD=tempD +30;
    end while;
    return true;
end