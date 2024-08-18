<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
    // Simulate a session cart
    HttpSession session = request.getSession();
    List<String> cart = (List<String>) session.getAttribute("cart");
    if (cart == null) {
        cart = new ArrayList<>();
        session.setAttribute("cart", cart);
    }

    String productId = request.getParameter("productId");
    if (productId != null) {
        cart.add(productId);
    }

    Map<String, String> productNames = new HashMap<>();
    productNames.put("1", "Product 1");
    productNames.put("2", "Product 2");
    productNames.put("3", "Product 3");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Myntra Clone - Cart</title>
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
        <h2>Your Cart</h2>
        <%
            if (cart.isEmpty()) {
        %>
        <p>Your cart is empty.</p>
        <%
            } else {
        %>
        <ul>
            <%
                for (String id : cart) {
            %>
            <li><%= productNames.get(id) %></li>
            <%
                }
            %>
        </ul>
        <a href="checkout.jsp" class="btn btn-primary">Proceed to Checkout</a>
        <%
            }
        %>
    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
