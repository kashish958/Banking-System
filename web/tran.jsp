<%-- 
    Document   : tran
    Created on : Dec 18, 2020, 7:32:43 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Money transfer</title>
    </head>
    <body>  
<img src="im/img.jpg" width = "100%" height="300px">
        <h1>Enter the details for transferring money  </h1>
         <a href="second.jsp "><button > Back</button></a>

        <br>
       <form action ="yup" method="post"> 
           
            <p> SEND TO :</p>
	  <input type = "text" name = "name" value = "" maxlength = "100" placeholder="Enter  Name.." />
     
	  
	  <p> Amount :</p>
	  <input type = "text" name = "amount" value = "" maxlength = "100" placeholder="Enter Amount.."/>
     
         
	  <p> ID :</p>
	  <input type = "text" name = "id" value = "" maxlength = "100" placeholder="Enter Id.."/>
      
       <button>TRANSFER</button>
       </form>
    </body>
    
</html>
