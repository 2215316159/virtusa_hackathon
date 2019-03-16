<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="java.io.*" %>
<%
Class.forName("com.mysql.jdbc.Driver").newInstance();
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/voter","hack","oohack");
String val = request.getParameter("vote");
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from details where voter_id="+val+" and status=1");
if(!rs.isBeforeFirst()){
	out.print("Invalid Voter ID");
}else{
rs.next();
%>
<html>
<head>
	<style type="text/css">
		.dot{
			height: 10px;
			width: 10px;
			background-color: #00ff00;
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
</head>
<body>
<table>
	<tr>
		<td>Voter Id :</td>
		<td colspan="4"><%out.print(rs.getString("voter_id"));%></td>
		<td><span class="dot"></span>Active</td>
	</tr>
	<tr>
		<td>First Name :</td>
		<td><% out.print(rs.getString("f_name"));%></td>
		<td>Middle Name:</td>
		<td><%out.print(rs.getString("m_name"));%></td>
		<td>Last Name:</td>
		<td><%out.print(rs.getString("l_name"));%></td>
	</tr>
	<tr>
		<td>Father Name:</td>
		<td colspan="2"><%out.print(rs.getString("dad_name"));%></td>
		<td>Mother Name:</td>
		<td colspan="2"><%out.print(rs.getString("mom_name"));%></td>
	</tr>
	<tr>
		<td>Age:</td>
		<td><%out.print(rs.getString("age"));%></td>
		<td>Gender:</td>
		<td><%out.print(rs.getString("gender")); %></td>
		<td>Phone Number:</td>
		<td><%out.print(rs.getString("phn"));%></td>
	</tr>
	<tr>
		<td>City:</td>
		<td><%out.print(rs.getString("city"));%></td>
		<td>Constituency:</td>
		<td><%out.print(rs.getString("const"));%></td>
		<td>Pin Code:</td>
		<td><%out.print(rs.getString("pincode"));%></td>
	</tr>
</table>
</body>
</html>
<%}%>