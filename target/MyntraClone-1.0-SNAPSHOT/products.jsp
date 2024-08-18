<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Map.Entry" %>
<%
    String category = request.getParameter("category");
    Map<String, String> products = new HashMap<>();
    products.put("Product 1", "productDetail.jsp?id=1");
    products.put("Product 2", "productDetail.jsp?id=2");
    products.put("Product 3", "productDetail.jsp?id=3");

    // Filter products based on category (In a real application, this would be dynamic)
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Myntra Clone - Products</title>
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
        <h2>Products - <%= category != null ? category : "All" %></h2>
        <div class="row">
            <%
                for (Entry<String, String> entry : products.entrySet()) {
            %>
            <div class="col-md-4">
                <div class="card mb-4">
                    <img class="card-img-top" src="images/product-placeholder.jpg" alt="<%= entry.getKey() %>">
                    <div class="card-body">
                        <h5 class="card-title"><%= entry.getKey() %></h5>
                        <a href="<%= entry.getValue() %>" class="btn btn-primary">View Details</a>
                    </div>
                </div>
            </div>
            <%
                }
            %>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
