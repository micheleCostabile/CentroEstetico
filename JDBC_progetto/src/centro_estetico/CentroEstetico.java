package centro_estetico;

import java.sql.*;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;

import javax.swing.JOptionPane;

public class CentroEstetico {

	public CentroEstetico(String username, String password) {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/centroestetico?useUnicode=true&useJDBCCompliantTimezoneShift"
					+ "=true&useLegacyDatetimeCode=false&serverTimezone"
					+ "=UTC"; 
			this.username = username;
			this.password = password;
			
			con = DriverManager.getConnection(url,username,password);
			JOptionPane.showMessageDialog(null,"Connessione effettuata");	
		}
		
		catch(Exception e){
			JOptionPane.showMessageDialog(null,"Errore in connessione");
			System.exit(0);
		}
		
	}
	
	
	//QUERY 1
	public void inserisciAppuntamento(int id,String data,String ora,int durata,int macchinario,String tipo, String descrizione) {
		
		Date d = Date.valueOf(data);
		LocalTime app = LocalTime.parse(ora);
		Time t = Time.valueOf(app);
		try {
			
			CallableStatement query = con.prepareCall("{CALL getSalaEst(?,?,?,?,?,?)}");
			
			if(macchinario == 0) {
				query.setInt(1,Types.INTEGER);
			}
			
			else query.setInt(1, macchinario);
			query.setDate(2, d);
			query.setTime(3, t);
			query.setInt(4, durata);
			query.registerOutParameter(5, Types.VARCHAR);
			query.registerOutParameter(6, Types.CHAR);
			query.executeQuery();
			
			String sala = query.getString(5);
			String estetista = query.getString("@resultEst");
			
			
			Statement ins = con.createStatement();
			if(macchinario == 0) {
				ins.execute("INSERT INTO appuntamento(ora,dataapp,durata,tipo,descrizione,nomesala,CFest,IDcliente,codMacc)"+
						" values (\""+ora+"\",\""+data+"\","+durata+",\""+tipo+"\",\""+descrizione+"\",\""+sala+"\",\""+estetista+"\","+id+","+null+");");
				JOptionPane.showMessageDialog(null, "Operazione eseguita");
			}
			
			else {
				ins.execute("INSERT INTO appuntamento(ora,dataapp,durata,tipo,descrizione,nomesala,CFest,IDcliente,codMacc)"+
						" values (\""+ora+"\",\""+data+"\","+durata+",\""+tipo+"\",\""+descrizione+"\",\""+sala+"\",\""+estetista+"\","+id+","+macchinario+");");
				JOptionPane.showMessageDialog(null, "Operazione eseguita");	
			}
			
			
		}
		
		catch (Exception e){
			JOptionPane.showMessageDialog(null, "Errore nell'operazione 1");
			e.printStackTrace();
		}
		
		
		
	}
		
	
	
	//QUERY 2
	public boolean verificaDisp(String data, String ora,int durata,int macchinario) {
		
		Date d = Date.valueOf(data);
		LocalTime app = LocalTime.parse(ora);
		Time t = Time.valueOf(app);
		
		ResultSet result = null;
		try {
			
			CallableStatement query = con.prepareCall("{CALL orariDisp(?,?,?)}");
			query.setDate(1, d);
			query.setInt(2,durata);
			if(macchinario == 0) {
				
				query.setInt(3,Types.INTEGER);
				
			}
			
			else query.setInt(3, macchinario);
			
			result = query.executeQuery();
			
			while(result.next()) {
				
				if(t.toString().equals(result.getString(1))) return true;
				
			}
			
			return false;
			
		}
		
		catch (Exception e){
			JOptionPane.showMessageDialog(null, "Errore nell'operazione 2");
			return false;
		}

		
	}

	//QUERY 3
	public ResultSet orariDisp(String data, int durata, int macchinario) {
		
		Date d = Date.valueOf(data);
		ResultSet result = null;
		try {
			
			CallableStatement query = con.prepareCall("{CALL orariDisp(?,?,?)}");
			query.setDate(1, d);
			query.setInt(2,durata);
			if(macchinario == 0) {
				
				query.setInt(3,Types.INTEGER);
				
			}
			
			else query.setInt(3, macchinario);
			
			result = query.executeQuery();
			
			return result;
		}
		
		catch (Exception e){
			JOptionPane.showMessageDialog(null, "Errore nell'operazione 3");
			return result;
		}
	}
	
	//QUERY 4
	public ResultSet giorniDisp(String ora, int durata, int macchinario) {
		
		LocalTime app = LocalTime.parse(ora);
		Time t = Time.valueOf(app);
		
		ResultSet result = null;
		try {
			
			CallableStatement query = con.prepareCall("{CALL giorniDisp(?,?,?)}");
			query.setTime(1, t);
			query.setInt(2,durata);
			if(macchinario == 0) {
				
				query.setInt(3,Types.INTEGER);
				
			}
			
			else query.setInt(3, macchinario);
			
			result = query.executeQuery();
			
			return result;
		}
		
		catch (Exception e){
			JOptionPane.showMessageDialog(null, "Errore nell'operazione 4");
			e.printStackTrace();
			return result;
		}
	}
	
	//QUERY 5
	public ResultSet lastUse(int macchinario,int durata, String data) {
		LocalDate app = LocalDate.parse(data);
		Date d = Date.valueOf(app);
		ResultSet result = null;
		for (int i=0;i<7;i++) {
			try {
				
				CallableStatement query = con.prepareCall("{CALL orariDisp(?,?,?)}");
				query.setDate(1, d);
				query.setInt(2,durata);
				query.setInt(3, macchinario);
				
				result = query.executeQuery();
				
				if(result.next()) {
					JOptionPane.showMessageDialog(null,"Prossima disponibilità di " + macchinario + ": " + d.toString() +" ore " + result.getString(1));
					break;
				}
				
				else {
					
					app.plusDays(1);
					d = Date.valueOf(app);
					
				}
			}
			
			
			catch (Exception e){
				JOptionPane.showMessageDialog(null, "Errore nell'operazione 5");
				return result;
			}
		}
		return result;
		
		
	}
	
	//QUERY 6
	public ResultSet howMany() {
		
		ResultSet result = null;

		try {
			
			Statement query = con.createStatement();
		    result =
					query.executeQuery("select appuntamento.tipo, count(tipo) as quantità\r\n" + 
							"from appuntamento\r\n" + 
							"group by tipo");
		    return result;
		    }
		
		catch (Exception e){
			JOptionPane.showMessageDialog(null, "Errore nell'operazione 6");
			return result;
		}
		
	}
	
	//QUERY 7
	public void insCliente(int id, String nome, String cognome, int eta, char sesso) {
		
		try {
			
			Statement query = con.createStatement();
		    query.execute("INSERT INTO cliente(ID,nome,cognome,eta,sesso)"
		    		+ "values ("+id+",\""+nome+"\""+",\""+cognome+"\""+","+eta+",'"+sesso+"');");
		    JOptionPane.showMessageDialog(null, "Operazione eseguita");
		}
			
			
		
		catch (Exception e){
			JOptionPane.showMessageDialog(null, "Errore nell'operazione 7");
			e.printStackTrace();
		}
		
	}

	//QUERY 8 - Estetista
	public void insEstetista(String CF,String nome,String cognome,int eta,String contratto,String data,double stipendio) {
		
		try {
			
			Statement query = con.createStatement();
		    query.execute("INSERT INTO estetista(CF,nome,cognome,eta,oraStart,oraEnd,specialista)"
		    		+ "values("+"\""+CF+"\""+",\""+nome+"\""+",\""+cognome+"\""+","+eta+",\"9:00\",\"17:00\","+false+");");
		    query.execute("INSERT INTO prestazioni(CFestetista,tipocontratto,dataassunzione,stipendio,orelavoroGiornaliere,ngiornilavorativiAnnui)"
		    		+ "values("+"\""+CF+"\""+",\""+contratto+"\""+",\""+data+"\""+","+stipendio+","+8+","+25+");");
		    JOptionPane.showMessageDialog(null, "Operazione eseguita");
		}
			

		catch (Exception e){
			JOptionPane.showMessageDialog(null, "Errore nell'operazione 8");
			e.printStackTrace();
		}
	
		
		
	}
	
	//QUERY 8 - Specialista
	public void insSpecialista(String CF,String nome,String cognome,int eta,int macchinariUtilizzabili,String contratto,String data,double stipendio, 
				ArrayList <Integer> macc) {
			
			try {
				
				Statement query = con.createStatement();
			    query.execute("INSERT INTO estetista(CF,nome,cognome,eta,oraStart,oraEnd,specialista,nmacchinariutilizzabili,oreUtilizzo)"
			    		+ "values("+"\""+CF+"\""+",\""+nome+"\""+",\""+cognome+"\""+","+eta+",\"9:00\",\"17:00\","+true+","+macchinariUtilizzabili+","
			    		+ 0 +");");
			    query.execute("INSERT INTO prestazioni(CFestetista,tipocontratto,dataassunzione,stipendio,orelavoroGiornaliere,ngiornilavorativiAnnui)"
			    		+ "values("+"\""+CF+"\""+",\""+contratto+"\""+",\""+data+"\""+","+stipendio+","+8+","+25+");");
			    
			    for(int i = 0; i < macchinariUtilizzabili; i++) {
				    query.execute("INSERT INTO utilizzo(CFestetista,codMacchinario)"
				    		+ "values("+"\""+CF+"\""+","+macc.get(i)+");");
			    }
			    
			    JOptionPane.showMessageDialog(null, "Operazione eseguita");
			}
				

			catch (Exception e){
				JOptionPane.showMessageDialog(null, "Errore nell'operazione 8");
			}
		
			
			
		}
	
	//QUERY 9
	public ResultSet mostHours() {
		
		ResultSet result = null;

		try {
			
			Statement query = con.createStatement();
		    result =
					query.executeQuery("SELECT estetista.CF,MAX(oreUtilizzo) as massimo\r\n" + 
							"from estetista;");
		    return result;
		    }
		
		catch (Exception e){
			JOptionPane.showMessageDialog(null, "Errore nell'operazione 9");
			return result;
		}
		
		
	}
	
	//QUERY 10
	public ResultSet utilizzabiliEs(String CF) {
		
		ResultSet result = null;

		try {
			
			Statement query = con.createStatement();
		    result =
					query.executeQuery("SELECT utilizzo.CFestetista,macchinario.codM,macchinario.marca,"+ "macchinario.nome\r\n" + 
							"FROM utilizzo JOIN macchinario ON utilizzo.codMacchinario =macchinario.codM\r\n" + 
							"where utilizzo.CFestetista="+"\""+CF+"\";");
		    return result;
		    }
		
		catch (Exception e){
			JOptionPane.showMessageDialog(null, "Errore nell'operazione 10");
			return result;
		}
		
	}
	
	//QUERY 11
	public void aggiornaContratto(String CF, String newContratto) {
		
		try {
			
			Statement query = con.createStatement();
		    query.execute("UPDATE prestazioni\r\n" + 
		    		"SET tipocontratto ="+"\""+newContratto+"\""+ 
		    		"WHERE CFestetista ="+"\""+CF+"\";");
		    JOptionPane.showMessageDialog(null, "Operazione eseguita");
		}
			
			
		
		catch (Exception e){
			JOptionPane.showMessageDialog(null, "Errore nell'operazione 11");
		}
	
	}

	//Service QUERY 12
	public ResultSet getMacchinarioDur(int id, String data, String ora) {
		
		ResultSet result = null;
		
		try {
			
			Statement query = con.createStatement();
		    result =
					query.executeQuery("SELECT codMacc,durata\r\n" + 
							"FROM appuntamento\r\n" + 
							"WHERE dataapp = \""+data+"\" and ora = \""+ora+"\" and IDcliente = " + id);  

		    return result;
		    }
		
		catch (Exception e){
			JOptionPane.showMessageDialog(null, "Errore nel service 12");
			return result;
		}
		
		
	}
	
	//QUERY 12
	public void aggiornaOrario(int ID, String ora) {
		try {
			
			Statement query = con.createStatement();
		    query.execute("UPDATE appuntamento\r\n" + 
		    		"SET ora ="+"\""+ora+"\""+ 
		    		"WHERE IDcliente = " + ID);
		    JOptionPane.showMessageDialog(null, "Operazione eseguita");
		}
			
		catch (Exception e){
			JOptionPane.showMessageDialog(null, "Errore nell'operazione 12: Impossibile spostare l'appuntamento");
			e.printStackTrace();
		}
	}
	
	//QUERY 13
	public ResultSet occupazioneSale() {
		ResultSet result = null;

		try {
			
			Statement query = con.createStatement();
		    result =
					query.executeQuery("SELECT sala.Nome, SUM(durata)/60 as ore, SUM(minute(durata)) as minuti\r\n" + 
							"FROM appuntamento JOIN sala on Nomesala = Nome\r\n" + 
							"GROUP BY Nome"
							+ "; ");
		    return result;
		    }
		
		catch (Exception e){
			JOptionPane.showMessageDialog(null, "Errore nell'operazione 13");
			return result;
		}
	
		
	}
	
	//QUERY 14
	public ResultSet milleOre() {
		
		ResultSet result = null;
		try {
			
			Statement query = con.createStatement();
		    result =
					query.executeQuery("select codM, macchinario.nome, sum(durata)/60 as somma\r\n" + 
							"from (macchinario inner join appuntamento on macchinario.codM=appuntamento.codMacc)\r\n" + 
							"group by codM\r\n" + 
							"having somma>1000"
							+ "; ");
		    return result;
			}
		
		catch (Exception e){
			JOptionPane.showMessageDialog(null, "Errore nell'operazione 14");
		}
	
		return result;
	}
	
	//QUERY 15 - Macchinario viso
	public void insMacchViso(int codM, String marca, String nome, String modello, String descrizione, boolean antiInvecchiamento, String nomeSala) {
		
		try {
			
			Statement query = con.createStatement();
		    query.execute("INSERT INTO macchinario(codM,marca,nome,modello,descrizione,tipo,antinvecchiamento,nomesala)"
		    		+ "values ("+codM+",\""+marca+"\""+",\""+nome+"\""+",\""+modello+"\""+",\""
		    		+descrizione+"\","+"'V'"+","+antiInvecchiamento+",\""+nomeSala+"\");");
		    JOptionPane.showMessageDialog(null, "Operazione eseguita");
		}
			
			
		
		catch (Exception e){
			JOptionPane.showMessageDialog(null, "Errore nell'operazione 15");
			
		}
		
	}
	
	//QUERY 15 - Macchinario corpo
	public void insMacchCorpo(int codM, String marca, String nome, String modello, String descrizione, boolean dimagrimento, String nomeSala) {
			
			try {
				
				Statement query = con.createStatement();
			    query.execute("INSERT INTO macchinario(codM,marca,nome,modello,descrizione,tipo,antinvecchiamento,nomesala)"
			    		+ "values ("+codM+",\""+marca+"\""+",\""+nome+"\""+",\""+modello+"\""+",\""
			    		+descrizione+"\","+"'C'"+","+dimagrimento+",\""+nomeSala+"\");");
			    JOptionPane.showMessageDialog(null, "Operazione eseguita");
			}
				
				
			
			catch (Exception e){
				JOptionPane.showMessageDialog(null, "Errore nell'operazione 15");
				
			}
			
		}
	
	
	
	Connection con;
	String username;
	String password;
}
