<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit Profile" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Editing Your Profile: </h1>
    <form action="${pageContext.request.contextPath}/profile/update" method="post">
        <div class="form-group">
            <label for="username">Username:</label>
            <input id="username" name="username" class="form-control" type="text" value="${user.username}">
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input id="email" name="email" class="form-control" type="email" value="${user.email}">
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input id="password" name="password" class="form-control" type="password" onkeyup="passConfirm()">

        </div>
        <div class="form-group">
            <label for="confirm_password">Confirm Password:</label>
            <input id="confirm_password" name="confirm_password" class="form-control" type="password">
        </div>
        <div id="message"></div>
        <input type="submit" class="btn btn-primary btn-block">
        <input name="user-id" hidden="hidden" value="${user.id}">
    </form>
</div>
<script>

    function passConfirm() {
        let password = document.getElementById(`password`).value;
        let confirmPassword = document.getElementById(`confirm_password`).value;
        let message = document.getElementById(`message`);
        if (password === confirmPassword) {
            message.style.color = `green`;
            message.innerHTML = `Passwords match.`
        } else {
            message.style.color = `red`;
            message.innerHTML = `Passwords do not match.`
        }
        document.getElementById(`password`).onkeyup = passConfirm;
        document.getElementById(`confirm_password`).onkeyup = passConfirm;
    }

</script>
</body>
</html>
