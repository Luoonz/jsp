<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    /* 한글 깨짐 방지 */
    request.setCharacterEncoding("UTF-8");

    /* db connection */
    String user = "system";
    String pw = "caos08";
    String url = "jdbc:oracle:thin:@localhost:1521:orcl";
    String sql = "";
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection conn = DriverManager.getConnection(url, user, pw);
    ResultSet res;
    
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <% /* select list */
        sql = "SELECT * FROM system.test_table";
        res = conn.prepareStatement(sql).executeQuery();
        String data1, list = "";
        int data2;
        while (res.next()) {
            data1 = res.getString("data1");
            data2 = res.getInt("data2");            
            System.out.println(data1);
            System.out.println(data2);
            list += String.format("<p>%s / %s</p>", data1, data2);
        }
    %>
    
    <p><%= list %></p>
    
</body>
</html>
