<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<nav>
    <div class="container">
        <ul class="navbar-img">
            <li><a class="navbar-img" href="/ads">C.C.E</a></li>
        </ul>
        <c:choose>
            <c:when test="${sessionScope.user != null}">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="/profile">${sessionScope.user.username} logged in</a></li>
                    <li><a href="/logout">Logout</a></li>
                </ul>
            </c:when>
            <c:otherwise>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="/login">User not logged in</a></li>
                    <li><a href="/login">Login</a></li>
                </ul>
            </c:otherwise>
        </c:choose>
    </div>
</nav>