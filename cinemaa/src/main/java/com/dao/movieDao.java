package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.model.moviee;

public class movieDao {
	private Connection con;

	private String query;
    private PreparedStatement pst;
    private ResultSet rs;
    
    public movieDao(Connection con) {
		super();
		this.con = con;
	}
    
    public List<moviee> getAllProducts(){
    	List<moviee> mov=new ArrayList<>();
    	try {
    		query="select * from movie";
    		pst=this.con.prepareStatement(query);
    		rs=pst.executeQuery();
    		while(rs.next())
    		{
    			moviee row=new moviee();
    			row.setId(rs.getInt("id"));
                row.setName(rs.getString("name"));
                row.setCategory(rs.getString("category"));
                row.setView(rs.getString("view"));
                
                mov.add(row);
    		}
    		
    	}
    	catch(SQLException e) {
    		e.printStackTrace();
    		System.err.print(e.getMessage());
    	}
    	return mov;
    }
}
