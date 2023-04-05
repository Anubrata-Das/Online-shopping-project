<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email=session.getAttribute("email").toString();
String op=request.getParameter("oldpassword");
String np=request.getParameter("newpassword");
String cp=request.getParameter("confirmpassword");

if(!np.equals(cp)){
	response.sendRedirect("changePassword.jsp?msg=notMatch");
}
else{
	int check=0;
	try{
		Connection con = ConnectionProvider.getCon();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from users where email='"+email+"' and password='"+op+"'");
		while(rs.next()){
			check=1;
			st.executeUpdate("update users set password='"+np+"' where email='"+email+"'");
			response.sendRedirect("changePassword.jsp?msg=done");
		}
		if(check==0)
			response.sendRedirect("changePassword.jsp?msg=wrong");
	}
	catch(Exception e){
		System.out.print(e);
	}
}
%>