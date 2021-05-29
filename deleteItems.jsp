<%-- 
    Document   : deleteItems
    Created on : 29 Mar, 2021, 10:12:30 AM
    Author     : 123
--%>

<%@page import="java.util.ArrayList"%>
<%@ page import ="Product.Product" %>
<%@page contentType="java"%>

<%
    ArrayList<Product> cartProducts = (ArrayList<Product>) session.getAttribute("product");
            int p = Integer.parseInt(request.getParameter("pid"));
            String operation = request.getParameter("op");
            

            if (operation.equals("add")) {
                for (int i = 0; i < cartProducts.size(); i++) {
                    Product temp = cartProducts.get(i);
                    int quantity = temp.getQty();
                    if (temp.getProductId() == p) {
                        if(quantity < 10){
                            quantity = quantity + 1;
                            temp.setQty(quantity);
                            cartProducts.set(i, temp);
                        }
                    }
                }
            }

            if (operation.equals("sub")) {
                for (int i = 0; i < cartProducts.size(); i++) {
                    Product temp = cartProducts.get(i);
                    int quantity = temp.getQty();
                    if (temp.getProductId() == p) {
                        if (quantity >= 2) {
                            quantity = quantity - 1;
                            temp.setQty(quantity);
                            cartProducts.set(i, temp);
                        } else {
                            cartProducts.remove(i);
                        }
                    }
                }
            }
            if (operation.equals("delete")) {
                for (int i = 0; i < cartProducts.size(); i++) {
                    Product temp = cartProducts.get(i);
                    if (temp.getProductId() == p) {
                        cartProducts.remove(i);
                    }
                }
                
            }
            response.sendRedirect("viewCart.jsp");
%>
