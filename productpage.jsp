<%-- 
    Document   : productpage
    Created on : 23 Mar, 2021, 8:27:35 AM
    Author     : 123
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "");
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("select * from product_master");
            out.print("<h2>Products</h2>");
            out.print("<table border='2px solid black' padding='10px'>");
            out.print("<tr><th>Pid</th>");
            out.print("<th>Pname</th>");
            out.print("<th>Stock</th>");
            out.print("<th>Image</th>");
            out.print("<th>Price</th>");
            out.print("<th>Delete</th>");
            out.print("<th>Edit</th></tr>");
            while(rs.next()){
                out.print("<tr>");
                out.print("<td>");
                out.print(rs.getInt("pid"));
                out.print("</td><td>");
                out.print(rs.getString("pname"));
                out.print("</td><td>");
                out.print(rs.getInt("stock"));
                out.print("</td><td>");
                out.print(rs.getString("image"));
                out.print("</td><td>");
                out.print(rs.getDouble("price"));
                out.print("</td><td>");
                out.print("delete");
                out.print("</td><td>");
                out.print("edit");
                out.print("</td></tr>");
            }
            out.print("</table>");
            %>
    </body>
</html>
