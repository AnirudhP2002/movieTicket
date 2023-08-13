package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.DbCon;
import com.dao.signDao;
import com.dao.insert;


/**
 * Servlet implementation class SignInServlet
 */
@WebServlet("/SignInServlet")
public class SignInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		try (PrintWriter out = response.getWriter()) {
			String name=request.getParameter("username");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String DOB=request.getParameter("DOB");
			String gender=request.getParameter("gender");
			
		
			signDao sig= new signDao(DbCon.getConnection());
			boolean check=sig.userLogin(email,password);
				if(check)
					{
						response.sendRedirect("signIn.jsp?userExist=true");
					}
				else
				{
					insert ins=new insert(DbCon.getConnection());
					boolean ch=ins.insertDetails(name,email,password);
					response.sendRedirect("login.jsp?userExist="+ch);
				}
	
		}
		catch (ClassNotFoundException|SQLException e) {
			
		e.printStackTrace();}
		 	
	}
	}
