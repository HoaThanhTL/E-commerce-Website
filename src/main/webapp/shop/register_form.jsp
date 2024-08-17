<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <%@ include file="common.jsp" %>
    <link rel="stylesheet" href="shop/style/register.css">
    <title>Register as a Customer</title> 
    <link rel="stylesheet" href="shop/style/header.css" type="text/css"/>
    <link rel="stylesheet" href="shop/style/home.css" type="text/css"/>
    <link rel="stylesheet" href="shop/style/footer.css" type="text/css"/>
</head>
<body style="width: 1366px;">
<img src="https://themetrust.com/wp-content/uploads/2018/04/custom_login_cover.jpg" class="Wallpaper_Register" width="1405" height="875">
<section class="collections">
    <div class="main">
        <section class="signup text-center ">
            <div class="container_sign">
                <div class="signup-content">
                    <div class="signup-form ">
                        <form method="post" action="register_customer" class="register-form">
                            <div class="table_profile">
                                <label><i
                                        class="zmdi zmdi-account material-icons-name"></i></label> <input
                                    type="text" name="firstName"
                                    placeholder="Your first name." required="required" maxlength="32"/>
                            </div>

                            <div class="table_profile">
                                <label><i
                                        class="zmdi zmdi-account material-icons-name"></i></label> <input
                                    type="text" name="lastName"
                                    placeholder="Your last name." required="required" maxlength="32"/>
                            </div>

                            <div class="table_profile">
                                <label><i class="zmdi zmdi-email"></i></label> <input
                                    type="email" name="email" placeholder="Your email." required="required"
                                    maxlength="32"/>
                            </div>

                            <div class="table_profile">
                                <label><i class="zmdi zmdi-lock"></i></label> <input
                                    type="password" name="password" id="password"
                                    placeholder="Your password."/>
                            </div>

                            <div class="table_profile">
                                <label><i class="zmdi zmdi-lock-outline"></i></label>
                                <input type="password" name="confirmPassword" id="confirmPassword"
                                       placeholder="Comfirm your password."/>
                            </div>

                            <div class="table_profile">
                                <label><i class="zmdi zmdi-phone"></i></label> <input
                                    type="text" name="phone" placeholder="Your phone number." required="required"
                                    maxlength="16"/>
                            </div>

                            <div class="table_profile">
                                <label><i class="zmdi zmdi-phone"></i></label> <input
                                    type="text" name="numberHouse" placeholder="Your house number"
                                    required="required" maxlength="128"/>
                            </div>

                            <div class="table_profile">
                                <label><i class="zmdi zmdi-phone"></i></label> <input
                                    type="text" name="street" placeholder="Your street"
                                    required="required" maxlength="128"/>
                            </div>

                            <div class="table_profile">
                                <label><i class="zmdi zmdi-phone"></i></label> <input
                                    type="text" name="district" placeholder="Your district" required="required" maxlength="32"/>
                            </div>

                            <div class="table_profile">
                                <label><i class="zmdi zmdi-phone"></i></label> <input
                                    type="text" name="city" placeholder="Your city" required="required"
                                    maxlength="32"/>
                            </div>

                            <div class="table_profile">
                                <label><i class="zmdi zmdi-phone"></i></label> <input
                                    type="text" name="zipCode" placeholder="Your zipcode" required="required"
                                    maxlength="16"/>
                            </div>

                            <div class="table_profile">
                                <label><i class="zmdi zmdi-phone"></i></label>
                                <select name="country">
                                    <c:forEach items="${mapCountries}" var="country">
                                        <option value="${country.value}"
                                                <c:if test="${customer.country eq country.value}">selected="selected"</c:if>>${country.key}</option>
                                    </c:forEach>
                                </select>
                            </div>

                            <div class="table_profile">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term"/> 
                                       <label for="agree-term" class="label-agree-term"><span><span></span></span>
                                       I agree all statements in
                                		<a href="#" class="term-service">Terms of service</a></label>
                            </div>

                            <div class="table_profile form-button">
                                <input type="submit" name="signup" id="signup"
                                       class="form-submit" value="Register"/>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </section>
    </div>
</section>

<script src="shop/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="shop/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="shop/js/jquery.validate.min.js"></script>
<script src="shop/js/tether.min.js"></script>
<script src="shop/js/popper.min.js"></script>

</body>
<script type="text/javascript">
    $(document).ready(function () {
        $("#customerForm").validate({
            rules: {
                confirmPassword: {
                    equalTo: "#password"
                }
            },

            messages: {
                confirmPassword: {
                    equalTo: "Confirm password does not match your password."
                }
            }
        });
    });
</script>
</html>