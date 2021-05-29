<%-- 
    Document   : AddCart.jsp
    Created on : 29 Mar, 2021, 10:04:45 AM
    Author     : 123
--%>

<%@page import="java.util.ArrayList"%>
<%@ page import ="Product.Product" %>
<%@page contentType="java" pageEncoding="UTF-8"%>

<%
           int q;
            q = Integer.parseInt(request.getParameter("qty"));
            double price;
            price = Double.parseDouble(request.getParameter("price"));
            int productId = Integer.parseInt(request.getParameter("pId"));
            String path = request.getParameter("path");
            Product product = new Product();
            
            int f = 0;
            ArrayList<Product> cartProducts = new ArrayList<Product>();
            
            product.setPrice(price);
            product.setQty(q);
            product.setProductId(productId);
            product.setPath(path);
            
            cartProducts = null;
            if (session.getAttribute("product") == null) {
                out.println("Your cart is empty");
                cartProducts = new ArrayList<Product>();
            } else {
                
                
                cartProducts = (ArrayList<Product>) session.getAttribute("product");
                for (int i = 0; i < cartProducts.size(); i++) {
                    Product temp = cartProducts.get(i);
                    int pid = temp.getProductId();
                    int qty = temp.getQty();
                   if(pid == productId){
                       q = q + qty;
                        temp.setQty(q);
                        cartProducts.set(i , temp);
                        f = 1;
                   }
                }
                
            }
            
            
            if(f!=1){
            cartProducts.add(product);
            }
            session.setAttribute("product", cartProducts);
            response.sendRedirect("index.jsp");
  
%>