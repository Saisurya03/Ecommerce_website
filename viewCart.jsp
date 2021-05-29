<%-- 
    Document   : viewCart.jsp
    Created on : 29 Mar, 2021, 10:10:18 AM
    Author     : 123
--%>


<%@page import="java.util.ArrayList"%>
<%@ page import ="Product.Product" %>


<%
  ArrayList<Product> cartProducts = (ArrayList<Product>)session.getAttribute("product");
            out.println("<!DOCTYPE html> <html lang='en'>  <head>   <meta charset='utf-8'>   <meta content='width=device-width, initial-scale=1.0' name='viewport'>    <title>E-commerce</title>   <meta content='' name='description'>   <meta content='' name='keywords'>    <!-- Favicons -->   <link href='assets/img/favicon.png' rel='icon'>   <link href='assets/img/apple-touch-icon.png' rel='apple-touch-icon'>    <!-- Google Fonts -->   <link href='https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i' rel='stylesheet'>    <!-- Vendor CSS Files -->   <link href='assets/vendor/aos/aos.css' rel='stylesheet'>   <link href='assets/vendor/bootstrap/css/bootstrap.min.css' rel='stylesheet'>   <link href='assets/vendor/bootstrap-icons/bootstrap-icons.css' rel='stylesheet'>   <link href='assets/vendor/boxicons/css/boxicons.min.css' rel='stylesheet'>   <link href='assets/vendor/glightbox/css/glightbox.min.css' rel='stylesheet'>   <link href='assets/vendor/swiper/swiper-bundle.min.css' rel='stylesheet'>    <!-- Template Main CSS File -->   <link href='assets/css/style.css' rel='stylesheet'> </head>  <body>    <!-- ======= Header ======= -->   <header id='header' class='d-flex align-items-center'>     <div class='container d-flex align-items-center justify-content-between'>        <h1 class='logo'><a href='index.html'>My <span>Shop</span></a></h1>       <!-- Uncomment below if you prefer to use an image logo -->       <!-- <a href='index.html' class='logo'><img src='assets/img/logo.png' alt=''></a>-->        <nav id='navbar' class='navbar'>         <ul>           <li><a class='nav-link scrollto active' href='index.html'>Home</a></li>           <li><a class='nav-link scrollto' href='viewCart'>View Cart</a></li>           <li><a class='nav-link scrollto' href='#services'>Services</a></li>           <li><a class='nav-link scrollto ' href='#portfolio'>Portfolio</a></li>           <li><a class='nav-link scrollto' href='#team'>Team</a></li>                     <li><a class='nav-link scrollto' href='#contact'>Contact</a></li>         </ul>         <i class='bi bi-list mobile-nav-toggle'></i>       </nav><!-- .navbar -->      </div>   </header><!-- End Header -->    <main id='main'>      <!-- ======= Portfolio Section ======= -->     <section id='portfolio' class='portfolio'> ");
            if(cartProducts == null){
               out.println("Your cart is empty");
           }
            else{
       
            out.println("<style>"
                    + ".tb {"
                    + "margin-left: 20px;"  
                    + "width: 70%;"
                    + "border-collapse: collapse;"
                    + "align: center"
                    + "position: fixed;"
                    + "top: 50px;"
                    + "}"
                    
                    + ".btn{"
                    + "margin-left: 30px;"
                    + "background-color: #0080ff;"
                    + "border-style: none;"
                    + "height: 50px"
                    + "width: 150px"
                    + "color: white;"
                    + "}"
                    
                    + "th{"
                    + "border: 2px solid #106eea;"
                    + "text-align: center;"
                    + "background-color: #106eea;"
                    + "height: 50px;"
                    + "color: white;"
                    + "}"
                    + "td, tr{"
                    + "text-align: center;"
                    + "");
            out.println("</style>");
            out.println("</head>");
            out.println("<title>Cart</title>");  
            out.println("<div class='col-lg-12 d-flex justify-content-center'>");
            out.println("<h1>Cart Products</h1><br></div><br>");
            out.println("<div class='col-lg-12 d-flex justify-content-center'><br>");
            out.println("<table style='align: center;' class='tb'>");
            
            out.println("<tr>");
            out.println("<th>");
            out.println("Item");
            out.println("</th>");
            out.println("<th>");
            out.println("Price");
            out.println("</th>");
            out.println("<th colspan=2>");
            out.println("Quantity");
            out.println("</th>");
            out.println("<th>");
            out.println("ProductId");
            out.println("</th   >");
            out.println("<th>");
            out.println("Total Price");
            out.println("</th>");   
            out.println("<th>");
            out.println("Delete items");
            out.println("</th>");  
            out.println("</tr>");
           
            double grandTotal = 0;
               for(Product p : cartProducts){
                   double totalPrice = p.getPrice()*p.getQty();
                   grandTotal = grandTotal + totalPrice;
                   out.println("<br><div class='test'><tr><br>");
                    out.println("<td  rowspan=2><br><img height='100px;' width='100px;' src='" + p.getPath() + "'></td>");
                    out.println("<td  rowspan=2>" + p.getPrice() + "</td>");
                    out.println("<td align='right'  rowspan=2>" + p.getQty() + "</td>");
                    out.println("<td><b><a style='padding: 5px;  text-decoration: none; color: #106eea; background-color: #9cd4f8;' href='deleteItems.jsp?op=add&pid=" + p.getProductId() + "'>+</a></b></td>");
                    out.println("<td  rowspan=2>" + p.getProductId() + "</td>");
                    out.println("<td  rowspan=2>" + totalPrice + "</td>");
                    out.println("<td  rowspan=2>" + "<b><a style='padding: 5px; text-decoration: none; color: #106eea; background-color: #9cd4f8;' href='deleteItems.jsp?op=delete&pid=" + p.getProductId() + "'>X</a><b></td>");
                    out.println("</tr>");
                    out.println("<tr>");
                    out.println("<td><b><a style='padding: 5px;  text-decoration: none; color: #106eea; background-color: #9cd4f8;' href='deleteItems.jsp?op=sub&pid=" + p.getProductId() + "'>-</a></b></td>");
                    out.println("</tr></div>");
                    out.println("<tr>");
                    out.println("<td colspan=7></td>");
                    out.println("</tr>");
               }
                out.println("<tr><td colspan=6><br></td></tr>");
                out.println("<tr style='border-top: 1px solid grey; border-bottom: 1px solid grey;'><td><b>Grand Total</b></td><td></td><td></td><td></td><td><b>"+ grandTotal +"</b></td></tr>");
                out.println("</table></div><br>");
               out.println("<div class='col-lg-12 d-flex justify-content-center'>");
                out.println("<br><button style='margin-left: 30px;"
                        + "background-color: #106eea;"
                        + "border-style: none;"
                        + "height: 30px;"
                        + "color: white;"
                        + "' onClick=\"location.href='checkout.jsp';\" >Proceed to checkout</button></div>");
                
                session.setAttribute("total", grandTotal);
                out.println("</section>\n"
                        + "  </main><!-- End #main -->\n"
                        + "\n"
                        + "\n"
                        + "  <div id=\"preloader\"></div>\n"
                        + "  <a href=\"#\" class=\"back-to-top d-flex align-items-center justify-content-center\"><i class=\"bi bi-arrow-up-short\"></i></a>\n"
                        + "\n"
                        + "  <!-- Vendor JS Files -->\n"
                        + "  <script src=\"assets/vendor/aos/aos.js\"></script>\n"
                        + "  <script src=\"assets/vendor/bootstrap/js/bootstrap.bundle.min.js\"></script>\n"
                        + "  <script src=\"assets/vendor/glightbox/js/glightbox.min.js\"></script>\n"
                        + "  <script src=\"assets/vendor/isotope-layout/isotope.pkgd.min.js\"></script>\n"
                        + "  <script src=\"assets/vendor/php-email-form/validate.js\"></script>\n"
                        + "  <script src=\"assets/vendor/purecounter/purecounter.js\"></script>\n"
                        + "  <script src=\"assets/vendor/swiper/swiper-bundle.min.js\"></script>\n"
                        + "  <script src=\"assets/vendor/waypoints/noframework.waypoints.js\"></script>\n"
                        + "\n"
                        + "  <!-- Template Main JS File -->\n"
                        + "  <script src=\"assets/js/main.js\"></script>\n"
                        + "\n"
                        + "</body>\n"
                        + "\n"
                        + "</html>");
            }
%>