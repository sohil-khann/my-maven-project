<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%
    String productId = request.getParameter("id");
    Map<String, String> productDetails = new HashMap<>();
    productDetails.put("1", "Details of Product 1.");
    productDetails.put("2", "Details of Product 2.");
    productDetails.put("3", "Details of Product 3.");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Myntra Clone - Product Detail</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="index.jsp">Myntra Clone</a>
        <ul class="navbar-nav ml-auto">
            <li class="nav-item"><a class="nav-link" href="cart.jsp">Cart</a></li>
        </ul>
    </nav>

    <div class="container mt-4">
        <h2>Product Details</h2>
        <div class="row">
            <div class="col-md-6">
                <img src="images/product-placeholder.jpg" class="img-fluid" alt="Product Image">
            </div>
            <div class="col-md-6">
                <h3>Product <%= productId %></h3>
                <p><%= productDetails.get(productId) %></p>
                <form action="cart.jsp" method="post">
                    <input type="hidden" name="productId" value="<%= productId %>">
                    <button type="submit" class="btn btn-primary">Add to Cart</button>
                </form>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
