package Winederlust;

import java.awt.List;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.cj.xdevapi.Statement;

// DBFilter Class containing methods to filter the wine's displayed on various pages &
// Show more information about the wines selected

public class DBfilter {

	static DBfilter instance = new DBfilter();
	static Connection dbconn;
	ResultSet results = null;
	PreparedStatement sql;
	String dpwd = null;
	StringBuilder sb = new StringBuilder();
	static String dbPath="jdbc:mysql://localhost:3306/wineDB?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	public static ArrayList<String> filtetedWines = new ArrayList<String>();
	public static boolean tf = false;
	public static int ID;

	public static DBfilter getInstance() // Creates a DBfilter instance
	{
		if (instance == null) 
		{
			instance = new DBfilter();
		}
		return instance;
	}
	
	public static boolean logOut()
	{
		ID = 0000;
		return true;
	}
	
	public static boolean initDisplay() // initDisplay Method to show an initial list of wines for the user
	{
		try 
		{
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			try 
			{		
				filtetedWines.clear();
				dbconn = DriverManager.getConnection(dbPath,"root","12345678");
				java.sql.Statement st = dbconn.createStatement();
				ResultSet results = st.executeQuery("SELECT * FROM wine INNER JOIN notes USING (wine_id) INNER JOIN origin USING (wine_id) INNER JOIN pairing USING (wine_id)");
				//ResultSetMetaData md = results.getMetaData();
				System.out.println(results);
				System.out.println("The connection has been sucessfully established");
				while(results.next()) {
					for (int i = 1; i <= 16; i++)
					{
						filtetedWines.add(results.getString(i)); // Adding the string in position i to the filteredWines ArrayList
					}
				}
				System.out.println("Sucessfully Ran initDisplay()");
				dbconn.close();
				return true;
			}
			catch (Exception s)
			{
				System.out.println("newConnection() Error while gaining the connection!");
				System.out.println(s.getMessage());
				return false;
			}
		}
		catch (Exception err)
		{
			System.out.println("newConnection() Error while setting up the jbdc driver!");
			System.out.println(err.getMessage());
			return false;
		}
	}
	
	String[] types = {"wine.price <= ", "wine.wine_type = ", "wine.style = ", "wine.vintage <= ","wine.variety = ", "wine.rating >= ", "notes.note1 = ", "origin.region = ", "origin.country = ", "pairing.food_pairing1 = "};
	public boolean filterSelection(String price, String wine_type, String style, String vintage, String variety, String rating, String note, String region, String country, String food_pairing)  throws SQLException {
		// DBfilter method to filter the wines on display
		ArrayList<String> vars = new ArrayList<String>(); // vars ArrayList containing the variables inout into the method
		ArrayList<String> cases = new ArrayList<String>(); // cases ArrayList containing the values of the non-null variables (used to filter the wine results)
		ArrayList<String> tables = new ArrayList<String>(); // cond ArrayList containing the table names of the conditions that need to be met
		String Conditions = ""; // Conditions string to add conditions to the SQL statement
		filtetedWines.clear();
		// Adding the input variables to the vars array list
		vars.add(price);
		vars.add(wine_type);
		vars.add(style);
		vars.add(vintage);
		vars.add(variety);
		vars.add(rating);
		vars.add(note);
		vars.add(region);
		vars.add(country);
		vars.add(food_pairing);
		for(int i=0; i < vars.size(); i++) // For each item in vars
		{
			if (vars.get(i).equals("null")) // if it is not null add it to the cases ArrayList
			{

			}
			else
			{
				cases.add(vars.get(i));
				tables.add(types[i]);	
			}
		}
		for(int i = 0; i < cases.size(); i++) // Iterate through the cases array list
		{
			if (i == 0) // If i is 0 then add WHERE before the condition
			{	
				if (tables.get(i) == "notes.note1 = ")
				{
					Conditions += "WHERE " + tables.get(i) + "'" + cases.get(i) + "'" + " OR " + "notes.note2 = " + "'" + cases.get(i) + "'";
				}
				else if (tables.get(i) == "pairing.food_pairing1 = ")
				{
					Conditions += "WHERE " + tables.get(i) + "'" + cases.get(i) + "'" + " OR " + "pairing.food_pairing2 = " + "'" + cases.get(i) + "'" + " OR pairing.food_pairing3 = " + "'" + cases.get(i) + "'";
				}
				else
				{
					Conditions += " WHERE " + tables.get(i) + "'" + cases.get(i) +"'";
				}
			}
			else // Otherwise add an AND before the additional condition
			{
				if (tables.get(i) == "notes.note1 = ")
				{
					Conditions += " AND " + tables.get(i) + "'" + cases.get(i) + "' OR " + "notes.note2 = " + "'" + cases.get(i) + "'";
				}
				else if (tables.get(i) == "pairing.food_pairing1 = ")
				{
					Conditions += " AND " + tables.get(i) + "'" + cases.get(i) + "' OR " + "pairing.food_pairing2 = " + "'" + cases.get(i) + "' OR pairing.food_pairing3 = '" + cases.get(i) + "'";
				}
				else
				{
					Conditions += " AND " + tables.get(i) + "'" + cases.get(i) + "'";
				}
			}
		}
		System.out.println("SELECT * FROM wine INNER JOIN notes USING (wine_id) INNER JOIN pairing USING (wine_id) INNER JOIN origin USING (wine_id)" + Conditions);
		try 
		{
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			try 
			{	
				filtetedWines.clear();
				dbconn = DriverManager.getConnection(dbPath,"root","12345678");
				java.sql.Statement st = dbconn.createStatement();
				ResultSet results = st.executeQuery("SELECT * FROM wine INNER JOIN notes USING (wine_id) INNER JOIN pairing USING (wine_id) INNER JOIN origin USING (wine_id)" + Conditions);
				//ResultSetMetaData md = results.getMetaData();
				System.out.println("The connection has been sucessfully established");
				while(results.next()) {
					for (int i = 1; i <= 16; i++)
					{
						filtetedWines.add(results.getString(i)); // Adding the string in position i to the filteredWines ArrayList
					}
				}
				dbconn.close();
				System.out.println("Sucessfully Ran filterSelection()");
				return true;
			}
			catch (Exception s)
			{
				System.out.println("newConnection() Error while gaining the connection!");
				System.out.println(s.getMessage());
				return false;
			}
		}
		catch (Exception err)
		{
			System.out.println("newConnection() Error while setting up the jbdc driver!");
			System.out.println(err.getMessage());
			return false;
		}
	}
	
	public boolean selectedWine (String wine_name) // Selected wine method to display more information about the wine selected by the user
	{
		try 
		{
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			try 
			{		
				dbconn = DriverManager.getConnection(dbPath,"root","12345678");
				java.sql.Statement st = dbconn.createStatement();
				ResultSet results = st.executeQuery("SELECT * FROM wine INNER JOIN notes USING (wine_id) INNER JOIN pairing USING (wine_id) INNER JOIN origin USING (wine_id) WHERE wine.wine_name='" + wine_name + "'");
				//ResultSetMetaData md = results.getMetaData();
				System.out.println(results);
				System.out.println("The connection has been sucessfully established");
				String notes ="";
				String pairing = "";
				filtetedWines.clear();
				while(results.next()) {

					for (int i = 1; i <= 16; i++) {
						
						if (i == 9 || i == 10) {

							notes += results.getString(i) + " , ";
						}
						if (i == 11 || i == 12 || i == 13) {

							pairing += results.getString(i) + " , ";
						}
						else
						{
							filtetedWines.add(results.getString(i));
						}
					}
					filtetedWines.add(notes.substring(0, notes.length() - 2)); // 12
					filtetedWines.add(pairing.substring(0, pairing.length() - 2)); // 13
				}
				dbconn.close();
				System.out.println("Sucessfully ran selectedWine()");
				return true;
			}
			catch (Exception s)
			{
				System.out.println("newConnection() Error while gaining the connection!");
				System.out.println(s.getMessage());
				return false;
			}
		}
		catch (Exception err)
		{
			System.out.println("newConnection() Error while setting up the jbdc driver!");
			System.out.println(err.getMessage());
			return false;
		}
	}

	public boolean userLookup(String Email, String Password) {
		try 
		{	
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			try {
				dbconn = DriverManager.getConnection(dbPath,"root","12345678");
				java.sql.Statement st = dbconn.createStatement();
				ResultSet results = st.executeQuery("SELECT * FROM customer");
				while(results.next()) {
					ID = results.getInt("customer_id");
					String E = results.getString("email");
					String Pass = results.getString("pass");	

					if ((E.equals(Email)) && (Pass.equals(PWCrypto.encrypt(Password))))
					{
						tf = true;
					}
					else
					{
						tf = false;
					}
					if (tf == true)
					{
						break;
					}
				}
				dbconn.close();
			}
			catch ( Exception err ) 
			{
				System.out.println("Error! userLookup()!");
				System.out.println(err.getMessage());
				return false;
			}
		} catch ( Exception err ) 
		{
			System.out.println("Error! userLookup()!");
			System.out.println(err.getMessage());
			return false;
		}
		return tf;
	}
}
