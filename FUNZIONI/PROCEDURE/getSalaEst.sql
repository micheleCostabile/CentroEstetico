CREATE DEFINER=`root`@`localhost` PROCEDURE `getSalaEst`(macc INT UNSIGNED, dataa DATE, oraapp TIME, durataapp INT UNSIGNED, OUT resultS varchar(255),  OUT resultEst char(16))
BEGIN
			IF macc is not null
            THEN 
				select(SELECT nomesala 
				FROM macchinario
				WHERE( macc = codM and salaDisp(nomesala,dataa,oraapp,durataapp))
                limit 1)  as result into resultS;
                
			    select(SELECT cfEstetista
                        FROM (Utilizzo INNER JOIN macchinario ON utilizzo.codMacchinario=macchinario.codM)
                        WHERE macchinario.codM= macc AND estDisp(cfEstetista,dataa,oraapp,durataapp)
	                    limit 1) as result2 into resultEst;
			else
                select(SELECT nomeSala 
				FROM macchinario
				WHERE(salaDisp(nomesala,dataa,oraapp,durataapp))
                limit 1)  as result into  resultS;
                
			    select(SELECT CF
                        FROM Estetista
                        WHERE estDisp(CF,dataa,oraapp,durataapp)
	                    limit 1) as result2 into resultEst;
			end if;
END