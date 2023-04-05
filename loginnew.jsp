<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/login.css">
    <title>Document</title>
</head>
<body>
    <marquee style="color:aquamarine;" ><h1>Welcome to my Online shopping project</h1></marquee>
    <br><br><br><br>
    <div class="box">
        <span class="borderline"></span>
        <form  action="loginAction.jsp" method="post">
            <h2>Sign in</h2>
            <div class="inputbox">
                <input type="email" name="email"  required>
                <span>Email</span>
                <i></i>
            </div>
            <div class="inputbox">
                <input type="password" name="password"  required>
                <span>Password</span>
                <i></i>
            </div>
            <div class="links">
                <a href="forgotPasswordnew.jsp">Forgot Password?</a>
                <a href="signupnew.jsp">SignUp</a>
            </div>
            <input type="submit" value="Login">
            <br>
            <div class="message">
                  <%
				  String msg = request.getParameter("msg");
				  if("notexist".equals(msg))
				  {
				   %>  
				   <marquee  style="color:red;"><h4>Incorrect Username or Password</h4></marquee>
				  <%}%>
				  <%if("invalid".equals(msg))
				  {%>
					  <marquee  style="color:red;"><h4>Some thing Went Wrong! Try Again </h4></marquee>
				  <%} %>
            </div>
        </form>
    </div>
</body>
</html>