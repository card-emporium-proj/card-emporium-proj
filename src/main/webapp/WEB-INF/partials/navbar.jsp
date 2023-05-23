<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>




<header>
    <div class="card-img">
        <a href="${pageContext.request.contextPath}/links.jsp">
            <div class="card">
                <img class="image-height" src="/images/yt.png" alt="YouTube Logo">
            </div>
        </a>
    </div>

    <h1 id="nav-title" class="color-white"><a href="/ads" >Card Collector Emporium</a></h1>
    <nav class="color-white">
        <c:choose>
            <c:when test="${sessionScope.user != null}">
                <ul>
                    <li><a href="/ads/create" class="nav-link">Create Ad</a></li>
                    <li><a href="/profile" class="nav-link">${sessionScope.user.username} logged in</a></li>
                    <li><a href="/logout" class="nav-link"><span class="button-border">Logout</span></a></li>
                </ul>
            </c:when>
            <c:otherwise>
                <ul>
                    <li><a href="/login" class="nav-link">User not logged in</a></li>
                    <li><a href="/login" class="nav-link button-border">Login</a></li>
                </ul>
            </c:otherwise>
        </c:choose>
    </nav>
</header>