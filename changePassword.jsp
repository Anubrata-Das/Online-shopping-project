<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Message Us</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("notMatch".equals(msg)){	
%>
<h3 class="alert">New password and Confirm password does not match!</h3>
<%} %>
<%
if("wrong".equals(msg)){	
%>
<h3 class="alert">Your old Password is wrong!</h3>
<%} %>
<%
if("done".equals(msg)){	
%>
<h3 class="alert">Password change successfully!</h3>
<%} %>
<%
if("invalid".equals(msg)){	
%>
<h3 class="alert">Some thing went wrong! Try again!</h3>
<%} %>
<form method="post" action="changePasswordAction.jsp">
<h3>Enter Old Password</h3>
 <input class="input-style" type="password" name="oldpassword" placeholder="Enter old Password" required>
  <hr>
 <h3>Enter New Password</h3>
  <input class="input-style" type="password" name="newpassword" placeholder="Enter new Password" required>
 <hr>
<h3>Enter Confirm Password</h3>
 <input class="input-style" type="password" name="confirmpassword" placeholder="Confirm your Password" required>
<hr>
<button class="button" type="submit" value="">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</html>