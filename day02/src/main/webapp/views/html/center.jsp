<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    .table_img{
        width:50px;
        height:70px;
        border: 1px solid aqua;
    }
</style>

<div class="col-sm-9">

    <table class="table table-striped">
        <thead>
        <tr>
            <th>Firstname</th>
            <th>Lastname</th>
            <th>Email</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td><img class="table_img" src="/img/p1.png" alt="p1"></td>
            <td>person</td>
            <td>john@example.com</td>
        </tr>
        <tr>
            <td><img class="table_img" src="/img/p2.png" alt="p2"></td>
            <td>Man</td>
            <td>mary@example.com</td>
        </tr>
        <tr>
            <td><img class="table_img" src="/img/p3.png" alt="p3"></td>
            <td>Dooley</td>
            <td>july@example.com</td>
        </tr>
        </tbody>
    </table>
</div>
