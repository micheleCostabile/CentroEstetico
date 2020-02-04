CREATE DEFINER=`root`@`localhost` FUNCTION `appDisp`(dataa date,oraapp time,durataapp int,maccA int) RETURNS tinyint(1)
    DETERMINISTIC
begin
	if not exists(select nome from sala where salaDisp(nome,dataa,oraapp,durataapp))
    then return false;
    
    else if maccA is not null 
    
    then 
	if not exists(select codM from macchinario where maccA=codM and salaDisp(nomesala,dataa,oraapp,durataapp))
    then return false;
    
    else if not exists(select CFestetista from utilizzo where codMacchinario=maccA and estDisp(CFestetista,dataa,oraapp,durataapp))
    then return false;
    
	end if;
    end if;
    end if;
    end if;
    return true;
    end