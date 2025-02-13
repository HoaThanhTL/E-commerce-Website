<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${loggedCustomer.fullName} Reviews</title>
    <%@ include file="common.jsp" %>
    <link rel="stylesheet" href="shop/style/header.css" type="text/css"/>
    <link rel="stylesheet" href="shop/style/home.css" type="text/css"/>
    <link rel="stylesheet" href="shop/style/footer.css" type="text/css"/>
</head>
<body style="width: 1366px;">
<%@ include file="header.jsp" %>
<h2 class="products text-center">${loggedCustomer.fullName} Reviews</h2>

<div class="container">
    <div class="row">
        <div class="col-md-6 text-center">
            <div class="product-image mt-3">
                <img class="img-fluid" src="data:image/jpg;base64,${product.base64Image}" alt=""/>
            </div>
        </div>
        <div class="col-md-6 mt-5 mt-md-2 text-center text-md-left">
            <h2 class="mb-3 mt-0">${product.title}</h2>
            <p>Your review has been posted. Thank you!</p>
        </div>
    </div>
</div>
<h2 class="products text-center"></h2>
<%@ include file="footer.jsp" %>
</body>
</html>