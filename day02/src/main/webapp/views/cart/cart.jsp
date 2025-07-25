<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
    let cart = {
        init:function(){},
        del:function(productId){
            // 삭제 요청
            let custId = '${sessionScope.logincust.custId}';
            location.href='/cart/del?custId='+custId+'&productId='+productId;
        },
        mod:function(productId){
            // 수정 요청
            let custId = '${sessionScope.logincust.custId}';
            let cnt = $('#'+productId).val();
            location.href='/cart/mod?custId='+custId+'&productId='+productId+'&productQt='+cnt;

        }
    }

    $().ready(()=>{
        cart.init();
    });

</script>
<%-- Center Page --%>
<div class="col-sm-9">
    <h2>Cart Page</h2>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>Img</th>
            <th>Name</th>
            <th>Price</th>
            <th>Qt</th>
            <th>Date</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="c" items="${carts}">
            <tr>
                <td>
                    <a href="/productitem/see?id=${c.productId}">
                        <img src="/imgs/${c.productImg}" width="50px;">
                    </a>
                </td>
                <td>${c.productName}</td>
                <td>${c.productPrice}</td>
                <td>
                    <input type="number" value="${c.productQt}" class="form-control" id="${c.productId}">
                </td>
                <td>${c.cartRegdate}</td>
                <td><button type="button" class="btn btn-danger" onclick="cart.mod(${c.productId})">Update</button></td>
                <td><button type="button" class="btn btn-danger" onclick="cart.del(${c.productId})">Delete</button></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>