<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <%@ include file="common.jsp" %>
    <title>Customer Profile - Online Store</title>
    <link rel="stylesheet" href="shop/style/header.css" type="text/css"/>
    <link rel="stylesheet" href="shop/style/customer_profile.css" type="text/css"/>
    <link rel="stylesheet" href="shop/style/footer.css" type="text/css"/>
</head>
<body style="width: 1366px;">
<%@ include file="header.jsp" %>
<section class="collections text-center" style="background-image: url('shop/images/Wallpaper_CustomerProfile.png'); 
												background-position: center; 
												background-repeat: no-repeat;">
    <div class="main">
        <section class="signup text-center">
            <div class="container_sign text-center">
                <div class="signup-content">
                    <div class="signup-form text-center">
                        <h6 class="form-title"> <br> <br><br> Welcome, ${loggedCustomer.fullName}</h6>
                        <table class="table_profile" style="border: 0">
                            <tr>
                                <td><b>Email Address:</b></td>
                                <td>${loggedCustomer.email}</td>
                            </tr>
                            <tr>
                                <td><b>First Name:</b></td>
                                <td>${loggedCustomer.firstName}</td>
                            </tr>
                            <tr>
                                <td><b>Last Name:</b></td>
                                <td>${loggedCustomer.lastName}</td>
                            </tr>
                            <tr>
                                <td><b>Phone Number:</b></td>
                                <td>${loggedCustomer.phone}</td>
                            </tr>
                            <tr>
                                <td><b>House Number:</b></td>
                                <td>${loggedCustomer.numberHouse}</td>
                            </tr>
                            <tr>
                                <td><b>Street:</b></td>
                                <td>${loggedCustomer.street}</td>
                            </tr>
                            <tr>
                                <td><b>District:</b></td>
                                <td>${loggedCustomer.district}</td>
                            </tr>
                            <tr>
                                <td><b>City:</b></td>
                                <td>${loggedCustomer.city}</td>
                            </tr>
                            <tr>
                                <td><b>Zip Code:</b></td>
                                <td>${loggedCustomer.zipCode}</td>
                            </tr>
                            <tr>
                                <td><b>Country:</b></td>
                                <td>${loggedCustomer.countryName}</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center"><a href="edit_profile">Edit My Profile<br><br><br></a></td>
                            </tr>
                        </table>
                    </div>

                </div>
            </div>
        </section>
    </div>
</section>

<%@ include file="footer.jsp" %>
</body>
</html>