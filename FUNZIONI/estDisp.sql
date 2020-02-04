CREATE DEFINER=`root`@`localhost` FUNCTION `estDisp`(CFes char(16),dataa date,oraapp time,durataapp int) RETURNS tinyint(1)
    DETERMINISTIC
begin
	declare tempD int default 0;
    while tempD<durataapp
    do
    if not exists(select CF from estetista where CFes=CF and 
				(oraapp between oraStart and oraEnd) and CF not in(select CFest from appuntamento 
																				where(addtime(oraapp,sec_to_time(tempD*60)) between Ora and addtime(Ora,sec_to_time((durata-1)*60)))and dataa=dataapp))
    then return false;
    end if;
    set tempD= tempD+30;
    end while;
    return true;
end