package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.model.User;

public class signDao {
	private Connection con;

	private String query;
    private PreparedStatement pst;
    private ResultSet rs;

	public signDao(Connection con) {
		this.con = con;
	}
	
	public boolean userLogin(String email, String password) {
		boolean userExsist=false;
        try {
            query = "select * from admin where email=?";
            pst = this.con.prepareStatement(query);
            pst.setString(1, email);
            
            rs = pst.executeQuery();
            userExsist=rs.next();
            
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }
        return userExsist;
	}
}
