package Winederlust;

// wine class containing all needed getters and setters for entering information into &
// pulling information out of the wine database
public class wine {
	
	private int customer_id;
	private int wine_id;
	private String f_name;
	private String l_name;
	private String pass;
	private String email;
	private String month;
	private int date;
	private int year;
	private String cardType;
	private int cardNumber;
	private int cvv;
	private String street;
	private String city;
	private String country;
	private int zipcode;
	
	public int getCustomer_id() 
	{
		return customer_id;
	}
	public void setCustomer_id(int id) 
	{
		customer_id = id;	
	}
	public int getWine_id() 
	{
		return wine_id;
	}
	public void setWine_id(int id) 
	{
		wine_id = id;	
	}
	public String getF_name()
	{
		return f_name;
	}
	public void setF_name(String first)
	{
		f_name = first;
	}
	public String getL_name()
	{
		return l_name;
	}
	public void setL_name(String last)
	{
		l_name = last;
	}
	public String getPassword()
	{
		return pass;
	}
	public void setPassword(String password)
	{
		pass = password;
	}
	public String getEmail()
	{
		return email;
	}
	public void setEmail(String e_mail)
	{
		email = e_mail;
	}
	public String getMonth()
	{
		return month;
	}
	public void setMonth(String m)
	{
		month = m;
	}
	public int getDate()
	{
		return date;
	}
	public void setDate(int d)
	{
		date = d;
	}
	public int getYear()
	{
		return year;
	}
	public void setYear(int y)
	{
		year = y;
	}
	public String getCardType()
	{
		return cardType;
	}
	public void setCardType(String cType)
	{
		cardType = cType;
	}
	public int getCardNumber()
	{
		return cardNumber;
	}
	public void setCardNumber(int cNum)
	{
		cardNumber = cNum;
	}	
	public int getCVV()
	{
		return cvv;
	}
	public void setCVV(int CVV)
	{
		cvv = CVV;
	}
	public String getStreet()
	{
		return street;
	}
	public void setStreet(String Street)
	{
		street = Street;
	}
	public String getCity()
	{
		return city;
	}
	public void setCity(String City)
	{
		city = City;
	}
	public String getCountry()
	{
		return country;
	}
	public void setCountry(String Country)
	{
		country = Country;
	}
	public int getZipcode()
	{
		return zipcode;
	}
	public void setZipcode(int zip)
	{
		zipcode = zip;
	}
}
