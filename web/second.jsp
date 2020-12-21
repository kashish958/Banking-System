

<%-- 
    Document   : index
    Created on : Sep 11, 2020, 8:06:58 AM
    Author     : user
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("userId");




 try{
    Class.forName("com.mysql.cj.jdbc.Driver");    //this is method which register the deriver//  
  
  

 }
   catch(Exception e )
     {
         System.out.println(e);
     }



%>
<h2 align="center"><font><strong>CUSTOMER LIST</strong></font></h2>
 <a href="index.jsp "><button > Back</button></a>
 
 

<table align="center" height="70%"  border-collapse="collapse"
  width= "80%"   >
<tr>

</tr>
<tr bgcolor="#4CAF50"  >
<td><b>id</b></td>
<td><b>Name</b></td>

<td><b>Email</b></td>

<td><b>CurrentBalance</b></td>
<td><b>Transfer</b></td>

</tr>

<%
try{ 
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","Demo12345");
  Statement st= con.createStatement();
    ResultSet rs  =    st.executeQuery("select * from customer"); 


while(rs.next()){
%>
<tr bgcolor="#f2f2f2">

<td ><%=rs.getInt(1) %></td> 
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getInt(4) %></td>
<td> <a href="tran.jsp "><button > Transfer</button></a>
</td>

</tr>


  


<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>

        
