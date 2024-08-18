<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Myntra Clone - Home</title>
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
        <div class="jumbotron">
            <h1 class="display-4">Welcome to Myntra Clone!</h1>
            <p class="lead">Explore the latest fashion trends at the best prices.</p>
            <hr class="my-4">
            <a class="btn btn-primary btn-lg" href="products.jsp" role="button">Shop Now</a>
        </div>

        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <img class="card-img-top" src="images/category-men.jpg" alt="Men">
                    <div class="card-body">
                        <h5 class="card-title">Men's Fashion</h5>
                        <a href="products.jsp?category=men" class="btn btn-primary">Shop Men</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img class="card-img-top" src="images/category-women.jpg" alt="Women">
                    <div class="card-body">
                        <h5 class="card-title">Women's Fashion</h5>
                        <a href="products.jsp?category=women" class="btn btn-primary">Shop Women</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img class="card-img-top" src="images/category-kids.jpg" alt="Kids">
                    <div class="card-body">
                        <h5 class="card-title">Kids' Fashion</h5>
                        <a href="products.jsp?category=kids" class="btn btn-primary">Shop Kids</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
