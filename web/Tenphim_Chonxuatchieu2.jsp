<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%@page import="java.sql.*"%>
<%@ page import="net.sourceforge.jtds.util.*"%>
<title>Insert title here</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="ourCompany-bg"><!--Our Company Part Starts -->
<div id="ourCompany-part1">
<form>
<%
Connection connection = null;
String data = "jdbc:jtds:sqlserver://localhost:1433/Quanlybanvephim";
String userName = "sa";
String passWord = "123";
String JDBC_Driver = "net.sourceforge.jtds.jdbc.Driver";
Statement st = null;
Class.forName(JDBC_Driver);
connection = DriverManager.getConnection(data, userName, passWord);
st = connection.createStatement();
%>



<fieldset><legend> <font face="Arial " color="black"
	size="5"> Tên phim </font></legend>
<table width=100%>
	<% 
          String sql1 ="select  distinct TenPhim, Phim.MaPhim from LichChieu inner join XuatChieu on  LichChieu.MaXuatChieu=XuatChieu.MaxuatChieu inner join Phim on Xuatchieu.MaPhim=Phim.MaPhim where NgayChieu>=(getdate())";
          ResultSet rs1 = st.executeQuery(sql1);
          while(rs1.next())
          {
          %>
	<tr class="ourCompany-list1">
		<td align=left><a
			href="Xuatchieu_Chonxuatchieu2.jsp?MaPhim=<%=rs1.getString(2)%>&TenPhim=<%=rs1.getString(1)%>"
			target="xuatchieu"><font face=" Arial " color="333333"> <%out.print(rs1.getString(1));%>
		</font></a> <%} %>
		</td>
	</tr>
</table>
</fieldset>

</form>
</div>
</div>
</body>

</html>