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

<div class="container login">
    <h1>Welcome to your profile page, ${sessionScope.user.username}!</h1>
</div>
<div class="row">
    <div class="column">
        <h4>${sessionScope.user.email}</h4>
        <a href="${pageContext.request.contextPath}/ads/profileupdate?user-id=${sessionScope.user.id}"><strong>Edit Profile Information</strong></a>
    </div>
</div>
<div class="align-center container text-center justify-center">
    <div class="user-actions row">
        <div class="column">
            <h3>Manage Your Listings:</h3>
            <ul>
                <li>View all your current listings</li>
                <li>Edit your current listings</li>
                <li>Delete your current listings</li>
                <a href="http://localhost:8080/ads/create" class="ui-button">Click Here To create a new Ad</a>
            </ul>
        </div>
    </div>
</div>
<div class="ads-card-container">
    <c:forEach var="ad" items="${ads}">
        <c:if test="${sessionScope.user.id == ad.userId}">
            <div class="ad-card">
                <h2>${ad.title}</h2>
                <p>${ad.category}</p>
                <img src="${ad.image}" alt="Ad Image">
                <p class="description">${ad.description}</p>
                <div class="ad-footer">
                    <p class="cost">$${ad.cost}</p>
                </div>
                <form action="/ads/delete" method="POST">
                    <button type="submit" class="delete-button button-border-medium">Delete Post</button>
                    <input class="button-border-medium" name="ad-id" hidden="hidden" value="${ad.id}">
                </form>
                <a class="button-border-medium" href="${pageContext.request.contextPath}/ads/update?ad-id=${ad.id}"><span class="color-orange">Edit</span></a>
            </div>
        </c:if>
    </c:forEach>
</div>


</body>
</html>