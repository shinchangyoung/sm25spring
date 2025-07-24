<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- Center Page --%>
<c:choose>
    <c:when test="${sessionScope.logincust.custId = 'admin'}"></c:when>

    <c:otherwise>

<div class="col-sm11">
    <h2>Product Item Center Page</h2>

</div>
    </c:otherwise>
</c:choose>