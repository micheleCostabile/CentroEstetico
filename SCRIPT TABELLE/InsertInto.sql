INSERT INTO cliente(ID,nome,cognome,eta,sesso)
values(0000,"Michele","Costabile",21,"M");
INSERT INTO cliente(ID,nome,cognome,eta,sesso)
values(0001,"Mario","Rossi",40,"M");
INSERT INTO cliente(ID,nome,cognome,eta,sesso)
values(0002,"Anna","Bianchi",35,"F");
INSERT INTO cliente(ID,nome,cognome,eta,sesso)
values(0003,"Alessandra","Verdi",17,"F");
INSERT INTO cliente(ID,nome,cognome,eta,sesso)
values(0004,"Angela","Rossi",38,"F");
INSERT INTO cliente(ID,nome,cognome,eta,sesso)
values(0005,"Giovanni","Bianchi",33,"M");
INSERT INTO cliente(ID,nome,cognome,eta,sesso)
values(0006,"Gerarda","Franceschi",24,"F");
INSERT INTO cliente(ID,nome,cognome,eta,sesso)
values(0007,"Maria","Rossi",58,"F");
INSERT INTO cliente(ID,nome,cognome,eta,sesso)
values(0008,"Gianluca","Penna",21,"M");
INSERT INTO cliente(ID,nome,cognome,eta,sesso)
values(0009,"Michela","Franceschi",25,"F");
INSERT INTO cliente(ID,nome,cognome,eta,sesso)
values(0010,"Anna","Greco",40,"F");
INSERT INTO cliente(ID,nome,cognome,eta,sesso)
values(0011,"Francesca","Cavaliere",45,"F");
INSERT INTO cliente(ID,nome,cognome,eta,sesso)
values(0012,"Rosaria","Iannone",47,"F");


INSERT INTO sala(nome,dimensione)
values("Sala1",5);
INSERT INTO sala(nome,dimensione)
values("Sala2",5);
INSERT INTO sala(nome,dimensione)
values("Sala3",5);
INSERT INTO sala(nome,dimensione)
values("Sala4",5);
INSERT INTO sala(nome,dimensione)
values("Sala5",5);
INSERT INTO sala(nome,dimensione)
values("Sala6",5);
INSERT INTO sala(nome,dimensione)
values("Sala7",5);
INSERT INTO sala(nome,dimensione)
values("Sala8",5);
INSERT INTO sala(nome,dimensione)
values("Sala9",5);
INSERT INTO sala(nome,dimensione)
values("Sala10",5);
INSERT INTO sala(nome,dimensione)
values("Sala11",6.3);
INSERT INTO sala(nome,dimensione)
values("Sala12",6.3);
INSERT INTO sala(nome,dimensione)
values("Sala13",6.3);
INSERT INTO sala(nome,dimensione)
values("Sala14",6.3);
INSERT INTO sala(nome,dimensione)
values("Sala15",6.3);


INSERT INTO macchinario(codM,marca,nome,modello,descrizione,tipo,antinvecchiamento,nomesala)
values(01,"ITSGroup","Rinnova Frax","Plus","Macchinario a radiofrequenza, utilizza il principio di trasferimento energetico capacitivo e/o resistivo nei tessuti biologici: ciò significa che l’energia indotta a frequenze specifiche provoca un rapido innalzamento della temperatura, che produce un effetto lifting dovuto al restringimento delle fibre di collagene.",'V',true,"Sala1");
INSERT INTO macchinario(codM,marca,nome,modello,descrizione,tipo,antinvecchiamento,nomesala)
values(02,"ITSGroup","Oxypro Age","Dermoinfusione","Oxyproage è l’apparecchiatura di ossigeno dermoinfusione – o ossigeno iperbarico – per il trattamento degli inestetismi più comuni del viso. Inoltre, è efficace nella cura del cuoio capelluto, con trattamenti tricologici per anti-caduta, forfora, seborrea, cute grassa, cute sensibile, remineralizzante e ristrutturante.",'V',true,"Sala1");
INSERT INTO macchinario(codM,marca,nome,modello,descrizione,tipo,dimagrimento,nomesala)
values(03,"ITSGroup","CriolipolisiYet","2.0","Efficace, con risultati stabili nel tempo, la Criolipolisi Yeti 2.0 utilizza il principio di infusione di freddo controllato per la rimozione del tessuto adiposo.",'C',true,"Sala2");
INSERT INTO macchinario(codM,marca,nome,modello,descrizione,tipo,dimagrimento,nomesala)
values(04,"ITSGroup","Stardust Med","Diodo","é un macchinario per l'epilazione a diodo a 3 lunghezze d'onda. L'elevata potenza garantisce una epilazione pulita ed efficiente in ogni caso, inoltre posiede un cristallo zaffiro che elimina le rifrazioni indesiderate.",'C',true,"Sala3");
INSERT INTO macchinario(codM,marca,nome,modello,descrizione,tipo,dimagrimento,nomesala)
values(05,"GeneralProject","MC1 Multipower","Ultrasuoni","è un macchinario utilizzato per trattare ogni parte del corpo, ridurre la cellulite e trattare adiposità e lassità contemporaneamente.",'C',true,"Sala5");
INSERT INTO macchinario(codM,marca,nome,modello,descrizione,tipo,nomesala)
values(06,"GeneralProject","Pix Scan","2.0","Laser chirurgico più indicato per resurfacing, cicatrici da acne, melasma, iperpigmentazioni e cicatrici chirurgiche. Il trattamento provoca la rigenerazione della pelle agendo solo su piccolissime porzioni di tessuto in profondità, lasciando inalterata la maggior parte dell’epidermide.",'C',"Sala8");
INSERT INTO macchinario(codM,marca,nome,modello,descrizione,tipo,antinvecchiamento,nomesala)
values(07,"NovaEstetyc","Era","Radiofrequenza","ERA™ agisce grazie alla penetrazione di un’onda elettromagnetica nell’area di trattamento permettendo di trattare inestetismi della pelle come: lassità cutanea, adipe localizzato, cellulite, rughe, discromie cutanee, cicatrici, smagliature, acne in totale sicurezza.",'C',true,"Sala2");
INSERT INTO macchinario(codM,marca,nome,modello,descrizione,tipo,antinvecchiamento,nomesala)
values(08,"NovaEstetyc","Ego","Elettrostimolazione","EGO™ agisce attraverso il massaggio manuale in sinergia con tre tecnologie: fotobiostimolazione, elettrostimolazione, elettrobiostimolazione. La luce LED rassoda, gli impulsi elettrici tonificano la musc. e le microcorrenti eliminano le tossine.",'C',true,"Sala3");
INSERT INTO macchinario(codM,marca,nome,modello,descrizione,tipo,nomesala)
values(09,"NovaEstetyc","WL80","Fotoepil","WL80™ è un’apparecchiatura per la fotoepilazione che utilizza la tecnologia proprietaria HPPL™ per trattamenti sicuri ed efficaci, consente all’operatore di impostare i parametri di utilizzo, in base alla zona da trattare e al fototipo. Possiede un sistema di raffreddamento ad acqua bidistillata demineralizzata.",'C',"Sala8");
INSERT INTO macchinario(codM,marca,nome,modello,descrizione,tipo,nomesala) 
values(10,"NovaEstetyc","UgoLaser","Diodo","Laser a Diodo 808nm Defocalizzato. L’apparecchiatura per chi vuole eseguire trattamenti di fotoepilazione permanente in modo efficace, veloce ed a costi ridotti.",'C',"Sala5");
INSERT INTO macchinario(codM,marca,nome,modello,descrizione,tipo,nomesala)
values(11,"SmartSolarium","Alien6","UVisol","Alien 6 è il solarium esafacciale del futuro, dotato di 6 lampade montate su parabole dicroiche orientate con angoli differenti che consentono un'abbronzatura sicura e in poco tempo.",'C',"Sala4");
INSERT INTO macchinario(codM,marca,nome,modello,descrizione,tipo,nomesala)
values(12,"SmartSolarium","GOLD","Model 48","48 Tubi da 160 Watt - 8200 Watt. Doccia solare ad alte prestazione per una abbronzatura sicura e dorata, con potente ventilazione e possibilità di inserire il sistema BREEXE per un'aromaterapia.",'C',"Sala6");
INSERT INTO macchinario(codM,marca,nome,modello,descrizione,tipo,nomesala)
values(13,"SmartSolarium","Avatar Pro","Alta pressione","Grazie al suo morbido materasso, e alla configurazione aperta e antipanico, stendersi su Avatar PRO sarà come godere di una calda giornata di Sole, comodamente distesi su un letto morbido. Questo lettino fa uso di lampade ad alta intensità i cui raggi vengono filtrati attentamente da un cristallo.",'C',"Sala7");
INSERT INTO macchinario(codM,marca,nome,modello,descrizione,tipo,nomesala)
values(14,"SmartSolarium","TronUV+LED","LED","Grazie alla sua Tecnologia Duale, per stimolare la Vitamina D  in modalità Abbronzatura e la produzione di nuovo Collagene da parte dei Fibroblasti in modalità FotoBiomodulazione 633 nm, ti consentirà di dare Benessere a tutto tondo. Ti permette di avere un colore perfetto e una Pelle Ringiovanita.",'C',"Sala9");


INSERT INTO estetista(CF,nome,cognome,eta,oraStart,oraEnd,specialista)
values("SPDLRA87M50F839V","Laura","Spada",31,"9:00","17:00",false);
INSERT INTO estetista(CF,nome,cognome,eta,oraStart,oraEnd,nmacchinariutilizzabili,oreUtilizzo,specialista)
values("BRNRSO92T44H703F","Rosa","Berna",26,"9:00","17:00",2,2.5,true);
INSERT INTO estetista(CF,nome,cognome,eta,oraStart,oraEnd,specialista)
values("BNCMRA80H13F839A","Mario","Bianchi",38,"9:00","17:00",false);
INSERT INTO estetista(CF,nome,cognome,eta,oraStart,oraEnd,nmacchinariutilizzabili,oreUtilizzo,specialista)
values("TRRGDI95S63A509P","Giada","Terra",23,"9:00","17:00",2,0.2,true);
INSERT INTO estetista(CF,nome,cognome,eta,oraStart,oraEnd,nmacchinariutilizzabili,oreUtilizzo,specialista)
values("DRSMRA85E70H703Y","Maria","De Rosa",33,"9:00","17:00",2,1.5,true);
INSERT INTO estetista(CF,nome,cognome,eta,oraStart,oraEnd,nmacchinariutilizzabili,oreUtilizzo,specialista)
values("GRDRLB80C59F839D","Rosalba","Giardullo",28,"9:00","17:00",2,2.5,true);
INSERT INTO estetista(CF,nome,cognome,eta,oraStart,oraEnd,specialista)
values("FLLPSC89R69F839M","Priscilla","Fallaci",29,"9:00","17:00",false);
INSERT INTO estetista(CF,nome,cognome,eta,oraStart,oraEnd,specialista)
values("LCCMTN80P56H703T","Martina","Lucchese",38,"9:00","17:00",false);
INSERT INTO estetista(CF,nome,cognome,eta,oraStart,oraEnd,specialista)
values("PNCNDA92B52A509E","Nadia","Panicucci",26,"9:00","17:00",false);
INSERT INTO estetista(CF,nome,cognome,eta,oraStart,oraEnd,nmacchinariutilizzabili,specialista)
values("FRNRND90A01F839E","Armando","Fiorentino",29,"9:00","17:00",2,true);
INSERT INTO estetista(CF,nome,cognome,eta,oraStart,oraEnd,nmacchinariutilizzabili,specialista)
values("BCCSIA95E50A509P","Isa","Bucco",23,"9:00","17:00",2,true);
INSERT INTO estetista(CF,nome,cognome,eta,oraStart,oraEnd,nmacchinariutilizzabili,oreUtilizzo,specialista)
values("CSTLMP92H53H703I","Olimpia","Costa",26,"9:00","17:00",2,0.1,true);
INSERT INTO estetista(CF,nome,cognome,eta,oraStart,oraEnd,nmacchinariutilizzabili,oreUtilizzo,specialista)
values("GRDCLL80M69B963Z","Camilla","Giordano",38,"9:00","17:00",2,1.0,true);
INSERT INTO estetista(CF,nome,cognome,eta,oraStart,oraEnd,nmacchinariutilizzabili,oreUtilizzo,specialista)
values("PCCLSN85M60F839N","Alessandra","Piccio",33,"9:00","17:00",2,0.1,true);
INSERT INTO estetista(CF,nome,cognome,eta,oraStart,oraEnd,nmacchinariutilizzabili,oreUtilizzo,specialista)
values("NPLTMR88S51B963Q","Tamara","Napolitano",30,"9:00","17:00",2,1.2,true);



INSERT INTO prestazioni(orelavoroGiornaliere,ngiorniFeriali,tipocontratto,stipendio,dataassunzione,ngiornilavorativiAnnui,orestraordinarieAnnue,CFestetista)
values(8,32,"Full-time ind.",1400,"2018-12-10",264,100,"GRDRLB80C59F839D");
INSERT INTO prestazioni(orelavoroGiornaliere,ngiorniFeriali,tipocontratto,stipendio,dataassunzione,ngiornilavorativiAnnui,orestraordinarieAnnue,CFestetista)
values(8,32,"Full-time ind.",1400,"2018-12-11",264,50,"DRSMRA85E70H703Y");
INSERT INTO prestazioni(orelavoroGiornaliere,ngiorniFeriali,tipocontratto,stipendio,dataassunzione,ngiornilavorativiAnnui,CFestetista)
values(8,32,"Full-time det.",1250,"2018-12-11",264,"TRRGDI95S63A509P");
INSERT INTO prestazioni(orelavoroGiornaliere,ngiorniFeriali,tipocontratto,stipendio,dataassunzione,ngiornilavorativiAnnui,orestraordinarieAnnue,CFestetista)
values(8,32,"Full-time det.",1000,"2018-12-13",264,30,"BNCMRA80H13F839A");
INSERT INTO prestazioni(orelavoroGiornaliere,ngiorniFeriali,tipocontratto,stipendio,dataassunzione,ngiornilavorativiAnnui,CFestetista)
values(8,32,"Full-time ind.",1400,"2018-12-09",264,"BRNRSO92T44H703F");
INSERT INTO prestazioni(orelavoroGiornaliere,ngiorniFeriali,tipocontratto,stipendio,dataassunzione,ngiornilavorativiAnnui,orestraordinarieAnnue,CFestetista)
values(8,32,"Full-time det.",1100,"2018-12-09",264,12,"SPDLRA87M50F839V");
INSERT INTO prestazioni(orelavoroGiornaliere,ngiorniFeriali,tipocontratto,stipendio,dataassunzione,ngiornilavorativiAnnui,orestraordinarieAnnue,CFestetista)
values(8,32,"Full.time det.",1100,"2018-11-02",264,10,"FLLPSC89R69F839M");
INSERT INTO prestazioni(orelavoroGiornaliere,ngiorniFeriali,tipocontratto,stipendio,dataassunzione,ngiornilavorativiAnnui,orestraordinarieAnnue,CFestetista)
values(8,32,"Full.time ind.",1400,"2016-02-10",264,50,"LCCMTN80P56H703T");
INSERT INTO prestazioni(orelavoroGiornaliere,ngiorniFeriali,tipocontratto,stipendio,dataassunzione,ngiornilavorativiAnnui,orestraordinarieAnnue,CFestetista)
values(8,32,"Full.time ind.",1300,"2016-03-01",264,32,"PNCNDA92B52A509E");
INSERT INTO prestazioni(orelavoroGiornaliere,ngiorniFeriali,tipocontratto,stipendio,dataassunzione,ngiornilavorativiAnnui,orestraordinarieAnnue,CFestetista)
values(8,32,"Full.time ind.",1500,"2016-03-15",264,65,"FRNRND90A01F839E");
INSERT INTO prestazioni(orelavoroGiornaliere,ngiorniFeriali,tipocontratto,stipendio,dataassunzione,ngiornilavorativiAnnui,orestraordinarieAnnue,CFestetista)
values(8,32,"Full.time ind.",1400,"2017-01-25",264,12,"BCCSIA95E50A509P");
INSERT INTO prestazioni(orelavoroGiornaliere,ngiorniFeriali,tipocontratto,stipendio,dataassunzione,ngiornilavorativiAnnui,orestraordinarieAnnue,CFestetista)
values(8,32,"Full.time ind.",1400,"2017-05-01",264,20,"CSTLMP92H53H703I");
INSERT INTO prestazioni(orelavoroGiornaliere,ngiorniFeriali,tipocontratto,stipendio,dataassunzione,ngiornilavorativiAnnui,orestraordinarieAnnue,CFestetista)
values(8,32,"Full.time ind.",1450,"2017-01-12",264,55,"GRDCLL80M69B963Z");
INSERT INTO prestazioni(orelavoroGiornaliere,ngiorniFeriali,tipocontratto,stipendio,dataassunzione,ngiornilavorativiAnnui,CFestetista)
values(8,32,"Full.time ind.",1400,"2017-10-10",264,"PCCLSN85M60F839N");
INSERT INTO prestazioni(orelavoroGiornaliere,ngiorniFeriali,tipocontratto,stipendio,dataassunzione,ngiornilavorativiAnnui,CFestetista)
values(8,32,"Full.time ind.",1400,"2018-03-09",264,"NPLTMR88S51B963Q");


INSERT INTO appuntamento(ora,dataapp,durata,tipo,descrizione,nomesala,CFest,IDcliente)
values("09:00","2019-01-02",30,"Depilazione","ceretta petto","Sala4","SPDLRA87M50F839V",0000);
INSERT INTO appuntamento(ora,dataapp,durata,tipo,descrizione,nomesala,CFest,IDcliente)
values("09:30","2019-01-02",60,"Depilazione","ceretta total","Sala4","BNCMRA80H13F839A",0001);
INSERT INTO appuntamento(ora,dataapp,durata,tipo,descrizione,nomesala,CFest,codMacc,IDcliente)
values("09:00","2019-01-02",30,"Trattamento viso","lifting antiaging","Sala1","GRDRLB80C59F839D",01,0002);
INSERT INTO appuntamento(ora,dataapp,durata,tipo,descrizione,nomesala,CFest,codMacc,IDcliente)
values("09:30","2019-01-02",30,"Trattamento viso","pelle grassa","Sala1","TRRGDI95S63A509P",02,0002);
INSERT INTO appuntamento(ora,dataapp,durata,tipo,descrizione,nomesala,CFest,codMacc,IDcliente)
values("10:00","2019-01-02",60,"Trattamento corpo","Tratt. gambe+glutei","Sala5","BRNRSO92T44H703F",05,0003);
INSERT INTO appuntamento(ora,dataapp,durata,tipo,descrizione,nomesala,CFest,codMacc,IDcliente)
values("11:00","2019-01-02",30,"Trattamento corpo","Eliminazione tess. adiposo","Sala2","BRNRSO92T44H703F",03,0003);
INSERT INTO appuntamento(ora,dataapp,durata,tipo,descrizione,nomesala,CFest,IDcliente)
values("11:00","2019-01-03",30,"Trattamento viso","Sopracciglia con filo arabo","Sala4","TRRGDI95S63A509P",0005);
INSERT INTO appuntamento(ora,dataapp,durata,tipo,descrizione,nomesala,CFest,IDcliente)
values("12:30","2019-01-03",30,"Depilazione","Ceretta inguine","Sala10","TRRGDI95S63A509P",0004);
INSERT INTO appuntamento(ora,dataapp,durata,tipo,descrizione,nomesala,CFest,codMacc,IDcliente)
values("12:30","2019-01-04",30,"Trattamento viso","Rimozione catrici acne","Sala8","DRSMRA85E70H703Y",06,0005);
INSERT INTO appuntamento(ora,dataapp,durata,tipo,descrizione,nomesala,CFest,codMacc,IDcliente)
values("09:30","2019-01-03",90,"Depilazione","Epilazione total body","Sala3","GRDRLB80C59F839D",04,0005);
INSERT INTO appuntamento(ora,dataapp,durata,tipo,descrizione,nomesala,CFest,codMacc,IDcliente)
values("11:00","2019-01-03",90,"Depilazione","Epilazione gambe","Sala3","GRDRLB80C59F839D",04,0000);
INSERT INTO appuntamento(ora,dataapp,durata,tipo,descrizione,nomesala,CFest,codMacc,IDcliente)
values("12:30","2019-01-03",60,"Trattamento viso","Tratt. cuoio capelluto","Sala1","DRSMRA85E70H703Y",02,0001);
INSERT INTO appuntamento(ora,dataapp,durata,tipo,descrizione,nomesala,CFest,codMacc,IDcliente)
values("12:00","2019-01-02",60,"Trattamento corpo","riduzione cellulite","Sala5","GRDCLL80M69B963Z",05,0008);
INSERT INTO appuntamento(ora,dataapp,durata,tipo,descrizione,nomesala,CFest,codMacc,IDcliente)
values("09:30","2019-01-04",90,"Depilazione","Epilazione gambe","Sala8","NPLTMR88S51B963Q",09,0009);
INSERT INTO appuntamento(ora,dataapp,durata,tipo,descrizione,nomesala,CFest,codMacc,IDcliente)
values("16:30","2019-01-04",30,"Solarium","Lampada LED aperta","Sala9","PCCLSN85M60F839N",14,0010);
INSERT INTO appuntamento(ora,dataapp,durata,tipo,descrizione,nomesala,CFest,codMacc,IDcliente)
values("16:30","2019-01-04",30,"Solarium","Lampada viso","Sala7","PCCLSN85M60F839N",13,0011);
INSERT INTO appuntamento(ora,dataapp,durata,tipo,descrizione,nomesala,CFest,IDcliente)
values("16:30","2019-01-04",30,"Trattamento corpo","Massaggio cervicale","Sala15","PNCNDA92B52A509E",0011);


INSERT INTO utilizzo(CFestetista,codMacchinario)
values("TRRGDI95S63A509P",02);
INSERT INTO utilizzo(CFestetista,codMacchinario)
values("BRNRSO92T44H703F",03);
INSERT INTO utilizzo(CFestetista,codMacchinario)
values("BRNRSO92T44H703F",05);
INSERT INTO utilizzo(CFestetista,codMacchinario)
values("DRSMRA85E70H703Y",06);
INSERT INTO utilizzo(CFestetista,codMacchinario)
values("DRSMRA85E70H703Y",02);
INSERT INTO utilizzo(CFestetista,codMacchinario)
values("GRDRLB80C59F839D",04);
INSERT INTO utilizzo(CFestetista,codMacchinario)
values("BCCSIA95E50A509P",01);
INSERT INTO utilizzo(CFestetista,codMacchinario)
values("BCCSIA95E50A509P",07);
INSERT INTO utilizzo(CFestetista,codMacchinario)
values("CSTLMP92H53H703I",11);
INSERT INTO utilizzo(CFestetista,codMacchinario)
values("CSTLMP92H53H703I",12);
INSERT INTO utilizzo(CFestetista,codMacchinario)
values("FRNRND90A01F839E",01);
INSERT INTO utilizzo(CFestetista,codMacchinario)
values("FRNRND90A01F839E",04);
INSERT INTO utilizzo(CFestetista,codMacchinario)
values("GRDCLL80M69B963Z",05);
INSERT INTO utilizzo(CFestetista,codMacchinario)
values("GRDCLL80M69B963Z",07);
INSERT INTO utilizzo(CFestetista,codMacchinario)
values("GRDRLB80C59F839D",09);
INSERT INTO utilizzo(CFestetista,codMacchinario)
values("NPLTMR88S51B963Q",09);
INSERT INTO utilizzo(CFestetista,codMacchinario)
values("NPLTMR88S51B963Q",10);
INSERT INTO utilizzo(CFestetista,codMacchinario)
values("PCCLSN85M60F839N",13);
INSERT INTO utilizzo(CFestetista,codMacchinario)
values("PCCLSN85M60F839N",14);
INSERT INTO utilizzo(CFestetista,codMacchinario)
values("TRRGDI95S63A509P",03);













































