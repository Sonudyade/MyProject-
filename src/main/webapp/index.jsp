<html>
<body>

<script type="text/javascript">

</script>
	
	 <style type="text/css">
	 body{
	 margin:0px auto;
	 width:50%;
	 background-image: url('https://wallpaperaccess.com/full/1385386.jpg');
	  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
	 
	 
	 }
	   
	   #header{
	   background-color: #ffcce0;
	   padding: 20px;

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
 div {
            padding: 10px 0;
         }
	   
	   #header a {
		   color: black;
		   float: right;
		   margin-right: 20px;
	   }
	 
	   #header table{
	      width: 100%;
	   }
	    #footer{
                padding: 5px;
                background-color: gray;
                color: skyblue;
                text-align:left;
	   
	   </style>
	
	
	</head>
	<body>
	  <div id= "header">
	  <table>
	  <tr>
			  <td>
			   	   <h2>MyApp Application</h2>
			  </td>
			  <td id = "LoginLink" >
			  	   <a href="login.jsp">Login</a>
			       <a href="login.jsp">SignIn</a>
			       <a href="forgetPassword.jsp">Forget password</a>
			  </td>
	      </tr>
	    </table>
	  </div>
	  <div class="container">
	  <div style="text-align:left;">
	    <div><h2>Registration Details</h2> <h2>SignUp</h2>
	   </div>
	   

          <form action="register" method="post">
			     <label>FirstName :</label>
			     <input type="text" id="first_name" name = "firstName" 
			     pattern="[A-Za-z]{3-10}"title="three to ten letter firstName"><br>
			     
			     <label>SureName :</label>
			     <input type="text" name = "sureName"
			      pattern="[A-Za-z]{3-10}"title="three to ten letter sureName"> <br>
			     
			     <label>Email    :</label>
			     <input type="email" name = "email"> <br>
			     
			     <label>Password :</label>
			     <input type="password" name = "password"
			     pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"> <br>
			     
			     <label>CnfPassword :</label>
			     <input type="password" name = "cnfPassword"
    			  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"> <br>
			   
			         
				 <lable> DOB</lable>
	             <input type="datetime-local"name="dob"> <br>
	             
	             <label>Contact :</label>
			     <input type="tel" name = "contact" 
			     pattern="[0-9]{10}"> <br>
			     
			     <label>City :</label>
			     <input type="text" name = "city"
			      pattern="[A-Za-z]{3-10}"title="three to ten letter city"> <br>
			     
			     <label>State :</label>
			     <input type="text" name = "state"
			      pattern="[A-Za-z]{3-10}"title="three to ten letter state"> <br>
			     
			     <label>Country :</label>
			     <input type="text" name = "country"
			      pattern="[A-Za-z]{3-10}"title="three to ten letter country"> <br>
			     
			     <label>ZipCode :</label>
			     <input type="number" name = "zipcode" 
			     pattern="[0-9]{6}" ><br>
			     
			      <label>Profile</label>
				    <input type="checkbox" name="profile" value="Customer">Customer
				    <input type="checkbox" name="profile" value="Admin">Admin
				    <input type="checkbox" name="profile" value="Worker">Worker<br>
							     
			   
	
				  <lable> Agree Terms</lable>
				  <input type="radio" name="Terms" value="agree"checked>Agree
				  <input type="radio" name="Terms" value="Not agree"> Not Agree <br>
							   
			     
			     <input type="submit" value="SignUp">
			     <input type="reset" value="Reset">
			 </form>
			
            </div>
	    </div>
	            <div id="footer">
            <h4>CopyRight</h4>
            <address> Copyright © 1994-2016, Oracle and/or its affiliates. All rights reserved.</address>
            <address>License Restrictions Warranty/Consequential Damages Disclaimer</address>
            
      </div>

</body>
</html>
