<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="header-container">
    <header class="header-img">
        <h1 class="header-text">Card Collector Emporium</h1>
    </header>
</div>
<div class="container">
    <h1>Here Are all the ads!</h1>
    <div class="ads-card-container">
        <c:forEach var="ad" items="${ads}">
            <div class="ad-card">
                <h2>${ad.title}</h2>
                <p>${ad.category}</p>
                <img src="${ad.image}" alt="Ad Image">
                <p class="description">${ad.description}</p>
                <p>${ad.cost}</p>
            </div>
        </c:forEach>
    </div>
</div>
</body>
</html>
