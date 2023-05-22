<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<c:forEach var="ad" items="${ads}">
    <c:if test="${sessionScope.user.id == ad.userId}">
        <div class="ad-card">
            <h2>${ad.title}</h2>
            <p>${ad.category}</p>
            <img src="${ad.image}" alt="Ad Image">
            <p class="description">${ad.description}</p>
            <div class="ad-footer">
                <p class="cost">${ad.cost}</p>
                <button class="buy-button">Buy</button>
            </div>
            <form action="/ads/delete" method="POST">
                <button type="submit" class="delete-button">Delete Post</button>
                <input name="ad-id" hidden="hidden" value="${ad.id}">
            </form>
            <a href="/ads/update?ad-id=${ad.id}}">Edit</a>
        </div>
    </c:if>
</c:forEach>


</body>
</html>
