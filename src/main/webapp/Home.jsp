<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
	<head>
	 <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,initial-scale=1">
	   <style type="text/css">
	   
	   #header{
	   background-color: skyblue;
	   padding: 10px;
	   }
	   #SignUpLink{
	   text-align : right;
	   margin-right: 20px;
	   }
	   
	    #header a {
		   color: black;
		   float: right;
		   margin-right: 20px;
	   }
	   
	   #header table{
	      width: 100%;
	   }
	   
	   </style>
	
	
	</head>
	<body>
	  <div id= "header">
	  <table>
	  <tr>
			  <td>
			   	   <h2>MyApp</h2>
			  </td>
			  <td >
			      <a href="index.jsp">SignUp</a>
			      <a href="getAllTicket.jsp">getTicket</a>
			       <a href="createNewTicket.jsp">CreateTicket</a>
				  <div id = "SignUpLink">
				      <a href="getMyProfile/${responseMSG}">MyProfile </a>
			
				     
			      </div>
			  </td>
			  
	      </tr>
	    </table>
	  </div>
     <h4>Welcome${responseMSG}</h4>
     <div>
	     <h3>Customer Profile details</h3> 
	            	<div>Email: ${dto.Email}</div>
					<div>Issue: ${dto.Issue}</div>
					<div>Model: ${dto.Model}</div>
					<div>Status: ${dto.Status }</div>
					<div>CreateDate: ${dto.Createdate}</div>

	     </div>
     
</body>
</html>