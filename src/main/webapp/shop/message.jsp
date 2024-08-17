<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <%@ include file="common.jsp" %>
    <title>TPK Bookshop</title>
    <link rel="stylesheet" href="shop/style/header.css" type="text/css"/>
    <link rel="stylesheet" href="shop/style/contact.css" type="text/css"/>
    <link rel="stylesheet" href="shop/style/footer.css" type="text/css"/>
</head>
<body style="width: 1366px;">
<%@ include file="header.jsp" %>

<section class="send_message text-center">
	<h3>${message}</h3>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>