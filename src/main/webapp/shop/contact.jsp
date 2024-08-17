<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <%@ include file="common.jsp" %>
    <title>Contact</title>
    <link rel="stylesheet" href="shop/style/header.css" type="text/css"/>
    <link rel="stylesheet" href="shop/style/contact.css" type="text/css"/>
    <link rel="stylesheet" href="shop/style/footer.css" type="text/css"/>
</head>
<body style="width: 1366px;">
<%@ include file="header.jsp" %>
<section class="contact">
    <div class="container">
        <div class="row contact-details">
            <div class="col-sm-10 text-center">
                <h3 class="mb-4">Ask us a question</h3>
                <form action="send_contact" method="post" enctype="multipart/form-data" class="contact-form mt-4">
                    <div class="row">
                        <div class="col-md-6">
                            <input type="text" class="form-control mb-4" name="subject"
                                   placeholder="Your subject." required="required">
                        </div>
                        <div class="col-md-6">
                            <input type="text" class="form-control mb-4" placeholder="Your email."
                                   value="${loggedCustomer.email}" required="required" name="email">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <textarea class="form-control mb-4" rows="5" style="height: 10em !important;" name="content"
                                      required="required">Your contact details.</textarea>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <button 
                                type="submit" class="btn btn-outline-primary btn-lg mb-4" id="button_sendmess">
                                Send Message
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>         
        <div class="row" id="fssa">
            <div class="col-md-4 text-center">
                <h4 class="pt-4">Email</h4>
                <p>TPK.BookShop@gmail.com</p>
            </div>            
            <div class="col-md-4 text-center">
                <h4 class="pt-2">Phone</h4>
                <p>+84 363 181 036</p>
            </div>
            <div class="col-md-4 text-center">
                <h4 class="pt-2">Address</h4>            
                <p>Ho Chi Minh City, Viet Nam</p>      
            </div>
        </div>
    </div>
</section>

<%@ include file="footer.jsp" %>

<!-- Placed at the end of the document so the pages load faster -->
<script src="shop/js/jquery-3.1.1.min.js"></script>
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