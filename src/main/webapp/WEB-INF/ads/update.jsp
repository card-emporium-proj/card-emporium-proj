<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Edit Ad" />
  </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container login">
  <h1>Editing Ad: </h1>
  <form action="/ads/update" method="POST">
    <div class="form-group">
      <p>Add an image of your card here!</p>
      <button name="image" id="open">Add Image</button>
    </div>
    <div class="form-group">
      <label for="title">Title: </label>
      <input id="title" name="title" class="form-control" type="text" value="${ad.title}" >
    </div>
    <div class="form-group">
      <label for="description">Description: </label>
      <textarea id="description" name="description" class="form-control" type="text">${ad.description}</textarea>
    </div>
    <div class="form-group">
      <label for="cost" >Price: </label>
      <input id="cost" name="cost" class="form-control" type="text" value="${ad.cost}">
    </div>
    <p><strong>Category: </strong></p>
    <select name="category">
      <option value="pokemon">Pokemon</option>
      <option value="magic">Magic</option>
      <option value="sports">Sports</option>
    </select>
    <br><br>
    <input type="submit" class="btn btn-block btn-primary">
    <input name="ad-id" hidden="hidden" value="${ad.id}">
  </form>
</div>

</body>
</html>
