<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email=session.getAttribute("email").toString();
String id=request.getParameter("id");
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("delete from cart where email='"+email+"' and product_id='"+id+"'");
	response.sendRedirect("myCart.jsp?msg=removed");
}
catch(Exception e){
	System.out.print(e);
}
%>