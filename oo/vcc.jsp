<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="java.io.*" %>
<html>
<head><title>Display Info</title></head>
<style type="text/css">
	#gdot{
			height: 10px;
			width: 10px;
			background-color: #00ff00;
			border-radius: 50%;
			display: inline-block;
		}
	#rdot{
			height: 10px;
			width: 10px;
			background-color: #ff0000;
			border-radius: 50%;
			display: inline-block;
		}
	table{
            border-collapse: collapse;
        }
        tr:nth-child(odd){
            background-color:darkgrey;
        }
</style>
<body>
<table border="1">
<%
Class.forName("com.mysql.jdbc.Driver").newInstance();
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/voter","hack","oohack");
String city=request.getParameter("cty");
String cnst=request.getParameter("const");
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from details where city='"+city+"' and const='"+cnst+"'");
%>
<tr>
	<th>Voter id:</th>
	<th>First Name:</th>
	<th>Last Name:</th>
	<th>Age:</th>
	<th>Gender:</th>
	<th>Status:</th>
</tr>

<%
try{
while(rs.next()){
out.print("<tr>");
out.print("<td>"+rs.getString(1)+"</td>");
out.print("<td>"+rs.getString(2)+"</td>");
out.print("<td>"+rs.getString(4)+"</td>");
out.print("<td>"+rs.getString(5)+"</td>");
out.print("<td>"+rs.getString(15)+"</td>");
String s1=rs.getString(14);
String s2="1";
if(s1.equals(s2)){
		
		out.print("<td><span id='gdot'></span> <p>Active</p></td>");
	}
	else{
	
		out.print("<td><span id='rdot'></span> <p>Not Active</p></td>");
  	}		
}
out.print("</tr>");
}
catch(Exception e){
	out.print("No Records found");
}
%>

</table>
</body>
</html>