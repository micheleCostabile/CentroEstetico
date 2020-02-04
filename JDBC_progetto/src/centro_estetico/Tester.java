package centro_estetico;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.swing.JOptionPane;

public class Tester {

	public static void main(String[] args) throws SQLException {
		
		//BLOCCO DI CONNESSIONE AL DB MYSQL
			String username = JOptionPane.showInputDialog("Inserisci l'username per accedere a MYSQL");
			String pwd = JOptionPane.showInputDialog("Inserisci la password per accedere a MYSQL");
			CentroEstetico proj = new CentroEstetico(username,pwd);
		//FINE BLOCCO DI CONNESSIONE AL DB MYSQL
		
		//MENU DI SCELTE
			int pick = 1;
			while(pick > 0 && pick <16) {
				 pick = Integer.parseInt((String) JOptionPane.showInputDialog(null,
						 "1. Prenotazione di un appuntamento con assegnazione di sala ed estetista;\n"
						+"2. Verifica della possibilità di effettuare un appuntamento per un determinato giorno dell’anno ad una determinata ora;\n"
						+"3. Visualizzazione degli orari disponibili per un appuntamento in un determinato giorno;\n"
						+"4. Visualizzazione dei giorni disponibili per un appuntamento in un determinato orario;\n"
						+"5. Visualizzazione del primo appuntamento disponibile per l’utilizzo di un determinato macchinario;\n"
						+"6. Visualizzazione del numero di appuntamenti effettuati in un anno per ogni tipo;\n"
						+"7. Inserimento di un nuovo cliente;\n"
						+"8. Assunzione di una nuova estetista;\n"
						+"9. Visualizzazione dell’estetista che ha lavorato in maggior numero di ore sui macchinari nell’anno corrente;\n"
						+"10. Visualizzazione dei macchinari che può utilizzare un’estetista;\n"
						+"11. Modifica del contratto di un’estetista;\n"
						+"12. Modifica dell’orario di un appuntamento (se possibile);\n"
						+"13. Visualizzazione delle ore di occupazione delle sale in un anno;\n"
						+"14. Visualizzazione dei macchinari che sono stati utilizzati per più di 1000 ore in un anno;\n"
						+"15. Acquisto di un nuovo macchinario;\n\n"
						+ "INSERISCI 0 O UN NUMERO MAGGIORE DI 15 PER USCIRE","CentroEstetico",3,null,null,null));
				 
				 
				//CASES
					if(pick == 1) {
					
						int id = Integer.parseInt(JOptionPane.showInputDialog("Inserisci il codice del cliente"));
						String data = JOptionPane.showInputDialog("Inserisci la data in cui vorresti prenotare l'appuntamento(aaaa-mm-gg)");
						String ora = JOptionPane.showInputDialog("Inserisci l'orario in cui vorresti prenotare l'appuntamento(hh:mm)");
						int durata = Integer.parseInt(JOptionPane.showInputDialog("Inserisci la durata dell'appuntamento (30,60,90,...)"));
						int macchinario = Integer.parseInt(JOptionPane.showInputDialog("Inserisci il codice del macchinario che vorresti utilizzare (0 se"
						+ " non necessiti di un macchinario)"));
						if(proj.verificaDisp(data, ora, durata, macchinario)) {
						
							String tipo = JOptionPane.showInputDialog("Inserisci il tipo di appuntamento");
							String descrizione = JOptionPane.showInputDialog("Inserisci una descrizione per l'appuntamento");
							proj.inserisciAppuntamento(id,data,ora,durata,macchinario,tipo,descrizione);
						}
						else JOptionPane.showMessageDialog(null, "Impossibile prenotare in tale giorno a tale ora");
						
						
					}
					
					else if (pick == 2) {
						
						String data = JOptionPane.showInputDialog("Inserisci la data in cui vorresti prenotare l'appuntamento(aaaa-mm-gg)");
						String ora = JOptionPane.showInputDialog("Inserisci l'orario in cui vorresti prenotare l'appuntamento(hh:mm)");
						int durata = Integer.parseInt(JOptionPane.showInputDialog("Inserisci la durata dell'appuntamento (30,60,90,...)"));
						int macchinario = Integer.parseInt(JOptionPane.showInputDialog("Inserisci il codice del macchinario che vorresti utilizzare (0 se"
								+ " non necessiti di un macchinario)"));
						
						boolean result = proj.verificaDisp(data,ora, durata, macchinario);
						
						if(result) JOptionPane.showMessageDialog(null, "Appuntamento disponibile");
						else JOptionPane.showMessageDialog(null, "Appuntamento non disponibile");
						
					}
					
					else if (pick == 3) {
						
						String data = JOptionPane.showInputDialog("Inserisci la data in cui vorresti prenotare l'appuntamento(aaaa-mm-gg)");
						int durata = Integer.parseInt(JOptionPane.showInputDialog("Inserisci la durata dell'appuntamento (30,60,90,...)"));
						int macchinario = Integer.parseInt(JOptionPane.showInputDialog("Inserisci il codice del macchinario che vorresti utilizzare (0 se"
								+ " non necessiti di un macchinario)"));
						
						ResultSet result = proj.orariDisp(data, durata, macchinario);
						
						while(result.next()) {
							
							System.out.println(result.getString(1));
							
						}
						
						
					}
		
					
					else if (pick == 4) {
						
						String ora = JOptionPane.showInputDialog("Inserisci l'orario in cui vorresti prenotare l'appuntamento(hh:mm)");
						int durata = Integer.parseInt(JOptionPane.showInputDialog("Inserisci la durata dell'appuntamento (30,60,90,...)"));
						int macchinario = Integer.parseInt(JOptionPane.showInputDialog("Inserisci il codice del macchinario che vorresti utilizzare (0 se"
								+ " non necessiti di un macchinario)"));
						
						ResultSet result = proj.giorniDisp(ora, durata, macchinario);
						
						while(result.next()) {
							
							System.out.println(result.getString(1));
							
						}
						
					}
					
					else if (pick == 5) {
									
						int codM = Integer.parseInt(JOptionPane.showInputDialog("Inserisci il codice del macchinario"));
						int durata = Integer.parseInt(JOptionPane.showInputDialog("Inserisci la durata dell'appuntamento (30,60,90,...)"));
						String data = JOptionPane.showInputDialog("Inserisci la data di oggi");
						proj.lastUse(codM,durata,data);
					
							
						}
						
					
					
					else if (pick == 6) {
						
						ResultSet result = proj.howMany();
						System.out.println("TIPO  QUANTITA");
						while (result.next()){
							
							String tipo = result.getString("tipo");
							String qta = result.getString("quantità");
							System.out.println();
							System.out.println(tipo +" "+ qta);
							
						}
						
					
				
					}
					else if (pick == 7) {
						
						int id = Integer.parseInt(JOptionPane.showInputDialog("Inserisci il codice del cliente"));
						String nome = JOptionPane.showInputDialog("Inserisci il nome del cliente");
						String cognome = JOptionPane.showInputDialog("Inserisci il cognome del cliente");
						int eta = Integer.parseInt(JOptionPane.showInputDialog("Inserisci l'età del cliente"));
						char sesso = JOptionPane.showInputDialog("Inserisci il sesso del cliente (M/F)").toUpperCase().charAt(0);
						proj.insCliente(id,nome,cognome,eta,sesso);
						
					}
					else if (pick == 8) {
						
						String choice = JOptionPane.showInputDialog("Estetista (E) o Specialista(S)?");
						
						if(choice.equalsIgnoreCase("E")) {
							
							String CF = JOptionPane.showInputDialog("Inserisci il codice fiscale dell'estetista");
							String nome = JOptionPane.showInputDialog("Inserisci il nome dell'estetista");
							String cognome = JOptionPane.showInputDialog("Inserisci il cognome dell'estetista");
							int eta = Integer.parseInt(JOptionPane.showInputDialog("Inserisci l'età dell'estetista"));
							String contratto = JOptionPane.showInputDialog("Inserisci la modalità di contratto");
							String data = JOptionPane.showInputDialog("Inserisci la data di assunzione (aaaa-mm-gg)");
							double stipendio = Double.parseDouble(JOptionPane.showInputDialog("Inserisci lo stipendio dell'estetista"));
							
							proj.insEstetista(CF, nome, cognome, eta, contratto, data, stipendio);
							
						}
						
						else if(choice.equalsIgnoreCase("S")){
							
							ArrayList <Integer> macc = new ArrayList <Integer>();
							String CF = JOptionPane.showInputDialog("Inserisci il codice fiscale dell'estetista");
							String nome = JOptionPane.showInputDialog("Inserisci il nome dell'estetista");
							String cognome = JOptionPane.showInputDialog("Inserisci il cognome dell'estetista");
							int eta = Integer.parseInt(JOptionPane.showInputDialog("Inserisci l'età dell'estetista"));
							int macchinariUtilizzabili = Integer.parseInt(JOptionPane.showInputDialog("Inserisci il numero di macchinari utilizzabili"));
							for(int i = 0; i < macchinariUtilizzabili; i++) {
								
								macc.add(Integer.parseInt(JOptionPane.showInputDialog("Inserisci il codice del macchinario"))); 
								
							}
							String contratto = JOptionPane.showInputDialog("Inserisci la modalità di contratto");
							String data = JOptionPane.showInputDialog("Inserisci la data di assunzione (aaaa-mm-gg)");
							double stipendio = Double.parseDouble(JOptionPane.showInputDialog("Inserisci lo stipendio dell'estetista"));
							
							proj.insSpecialista(CF, nome, cognome, eta, macchinariUtilizzabili, contratto, data, stipendio,macc);
							
						}
						
						
					}
					else if (pick == 9) {
						
						ResultSet result = proj.mostHours();
						
						while (result.next()){
							
							String CF = result.getString("CF");
							String max = result.getString("massimo");
							System.out.println();
							JOptionPane.showMessageDialog(null,"Estetista: " + CF +"\nOre: "+ max);
							
						}
						
					
					}
					else if (pick == 10) {
						
						String CF = JOptionPane.showInputDialog("Inserisci il CF dell'estetista");
						ResultSet result = proj.utilizzabiliEs(CF);
						while (result.next()){
							
							CF = result.getString("CFestetista");
							String codM = result.getString("codM");
							String marca = result.getString("marca");
							String nome = result.getString("nome");
							System.out.println("Estetista: " + CF );
							System.out.println();
							System.out.println("Macchinario: " + codM + " " + marca + " " + nome);
							
						}
						
					}
					else if (pick == 11) {
						
						String CF = JOptionPane.showInputDialog("Inserisci il CF dell'estetista");
						String newContratto = JOptionPane.showInputDialog("Inserisci il nuovo contratto dell'estetista");
						
						proj.aggiornaContratto(CF, newContratto);
						System.out.println();
						
						
					}
					else if (pick == 12) {
						
						int macchinario = 0;
						int durata = 0;
						int id = Integer.parseInt(JOptionPane.showInputDialog("Inserisci il codice del cliente"));
						String data = JOptionPane.showInputDialog("Inserisci la data dell'appuntamento");
						String oraOld = JOptionPane.showInputDialog("Inserisci l'ora dell'appuntamento");
						String oraNew = JOptionPane.showInputDialog("Inserisci l'ora in cui vorresti spostare l'appuntamento");
						ResultSet result = proj.getMacchinarioDur(id, data, oraOld);
						
						while(result.next()) {
							macchinario = result.getInt(1);
							durata = result.getInt(2);
						}
						
						if(proj.verificaDisp(data, oraNew, durata, macchinario)) proj.aggiornaOrario(id, oraNew);
						
						
					}
					
					else if (pick == 13) {
						
						ResultSet result = proj.occupazioneSale();
						
						while (result.next()){
							
							String nome = result.getString("Nome");
							String ore = result.getString("ore");
							System.out.println();
							System.out.println("Sala: " + nome);
							System.out.println("Occupazione: " + ore);
							
						}
						
						
						
					}
					
					else if (pick == 14) {
						
						ResultSet result = proj.milleOre();
						
						if(result == null) System.out.println("Nessun macchinario è stato utilizzato più di mille ore");
						
						while (result.next()){
							
							String codM = result.getString("codM");
							String nomeM = result.getString("nome");
							String somma = result.getString("somma");
							System.out.println();
							System.out.println("Macchinario: " + codM + " " + nomeM );
							System.out.println("Somma: " + somma);
							
						}
						
					}
					
					else if (pick == 15) {
						
						String choice = JOptionPane.showInputDialog("Macchinario Viso (V) o Corpo(C)?");
						
						if(choice.equalsIgnoreCase("V")) {
							int codM = Integer.parseInt(JOptionPane.showInputDialog("Inserisci il codice del macchinario"));
							String marca = JOptionPane.showInputDialog("Inserisci la marca del macchinario");
							String nome = JOptionPane.showInputDialog("Inserisci il nome del macchinario");
							String modello = JOptionPane.showInputDialog("Inserisci il modello del macchinario");
							String descrizione = JOptionPane.showInputDialog("Inserisci una descrizione per il macchinario");
							boolean antiInvecchiamento = Boolean.parseBoolean((JOptionPane.showInputDialog("Si tratta di un macchinario anti invecchiamento? "
									+ "False = N, True = S")));
							String nomeSala = JOptionPane.showInputDialog("In che sala deve essere inserito? (Da \"Sala1\" a \"Sala15\" )?");
							
							proj.insMacchViso(codM, marca, nome, modello, descrizione, antiInvecchiamento, nomeSala);
							
						}
						
						else if(choice.equalsIgnoreCase("C")){
							
							int codM = Integer.parseInt(JOptionPane.showInputDialog("Inserisci il codice del macchinario"));
							String marca = JOptionPane.showInputDialog("Inserisci la marca del macchinario");
							String nome = JOptionPane.showInputDialog("Inserisci il nome del macchinario");
							String modello = JOptionPane.showInputDialog("Inserisci il modello del macchinario");
							String descrizione = JOptionPane.showInputDialog("Inserisci una descrizione per il macchinario");
							boolean dimagrimento = Boolean.parseBoolean(JOptionPane.showInputDialog("Si tratta di un macchinario per il dimagrimento? "
									+ "False = N, True = S"));
							String nomeSala = JOptionPane.showInputDialog("In che sala deve essere inserito? (Da \"Sala1\" a \"Sala15\" )?");
							
							proj.insMacchCorpo(codM, marca, nome, modello, descrizione, dimagrimento, nomeSala);
						}
						
					}
					
					//END CASES
					
			}
			
			//END MENU
				
				
				
		}
	}