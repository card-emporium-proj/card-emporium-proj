<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
    <div class="container login">
        <h1>Please fill in your information.</h1>
        <form action="/register" method="post">
            <div class="form-group">
                <label for="username">Username:</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input id="email" name="email" class="form-control" type="email">
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input id="password" name="password" class="form-control" type="password" onkeyup="passConfirm()">

            </div>
            <div class="form-group">
                <label for="confirm_password">Confirm Password:</label>
                <input id="confirm_password" name="confirm_password" class="form-control" type="password">
            </div>
            <div class="justify-center align-center text-center" id="message"></div>
            <input type="submit" class="btn btn-primary btn-block">
        </form>
    </div>
<script>

    function passConfirm() {
        let password = document.getElementById(`password`).value;
        let confirmPassword = document.getElementById(`confirm_password`).value;
        let message = document.getElementById(`message`);
        if (password === confirmPassword) {
            message.style.color = `darkorange`;
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