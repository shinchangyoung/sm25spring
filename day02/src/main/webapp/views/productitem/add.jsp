<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- Center Page: 상품 등록 폼이 위치하는 중앙 영역 --%>
<div class="col-sm-9">
    <h2>Product Add Page</h2>

    <%-- 상품 등록 폼 시작 --%>
    <%-- 
        - action: 폼 제출 시 데이터를 보낼 URL
        - method: POST 방식으로 전송
        - enctype: 파일 업로드를 위한 필수 설정
     --%>
    <form action="/productitem/addimpl" x>

        <%-- 상품 이름 입력 필드 --%>
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" class="form-control" placeholder="Enter name" id="name" name="productName">
        </div>

        <%-- 상품 가격 입력 필드 --%>
        <div class="form-group">
            <label for="price">Price:</label>
            <input type="number" class="form-control" placeholder="Enter price" id="price" name="productPrice">
        </div>

        <%-- 할인율 입력 필드 (소수 가능) --%>
        <div class="form-group">
            <label for="rate">Discount Rate:</label>
            <input type="number" min="0" step="0.1" class="form-control" placeholder="Enter discount rate" id="rate" name="discountRate">
        </div>

        <%-- 상품 이미지 업로드 필드 --%>
        <div class="form-group">
            <label for="pimg">Product Image:</label>
            <input type="file" class="form-control" placeholder="Enter image name" id="pimg" name="productImgFile">
        </div>

        <%-- 카테고리 ID 입력 필드 --%>
        <div class="form-group">
            <label for="cate">Cate ID:</label>
            <input type="number" class="form-control" placeholder="Enter cate id" id="cate" name="cateId">
        </div>

        <%-- 상품 등록 버튼 --%>
        <button type="submit" class="btn btn-primary">Register</button>
    </form>
</div>
