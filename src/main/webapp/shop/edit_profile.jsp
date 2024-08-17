<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <%@ include file="common.jsp" %>
    <title>Edit Customer Profile</title>
    <script type="text/javascript" src="shop/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="shop/js/jquery.validate.min.js"></script>
    <link rel="stylesheet" href="shop/style/header.css" type="text/css"/>
    <link rel="stylesheet" href="shop/style/customer_profile.css" type="text/css"/>
    <link rel="stylesheet" href="shop/style/footer.css" type="text/css"/>
</head>
<body style="width: 1366px;">
<%@ include file="header.jsp" %>
<section class="collections text-center " style="background-image: url('shop/images/Wallpaper_EditProfile.png'); 
												background-position: center; 
												background-repeat: no-repeat;">
    <div class="main">
        <section class="signup text-center">
            <div class="container_sign">
                <div class="signup-content">
                    <div class="signup-form">
                        <h3 class="form-title"><br><br> Edit My Profile</h3>
                        <form method="post" action="update_profile" class="register-form" id="customerForm">
                            <div class="table_profile text-center">
                                <label><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="firstName" placeholder="Your first name."
                                       value="${loggedCustomer.firstName}" required="required" maxlength="32"/>
                            </div>

                            <div class="table_profile">
                                <label><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="lastName" placeholder="Your first name."
                                       value="${loggedCustomer.lastName}" required="required" maxlength="32"/>
                            </div>

                            <div class="table_profile">
                                <label><i class="zmdi zmdi-email"></i></label>
                                <input type="email" name="email" placeholder="Your email." readonly="readonly"
                                       value="${loggedCustomer.email}"/>
                            </div>
                            <div class="table_profile">
                                <i>Email cannot be changed</i>
                            </div>
                            
                            <div class="table_profile">
                                <label><i class="zmdi zmdi-lock"></i></label>
                                <input type="number" name="phone" placeholder="Your phone number."
                                       value="${loggedCustomer.phone}" required="required" maxlength="16"/>
                            </div>
                            

                            <div class="table_profile">
                                <label><i class="zmdi zmdi-lock"></i></label>
                                <input type="text" name="numberHouse" placeholder="Your House Number."
                                       value="${loggedCustomer.numberHouse}" required="required" maxlength="128"/>
                            </div>

                            <div class="table_profile">
                                <label><i class="zmdi zmdi-lock"></i></label>
                                <input type="text" name="street" placeholder="Your Street."
                                       value="${loggedCustomer.street}" required="required" maxlength="128"/>
                            </div>

                            <div class="table_profile">
                                <label><i class="zmdi zmdi-lock"></i></label>
                                <input type="text" name="district" placeholder="Your district." 
                                value="${loggedCustomer.district}"
                                       required="required" maxlength="32"/>
                            </div>

                            <div class="table_profile">
                                <label for="city"><i class="zmdi zmdi-lock"></i></label>
                                <input type="text" name="city" id="city" placeholder="Your city."
                                       value="${loggedCustomer.city}"
                                       required="required" maxlength="32"/>
                            </div>

                            <div class="table_profile">
                                <label for="zipCode"><i class="zmdi zmdi-lock"></i></label>
                                <input type="text" name="zipCode" id="zipCode" placeholder="Your zip code."
                                       value="${loggedCustomer.zipCode}"/>
                            </div>

                            <div class="table_profile">
                                <label><i class="zmdi zmdi-lock"></i></label>
                                <select name="country">
                                    <c:forEach items="${mapCountries}" var="country">
                                        <option value="${country.value}"
                                                <c:if test="${loggedCustomer.country eq country.value}">selected="selected"</c:if>>${country.key}</option>
                                    </c:forEach>
                                </select>
                            </div>

                            <div class="table_profile">
                                <i>Leave blank if you don't want to change it.</i>
                            </div>

                            <div class="table_profile">
                                <label for="password"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="password" id="password" placeholder="Your password."/>
                            </div>
                            
                            <div class="table_profile">
                                <label for="confirmPassword"><i class="zmdi zmdi-lock-outline"></i></label>
                                <input type="password" name="confirmPassword" id="confirmPassword"
                                       placeholder="Comfirm your password."/>
                            </div>

                            <div class="table_profile button_confirm">
                                <input type="submit" name="signup" id="signup" class="form-submit" value="Confirm"/>
                            </div>
							<br><br>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </div>
</section>

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
                    equalTo: "Confirm password does not match."
                }
            }
        });
    });
</script>
<%@ include file="footer.jsp" %>
</body>
</html>