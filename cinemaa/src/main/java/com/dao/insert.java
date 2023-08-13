package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class insert {
	private Connection con;

	private String query;
    private PreparedStatement pst;
    private ResultSet rs;
	public insert(Connection con)
	{
		this.con=con;
	}
	public boolean insertDetails(String name,String email,String password) {
	//	System.out.println(name+"\n"+email+"\n"+password);
		try {
		query="insert into admin(email,name,password)"+"VALUES(?,?,?)";
		pst=con.prepareStatement(query);
		pst.setString(1,email);
		pst.setString(2, name);
		pst.setString(3, password);
		
		pst.execute();
	}
	catch(SQLException e) {}	

	return true;
}}
