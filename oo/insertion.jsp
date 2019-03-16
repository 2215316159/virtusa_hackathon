<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="java.io.*" %>
<%
Class.forName("com.mysql.jdbc.Driver").newInstance();
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/voter","hack","oohack");
//for entering the data into db


Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from idcount where dummy='X'");
rs.next();
int n=rs.getInt(1);



PreparedStatement ps=con.prepareStatement("insert into details values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
String fname=request.getParameter("fir_name");
String mname=request.getParameter("mid_name");
String lname=request.getParameter("l_name");
String age=request.getParameter("age");
String gen=request.getParameter("gen");
String dob=request.getParameter("dob");
String phn=request.getParameter("phn");
String aid=request.getParameter("ano");
String city=request.getParameter("cty");
String cost=request.getParameter("const");
String pin=request.getParameter("pin");
String dad_name=request.getParameter("f_name");
String mom_name=request.getParameter("m_name");
String occ=request.getParameter("occ");

ps.setInt(1, n);
ps.setString(2, fname);
ps.setString(3, mname);
ps.setString(4, lname);
//caluclating age from dob
ps.setString(5, age);
ps.setString(6, phn);
ps.setString(7, aid);
ps.setString(8, pin);
ps.setString(9, city);
ps.setString(10, cost);
ps.setString(11, mom_name);
ps.setString(12, dad_name);
ps.setString(13, dob);
ps.setString(14, "1");
ps.setString(15, gen);

ps.executeUpdate();

//for voder_id number and update
n=n+1;
String temp="update idcount set count="+n+" where dummy='X'";
Statement st2=con.createStatement();
ResultSet rs2=st2.executeQuery("select * from idcount");
rs2.next();
st2.executeUpdate(temp);
out.println("<b>Your Voter id number is "+(n-1)+"</b>");
%>
