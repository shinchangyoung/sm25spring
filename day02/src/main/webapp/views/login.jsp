<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- Login Page --%>
<div class="col-sm-9">
    <h2>Login Page</h2>
    <h5>Input Id, Password</h5>
    <div class="row">
        <div class="col-sm-8">
            <form action="/loginimpl" method="post" >
                <div class="form-group">
                    <label for="id">Id:</label>
                    <input type="text" class="form-control" name="id" placeholder="Enter email" id="email">
                </div>

                <div class="form-group">
                    <label for="pwd">Password:</label>
                    <input type="password" class="form-control" name="pwd" placeholder="Enter password" id="pwd">
                </div>

                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
        <div class="col-sm-4">
            <h3>ID와 PWD를 입력 하세요</h3>
        </div>
    </div>
</div>
