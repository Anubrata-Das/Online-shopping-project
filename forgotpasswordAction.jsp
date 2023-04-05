<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email=request.getParameter("email");
String mob = request.getParameter("mobilenumber");
String newpass =request.getParameter("newpassword");

int check = 0;
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from users where email='"+email+"' and mobilenumber='"+mob+"'");
	while(rs.next()){
		check =1;
		st.executeUpdate("update users set password='"+newpass+"' where email='"+email+"' and mobilenumber='"+mob+"'");
		response.sendRedirect("forgotPasswordnew.jsp?msg=done");
	}
	if(check ==0){
		response.sendRedirect("forgotPasswordnew.jsp?msg=invalid");
	}
}
catch(Exception e){
	System.out.println(e);
}
%>