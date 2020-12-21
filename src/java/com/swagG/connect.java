  
package com.swagG;



import java.io.IOException;

import java.sql.Connection;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.swagG.md;

public class connect extends HttpServlet {

    
    public void service(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException 
    {
        String name = req.getParameter("name");
        String amount = req.getParameter("amount");
        String  id = req.getParameter("id");    
if(name.equals("")||amount.equals("") ||id.equals(""))
{
    res.sendRedirect("tran.jsp");
}
else{
    res.sendRedirect("fin.jsp");
}
     
try{
     md d = new md();
Connection con = d.getc();
   Statement st= con.createStatement();
   st.executeUpdate("update customer set currentbalance = currentbalance + = where CustomerID = ?" +amount +id); 
}

catch(Exception e){
  System.out.print(e);}
    

    
    }
}