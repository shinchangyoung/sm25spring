<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:choose>
    <c:when test="${sessionScope.logincust.custId == 'admin'}">
        <div class="col-sm-3">
            <p>Admin Menu</p>
            <p><a href="/productitem/get">Get</a></p>
            <p><a href="/productitem/add">Add</a></p>
        </div>
    </c:when>
    <c:otherwise>
        <div class="col-sm-0">

        </div>
    </c:otherwise>
</c:choose>
