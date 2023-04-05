<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/forgotpassword.css">
    <title>Document</title>
</head>
<body>
    <div class="container">
    <div class="login-box">
        <h2>Forgot Password</h2>
        <form action="forgotpasswordAction.jsp" method="post">
            <div class="input-box">
                <input type="email" name="email"  required>
                <label for="">Email</label>
            </div>
            <div class="input-box">
                <input type="number" name="mobilenumber"  required>
                <label for="">Mobile number</label>
            </div>
            <div class="input-box">
                <input type="password" name="newpassword" required>
                <label for="">New Password</label>
            </div>
            <div class="forgot-pass">
                
            </div>
            <button type="submit" class="btn">Save</button>
            <div class="signup-link">
                <a href="loginnew.jsp">Login</a>
            </div >
            <div class="message">
               <%
			   String msg = request.getParameter("msg");
			   if("done".equals(msg))
			   {%>
				   <p style="color:aquamarine;">Password Changed Successfully!</p> 
			   	   
			   <%}%>
			   <%
			   if("invalid".equals(msg))
			   {%>
				   <p  style="color:red;">Some thing Went Wrong! Try Again !</p>
			   <% }%>
            </div>
        </form>
    </div>
    <span style="--i:0;"></span>
    <span style="--i:1;"></span>
    <span style="--i:2;"></span>
    <span style="--i:3;"></span>
    <span style="--i:4;"></span>
    <span style="--i:5;"></span>
    <span style="--i:6;"></span>
    <span style="--i:7;"></span>
    <span style="--i:8;"></span>
    <span style="--i:9;"></span>
    <span style="--i:10;"></span>
    <span style="--i:11;"></span>
    <span style="--i:12;"></span>
    <span style="--i:13;"></span>
    <span style="--i:14;"></span>
    <span style="--i:15;"></span>
    <span style="--i:16;"></span>
    <span style="--i:17;"></span>
    <span style="--i:18;"></span>
    <span style="--i:19;"></span>
    <span style="--i:20;"></span>
    <span style="--i:21;"></span>
    <span style="--i:22;"></span>
    <span style="--i:23;"></span>
    <span style="--i:24;"></span>
    <span style="--i:25;"></span>
    <span style="--i:26;"></span>
    <span style="--i:27;"></span>
    <span style="--i:28;"></span>
    <span style="--i:29;"></span>
    <span style="--i:30;"></span>
    <span style="--i:31;"></span>
    <span style="--i:32;"></span>
    <span style="--i:33;"></span>
    <span style="--i:34;"></span>
    <span style="--i:35;"></span>
    <span style="--i:36;"></span>
    <span style="--i:37;"></span>
    <span style="--i:38;"></span>
    <span style="--i:39;"></span>
    <span style="--i:40;"></span>
    <span style="--i:41;"></span>
    <span style="--i:42;"></span>
    <span style="--i:43;"></span>
    <span style="--i:44;"></span>
    <span style="--i:45;"></span>
    <span style="--i:46;"></span>
    <span style="--i:47;"></span>
    <span style="--i:48;"></span>
    <span style="--i:49;"></span>
    <span style="--i:50;"></span>
    <span style="--i:51;"></span>
    <span style="--i:52;"></span>
    <span style="--i:53;"></span>
    <span style="--i:54;"></span>
    <span style="--i:55;"></span>
    <span style="--i:56;"></span>
    <span style="--i:57;"></span>
    <span style="--i:58;"></span>
    <span style="--i:59;"></span>
</div>
</body>
</html>