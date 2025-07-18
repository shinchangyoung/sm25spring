<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- Center Page --%>
<div class="col-sm-9">
    <h2>Product Add Page</h2>
    <form action="/cust/registerimpl" method="post">
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" class="form-control" placeholder="Enter name" id="name" name="custName">
        </div>
        <div class="form-group">
            <label for="name">pwd:</label>
            <input type="text" class="form-control" placeholder="Enter name" id="pwd" name="custPwd">
        </div>
        <button type="submit" class="btn btn-primary">Register</button>
    </form>

</div>