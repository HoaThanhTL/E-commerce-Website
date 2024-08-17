<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <%@ include file="common.jsp" %>
    <title>Home Page</title>
    <link rel="stylesheet" href="shop/style/header.css" type="text/css"/>
    <link rel="stylesheet" href="shop/style/home.css" type="text/css"/>
    <link rel="stylesheet" href="shop/style/footer.css" type="text/css"/>
</head>
<body style="width: 1366px;">

<%@ include file="header.jsp" %>

<img src="https://th.bing.com/th/id/R.40da42d46ba0cb7a2116ce462594b25b?rik=6BGHjkDzLeTSzQ&pid=ImgRaw&r=0" width="1366" height="425" alt="">

<div class="divider"></div>
<section class="products text-center" style="width: 1366px;">
    <div class="container">
        <h3 class="mb-4">Sản phẩm bán chạy.</h3>
        <div class="row">
            <c:forEach items="${listNewProducts}" var="product" begin="0" end="3">
                <div class="col-sm-6 col-md-3 col-product">
                    <figure>
                        <img class="rounded-corners img-fluid" src="data:image/jpg;base64,${product.base64Image}"
                             width="240" height="240" alt="">
                        <figcaption>
                            <div class="thumb-overlay"><a href="view_product?id=${product.productId}" title="More Info">
                                <i class="fas fa-search-plus"></i>
                            </a></div>
                        </figcaption>
                    </figure>
                    <h4><a href="view_product?id=${product.productId}">${product.title}</a></h4>
                    <p><span class="emphasis"><%@include file="product_rating.jsp" %></span></p>
                    <p><span class="emphasis">$${product.price}</span></p>
                </div>
            </c:forEach>
        </div>
    </div>
</section>
<div class="divider"></div>
<section class="products text-center" style="width: 1366px;">
    <div class="container">
        <h3 class="mb-4">Thực phẩm chức năng.</h3>
        <div class="row">
            <c:forEach items="${listBestSellingProducts}" var="product" begin="0" end="3">
                <div class="col-sm-6 col-md-3 col-product">
                    <figure>
                        <img class="rounded-corners img-fluid" src="data:image/jpg;base64,${product.base64Image}"
                             width="240" height="240" alt="">
                        <figcaption>
                            <div class="thumb-overlay"><a href="view_product?id=${product.productId}" title="More Info">
                                <i class="fas fa-search-plus"></i>
                            </a></div>
                        </figcaption>
                    </figure>
                    <h4><a href="view_product?id=${product.productId}">${product.title}</a></h4>
                    <p><span class="emphasis"><%@include file="product_rating.jsp" %></span></p>
                    <p><span class="emphasis">$${product.price}</span></p>
                </div>
            </c:forEach>
        </div>
    </div>
</section>
<div class="divider"></div>
<section class="products text-center" style="width: 1366px;">
    <div class="container">
        <h3 class="mb-4">Sản phẩm được yêu thích.</h3>
        <div class="row">
            <c:forEach items="${listFavoredProducts}" var="product" begin="0" end="3">
                <div class="col-sm-6 col-md-3 col-product">
                    <figure>
                        <img class="rounded-corners img-fluid" src="data:image/jpg;base64,${product.base64Image}"
                             width="240" height="240" alt="">
                        <figcaption>
                            <div class="thumb-overlay"><a href="view_product?id=${product.productId}" title="More Info">
                                <i class="fas fa-search-plus"></i>
                            </a></div>
                        </figcaption>
                    </figure>
                    <h4><a href="view_product?id=${product.productId}">${product.title}</a></h4>
                    <p><span class="emphasis"><%@include file="product_rating.jsp" %></span></p>
                    <p><span class="emphasis">$${product.price}</span></p>
                </div>
            </c:forEach>
        </div>
    </div>
</section>

<%@ include file="footer.jsp" %>

<!-- Placed at the end of the document so the pages load faster -->
<script src="shop/js/jquery-3.3.1.min.js"></script>
<script src="shop/bootstrap/js/bootstrap.min.js"></script>
<script src="shop/js/tether.min.js"></script>
<script src="shop/js/popper.min.js"></script>

<script>
    let btn = $('#btn-backtop');
    $(window).scroll(function () {
        if ($(window).scrollTop() > 300) {
            btn.addClass('show');
        } else {
            btn.removeClass('show');
        }
    });

    btn.on('click', function (e) {
        e.preventDefault();
        $('html, body').animate({
            scrollTop: 0
        }, '300');
    });
</script>
</body>
</html>
