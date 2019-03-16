<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="java.io.*" %>
<%
Class.forName("com.mysql.jdbc.Driver").newInstance();
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/voter","hack","oohack");
String vot=request.getParameter("vtr");
String ncity=request.getParameter("cty");
String nconst=request.getParameter("const");
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from details where voter_id="+vot+"");
rs.next();
if(rs.getString(9).equals(ncity) && rs.getString(10).equals(nconst))
{
	out.print("There are no changes");
}
else
{
	String temp="update details set status='0' where voter_id='"+vot+"'";
Statement st2=con.createStatement();
ResultSet rs2=st2.executeQuery("select * from details");
rs2.next();
st2.executeUpdate(temp);



PreparedStatement ps=con.prepareStatement("insert into details values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
ps.setInt(1, Integer.parseInt(rs.getString(1)));
ps.setString(2, rs.getString(2));
ps.setString(3, rs.getString(3));
ps.setString(4, rs.getString(4));
//caluclating age from dob
ps.setString(5, rs.getString(5));
ps.setString(6, rs.getString(6));
ps.setString(7, rs.getString(7));
ps.setString(8, rs.getString(8));
ps.setString(9, ncity);
ps.setString(10, nconst);
ps.setString(11, rs.getString(11));
ps.setString(12, rs.getString(12));
ps.setString(13, rs.getString(13));
ps.setString(14, "1");
ps.setString(15, rs.getString(15));

ps.executeUpdate();
out.print("Succesfully Updated");
}
%>