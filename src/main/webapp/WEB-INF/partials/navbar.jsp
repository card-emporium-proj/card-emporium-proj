<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>




<header>
    <div class="card-img">
        <div class="card">
            <p>A</p>
        </div>
    </div>

    <h1 id="nav-title"><a href="/ads" >C.C.E</a></h1>
    <nav>
        <c:choose>
            <c:when test="${sessionScope.user != null}">
                <ul>
                    <li><a href="/profile" class="nav-link">${sessionScope.user.username} logged in</a></li>
                    <li><a href="/logout" class="nav-link">Logout</a></li>
                </ul>
            </c:when>
            <c:otherwise>
                <ul>
                    <li><a href="/login" class="nav-link">User not logged in</a></li>
                    <li><a href="/login" class="nav-link">Login</a></li>
                </ul>
            </c:otherwise>
        </c:choose>
    </nav>
</header>