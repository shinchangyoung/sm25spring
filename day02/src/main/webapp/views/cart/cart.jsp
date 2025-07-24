<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- Center Page --%>
<div class="col-sm-9">
    <h2>Cust Get Page</h2>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>Img</th>
            <th>Name</th>
            <th>Price</th>
            <th>Qt</th>
            <th>Date</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="c" items="${carts}">
            <tr>
                <td><img src="imgs/${c.productImg}" width="50px;"></td>
                <td>${c.productName}</td>
                <td>${c.productPrice}</td>
                <td>${c.productQt}</td>
                <td>${c.productRegDate}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>