<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Card Collector Emporium" />
    </jsp:include>
    <link rel="stylesheet" type="text/css" href="/CSS/loading-square.css">
</head>
<body>
<div class="index">
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
</div>
<div class="content index2">
    <img src="https://picsum.photos/300/300/?random">
</div>

<div class="loader-wrapper index2">
    <span class="loader">
        <span class="loader-inner" id="target"></span>
    </span>
</div>

<script>

    function redirect() {
        let newPageUrl = `http://localhost:8080/ads`;
        window.location.href = newPageUrl
    }
    setTimeout(redirect, 5000)

</script>

</body>
</html>
