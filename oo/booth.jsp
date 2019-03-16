<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="java.io.*" %>
<%
// Class.forName("com.mysql.jdbc.Driver").newInstance();
// java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/voter","hack","oohack");
String vtr=request.getParameter("vtr");
int n=Integer.parseInt(vtr);
switch(n%10){
	case 0:out.print("Voter id:"+vtr+"\nBooth ID: BTRI1345");
			break;
	case 1:out.print("Voter id:"+vtr+"\nBooth ID: BTRI1346");
			break;
	case 2:out.print("Voter id:"+vtr+"\nBooth ID: BTRI1347");
			break;
	case 3:out.print("Voter id:"+vtr+"\nBooth ID: BTRI1348");
			break;
	case 5:out.print("Voter id:"+vtr+"\nBooth ID: BTRI1350");
			break;
	case 4:out.print("Voter id:"+vtr+"\nBooth ID: BTRI1349");
			break;
	case 6:out.print("Voter id:"+vtr+"\nBooth ID: BTRI1352");
			break;
	case 8:out.print("Voter id:"+vtr+"\nBooth ID: BTRI1353");
			break;
	case 7:out.print("Voter id:"+vtr+"\nBooth ID: BTRI1354");
			break;
	case 9:out.print("Voter id:"+vtr+"\nBooth ID: BTRI1355");
			break;
}
%>