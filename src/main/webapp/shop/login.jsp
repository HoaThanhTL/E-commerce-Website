<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <%@ include file="common.jsp" %>
    <link rel="stylesheet" href="shop/style/login.css" type="text/css"/>
    <title>Customer Login</title>
    
</head>
<body style="width: 1366px;">
<img src="https://themetrust.com/wp-content/uploads/2018/04/custom_login_cover.jpg" class="Wallpaper_Login" width="1366" height="710">
<section class="collections text-center">
    <div class="main">
        <section class="sign-in">
            <div class="container_sign">
                <div class="signin-content">
                    <div class="signin-form">
                        <c:if test="${message != null}">
                            <div class="form-group">
                                <h6>${message}</h6>
                            </div>
                        </c:if>

                        <form method="post" action="login" class="login_form">

                            <div class="table_login">
                                <label><i
                                        class="zmdi zmdi-account material-icons-name"></i></label> <input
                                    type="email" name="email" placeholder="Your email"
                                    required="required" maxlength="64"/>
                            </div>

                            <div class="table_login">
                                <label><i class="zmdi zmdi-lock"></i></label> <input
                                    type="password" name="password" placeholder="Your password"
                                    required="required" maxlength="32"/>
                            </div>

                            <div class="table_login">
                                <input type="checkbox" name="remember-me" id="remember-me"
                                       class="agree-term"/> 
                                       <label for="remember-me" class="label-agree-term"><span><span></span></span>
                                       Remember me</label>
                            </div>

                            <div class="form-group form-button">
                                <input type="submit" name="signin" id="signin"
                                       class="form-submit" value="Log in"/>
                            </div>
                            
                            <div class="signin-image">
                            	<a href="register">Create an account</a>
                            </div>

                        </form>

                    </div>

                </div>
            </div>
        </section>
    </div>
</section>
</body>
<!-- Placed at the end of the document so the pages load faster -->
<script src="shop/js/jquery-3.3.1.min.js"></script>
<script src="shop/bootstrap/js/bootstrap.min.js"></script>
<script src="shop/js/tether.min.js"></script>
</html>