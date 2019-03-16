<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
Class.forName("com.mysql.jdbc.Driver").newInstance();
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/voter","hack","oohack");
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from details");
while(rs.next()){
	out.println(rs.getString(3));
} 
%>