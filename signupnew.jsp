<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/sign-up.css">
    <title>Document</title>
</head>
<body>
    <marquee style="color:aquamarine;"><h1>Welcome to my Online shopping project</h1></marquee>
    <br><br>
    <div class="box1">
        <span class="borderline"></span>
        <form action="signupAction.jsp" method="post">
            <h2>Sign up</h2>
            <div class="inputbox">
                <input type="text" name="name" required>
                <span>Name</span>
                <i></i>
            </div>
            <div class="inputbox">
                <input type="email" name="email" required>
                <span>Email</span>
                <i></i>
            </div>
            <div class="inputbox">
                <input type="number" name="mobilenumber" required>
                <span>Mobile Number</span>
                <i></i>
            </div>
            <div class="inputbox">
                <input type="password" name="password" required>
                <span>Password</span>
                <i></i>
            </div>
            <input type="submit" value="signup">
            <br>
            <div class="links">
                <h4><a href="loginnew.jsp">Login</a></h4>
            </div>
            <br>
            <div class="message">
                <%
				String msg=request.getParameter("msg");
				if("valid".equals(msg)){
				%>	
				
				<marquee  style="color:aquamarine;"><h4>Successfully Registered</h4></marquee>
				<%} %>
				<%
				if("invalid".equals(msg)){
				%>	
				<marquee  style="color:red;"><h4>Some thing Went Wrong! Try Again </h4></marquee>
				<%}%>
            </div>
        </form>
    </div>
</body>
</html>