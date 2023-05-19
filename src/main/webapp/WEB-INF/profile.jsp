<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
        <a href="http://localhost:8080/ads/create" class="ui-button">Create a new Ad</a>
    </div>

    <div class="container">
        <h1>All of your posts:</h1>
        <c:if test="${sessionScope.user.id == sessionScope.ads.user_id}">
            <c:forEach var="ad" items="${ads}">
            <div class="ad-card">
                <h2>${ad.title}</h2>
                <p>${ad.category}</p>
                <img src="${ad.image}" alt="Ad Image">
                <p class="description">${ad.description}</p>
                <p>${ad.cost}</p>
            </div>
            </c:forEach>
        </c:if>

</body>
</html>
