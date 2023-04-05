<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
     <form action="forgotpasswordAction.jsp" method="post">
     <input type="email" name="email" placeholder="Enter Email" required>
     <input type="number" name="mobilenumber" placeholder="Enter mobile number" required>
     <input type="password" name="newpassword" placeholder="Enter your new password" required>
     <input type="submit" value="Save">
     </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
   <%
   String msg = request.getParameter("msg");
   if("done".equals(msg))
   {%>
	   <h1>Password Changed Successfully!</h1> 
   	   
   <%}%>
   <%
   if("invalid".equals(msg))
   {%>
	   <h1>Some thing Went Wrong! Try Again !</h1>
   <% }%>



    <h3>Online Shopping</h3>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>
</body>
</html>