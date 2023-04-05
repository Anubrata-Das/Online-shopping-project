<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
//String id = request.getParameter("id");
String name = request.getParameter("name");
String category = request.getParameter("category");
String price = request.getParameter("price");
String active = request.getParameter("active");

try{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("insert into product(id,name,category,price,active) values(s2.nextval,?,?,?,?)");
	//ps.setString(1, id);
	ps.setString(1, name);
	ps.setString(2, category);
	ps.setString(3, price);
	ps.setString(4, active);
	ps.executeUpdate();
	response.sendRedirect("addNewProduct.jsp?msg=done");
}
catch(Exception e){
	System.out.print(e.getMessage());
	response.sendRedirect("addNewProduct.jsp?msg=wrong");
}
%>