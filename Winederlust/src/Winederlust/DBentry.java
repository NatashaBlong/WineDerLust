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

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.mysql.cj.xdevapi.Statement;

import Winederlust.Users;
import Winederlust.PWCrypto;

public class DBentry {
	
	public boolean addCustomer(String f_name, String l_name, String email, String pass)
	{
		System.out.println("Attempting to Add a Customer");
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.getCurrentSession();
		wine Saved = new wine();
		Transaction tx=null;
		try 
		{
			tx = session.beginTransaction();
			Saved.setF_name(f_name);
			Saved.setL_name(l_name); 
			Saved.setPassword(PWCrypto.encrypt(pass));
			Saved.setEmail(email);
			session.save(Saved); // Save java object to database
			session.flush();
			tx.commit();
			return true;

		} catch(Exception err) {
			tx.rollback();
			System.out.println("addCustomer() Error!");
			System.out.println(err.getMessage());
			return false;
		} finally {
			if(session.isOpen()) session.close();
		}
	}

	public boolean addBirthday(int customer_id, String month, int date, int year)
	{
		System.out.println("Attempting to Add customer's birthday");
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.getCurrentSession();
		wine Saved = new wine();
		Transaction tx=null;
		try 
		{
			tx = session.beginTransaction();
			Saved.setCustomer_id(customer_id);
			Saved.setMonth(month);
			Saved.setDate(date);
			Saved.setYear(year);
			session.save(Saved); // Save java object to database
			session.flush();
			tx.commit();
			return true;

		} catch(Exception err) {
			tx.rollback();
			System.out.println("addCustomer() Error!");
			System.out.println(err.getMessage());
			return false;
		} finally {
			if(session.isOpen()) session.close();
		}
	}

	public boolean addPaymentMethod(int customer_id, String cardType, int cardNumber, int cvv)
	{
		System.out.println("Attempting to Add a Customer");
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.getCurrentSession();
		wine Saved = new wine();
		Transaction tx=null;
		try 
		{
			tx = session.beginTransaction();
			Saved.setCustomer_id(customer_id);
			Saved.setCardType(cardType);
			Saved.setCardNumber(cardNumber);
			Saved.setCVV(cvv);
			session.save(Saved); // Save java object to database
			session.flush();
			tx.commit();
			return true;

		} catch(Exception err) {
			tx.rollback();
			System.out.println("addCustomer() Error!");
			System.out.println(err.getMessage());
			return false;
		} finally {
			if(session.isOpen()) session.close();
		}
	}

	public boolean addAddress(int customer_id, String street, String city, String country, int zipcode)
	{
		System.out.println("Attempting to Add a Customer");
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.getCurrentSession();
		wine Saved = new wine();
		Transaction tx=null;
		try 
		{
			tx = session.beginTransaction();
			Saved.setCustomer_id(customer_id);
			Saved.setStreet(street);
			Saved.setCity(city);
			Saved.setCountry(country);
			Saved.setZipcode(zipcode);
			session.save(Saved); // Save java object to database
			session.flush();
			tx.commit();
			return true;

		} catch(Exception err) {
			tx.rollback();
			System.out.println("addCustomer() Error!");
			System.out.println(err.getMessage());
			return false;
		} finally {
			if(session.isOpen()) session.close();
		}
	}

	public boolean addCellar(int wine_id, int customer_id)
	{
		System.out.println("Attempting to Save a Wine");
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.getCurrentSession();
		wine Saved = new wine();
		Transaction tx=null;
		try 
		{
			tx = session.beginTransaction();
			Saved.setCustomer_id(customer_id);
			Saved.setWine_id(wine_id);
			session.save(Saved); // Save java object to database
			session.flush();
			tx.commit();
			return true;

		} catch(Exception err) {
			tx.rollback();
			System.out.println("addSaved() Error!");
			System.out.println(err.getMessage());
			return false;
		} finally {
			if(session.isOpen()) session.close();
		}
	}
	public boolean addCart(int wine_id, int customer_id)
	{
		System.out.println("Attempting to Add a wine to the cart");
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.getCurrentSession();
		wine Saved = new wine();
		Transaction tx=null;
		try 
		{
			tx = session.beginTransaction();
			Saved.setCustomer_id(customer_id);
			Saved.setWine_id(wine_id);
			session.save(Saved); // Save java object to database
			session.flush();
			tx.commit();
			return true;

		} catch(Exception err) {
			tx.rollback();
			System.out.println("addSaved() Error!");
			System.out.println(err.getMessage());
			return false;
		} finally {
			if(session.isOpen()) session.close();
		}
	}
}
