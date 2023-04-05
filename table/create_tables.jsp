<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
try{
	Connection con = ConnectionProvider.getCon();
	Statement stmt = con.createStatement();
	String q1 = "create table users(name varchar2(20),email varchar2(30)primary key,mobilenumber number(10),password varchar2(12),address varchar2(20),city varchar2(10),state varchar2(10),country varchar2(10))";
	String q2 = "create table product(id number(4),name varchar2(20),category varchar2(20),price number(5),active varchar2(3),primary key(id))";
	String q3 = "create table cart(email varchar2(20),product_id number(2),quantity number(2),price number(5),total number(10),address varchar2(30),city varchar2(20),state varchar2(10),country varchar2(18),mobilenumber number(10),orderdate date,deliverydate date,paymentmethod varchar2(20),transactionid varchar2(10),status varchar2(10))";
	String q4="create table message(id number(3),email varchar2(20),subject varchar2(50),body varchar2(200),primary key(id))";
	//System.out.println(q1);
	//System.out.println(q2);
	//System.out.println(q4);
	//stmt.execute(q1);
	//stmt.execute(q2);
	stmt.execute(q3);
	System.out.println("Table created");
	con.close();
	}
catch(Exception e){
	System.out.print(e);
	}
%>