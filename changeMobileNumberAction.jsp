<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email=session.getAttribute("email").toString();
String number=request.getParameter("mobilenumber");
String pass=request.getParameter("password");

int check=0;
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from users where email='"+email+"' and password='"+pass+"'");
	
	while(rs.next()){
		check=1;
		st.executeUpdate("update users set mobilenumber='"+number+"' where email='"+email+"'");
		response.sendRedirect("changeMobileNumber.jsp?msg=done");
	}
	if(check==0){
		response.sendRedirect("changeMobileNumber.jsp?msg=wrong");
	}
	
}
catch(Exception e){
	System.out.print(e);
}
%>