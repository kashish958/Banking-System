package com.swagG;



//import jakarta.servlet.ServletException;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.sql.Connection;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class kol extends HttpServlet {

    
    public void service(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException 
    {
        String name = req.getParameter("name");
        String mobile = req.getParameter("mobile");
                 String mail = req.getParameter("mail");
        String comment = req.getParameter("comment");
if(name.equals("")||mobile.equals("")||mail.equals("")||comment.equals(""))
{
    res.sendRedirect("ba.jsp");
}
else{
    res.sendRedirect("bookconfirm.jsp");
}   
     
try{
     md d= new md();
    Connection con = d.getc();
   Statement st= con.createStatement();
   st.executeUpdate("insert into appoint(name,mail,mobile,comment)values('"+name+"','"+mail+"','"+mobile+"','"+comment+"')"); 
}

catch(Exception e){
    System.out.print(e);
    
}
}



    }