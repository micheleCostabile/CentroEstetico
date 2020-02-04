Create schema CentroEstetico;
Use CentroEstetico;

create table cliente(
ID 			int not null,
nome 		varchar(20) not null,
cognome 	varchar(20) not null,
eta			int,
sesso		character(1) not null,
primary key(ID));

create table estetista(
CF				 char(16) not null,
nome			 varchar(20) not null,
cognome 		 varchar(20) not null,
eta				 int not null,
oraStart		 time not null,
oraEnd			 time not null,
nmacchinariutilizzabili int,
oreUtilizzo				double,
specialista				boolean,
primary key(CF));

create table sala(
nome		varchar(10) not null,
dimensione  double not null,
primary key(nome));

create table macchinario(
codM  		int not null,
marca		varchar(15) not null,
nome		varchar(15) not null,
modello		varchar(20) not null,
descrizione varchar(350) not null,
tipo		char(1) not null,
dimagrimento boolean,
antinvecchiamento boolean,
nomesala	varchar(10) not null,
primary key(codM),
foreign key(nomesala) references sala(nome)
	on update cascade
    on delete cascade);
   
create table prestazioni(
orelavoroGiornaliere	int not null,
ngiorniFeriali			int,
tipocontratto			varchar(50) not null,
dataassunzione			date not null,
stipendio				double not null,
ngiornilavorativiAnnui	int not null,
orestraordinarieAnnue	int default 0,
CFestetista				char(16) not null,
primary key(CFestetista),
foreign key(CFestetista) references estetista(CF)
	on delete cascade
    on update cascade);
    
create table utilizzo(
CFestetista	    char(16) not null,
codMacchinario	int not null,
primary key(CFestetista,codMacchinario),
foreign key(CFestetista) references estetista(CF)
	on update cascade
    on delete cascade,
foreign key(codMacchinario) references macchinario(codM)
	on update cascade
    on delete cascade);

    
create table appuntamento(
ora 		time not null,
dataapp		date not null,
durata 		int not null,
tipo 		varchar(20) not null,
descrizione	varchar(30) not null,
nomesala    varchar(10) not null,
CFest		char(16) not null,
codMacc		int,
IDcliente	int not null,
primary key(ora,dataapp,nomesala),
foreign key(nomesala) references sala(nome)
	on update cascade
    on delete cascade,
foreign key(CFest) references estetista(CF)
	on update cascade
    on delete no action,
foreign key(codMacc) references macchinario(codM)
	on update cascade
    on delete cascade,
foreign key(IDcliente) references cliente(ID)
	on update cascade
    on delete cascade);


