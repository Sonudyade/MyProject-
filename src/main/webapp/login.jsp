<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
	<head>
	   <style type="text/css">
	    body{
	 margin:0px auto;
	 width:25%;
	 background-image: url('https://nayainsurancetax.com/wp-content/uploads/2019/01/insurance-quote-form-background-fontana-ca.jpg');
	 
	 
	 }
	 
	  .container {
	    padding: 50px;
	  background-color:skyblue;
	   background-image: url('https://th.bing.com/th/id/OIP.R4VQwmANq7Ft-ntsZLMJIgHaEw?pid=ImgDet&w=732&h=471&rs=1')
	  
	  
	}
	input[type=text], input[type=password], input[type=number],input[type=email],input[type=datetime-local],input[type=tel],textarea {
	  width: 100%;
	  padding: 10px;
	  margin: 5px 0 25px 0;
	  display: inline-block;
	  border: none;
	  background: #f1f1f1;
}
	  input[type=text]:focus, input[type=password]:focus {
  background-color: orange;
  outline: none;
}
	   
	   #header{
	   background-color: gray;
	   padding: 10px;
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
			  <td id = "SignUpLink" >
			       <a href="index.jsp">SignUp</a>
			       <a href="forgetPassword.jsp">Forget password</a>
			  </td>
	      </tr>
	    </table>
	  </div>
	   <div class="container">
	  <div style="text-align:left;">
	    <div>
	       <h2>Login</h2>
	   </div>
	   <div>
	   
	      <h4>${responseMSG}</h4>
          <form action="login" method="post">
			     
			     
			     <label>Email :</label>
			     <input type="email" name = "email"><br>
			     
			     <label>Password :</label>
			     <input type="password" name = "password"><br>
			     
			     <label>Profile</label>
				    <input type="checkbox" name="profile" value="Customer">Customer
				    <input type="checkbox" name="profile" value="Admin">Admin
				    <input type="checkbox" name="profile" value="Worker">Worker<br>
							     
			     
			     
			     <input type="submit" value="signIn">
			     <input type="reset" value="Reset">
			     
			      
			   
			 </form>
			 </div>
            </div>
	    </div>

	 
</body>
</html>
