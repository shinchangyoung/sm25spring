<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<style>
    .table_img{
        width:50px;
        height:70px;
        border: 1px solid aqua;
    }

    .tap_area{
        width: 400px;
        height: 70px;
        border: 2px solid aqua;
    }
</style>

<div class="col-sm-9">
    <h2>HTML Center Page</h2>

    <!-- Nav tabs -->
    <ul class="nav nav-tabs">
        <li class="nav-item">
            <a class="tap_area" data-toggle="tab" href="#home">Home</a>
        </li>
        <li class="nav-item">
            <a class="tap_area" data-toggle="tab" href="#menu1">Menu 1</a>
        </li>
        <li class="nav-item">
            <a class="tap_area" data-toggle="tab" href="#menu2">Menu 2</a>
        </li>
    </ul>

    <!-- Tab panes -->
    <div class="tab-content">
        <div class="tab-pane active container" id="home">hi1</div>
        <div class="tab-pane container" id="menu1">h2</div>
        <div class="tab-pane container" id="menu2">hhhh1</div>
    </div>

    <p>2025/07/10</p>

    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Primary</button>

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
            <td><img class="table_img" src="/img/p1.png" alt="p1" onclick="showImageModal(this)"></td>
            <td>person</td>
            <td>john@example.com</td>
        </tr>
        <tr>
            <td><img class="table_img" src="/img/p2.png" alt="p2" onclick="showImageModal(this)"></td>
            <td>Man</td>
            <td>mary@example.com</td>
        </tr>
        <tr>
            <td><img class="table_img" src="/img/p3.png" alt="p3" onclick="showImageModal(this)"></td>
            <td>Dooley</td>
            <td>july@example.com</td>
        </tr>
        </tbody>
    </table>
</div>




<!-- The Modal -->
<div class="modal fade" id="myModal">
    <div class="modal-dialog modal-dialog-centered">

        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">Modal Heading</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
                Modal body..
            </div>

            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
            </div>

        </div>
    </div>
</div>
</div>

<!-- 이미지 확대 모달 -->
<div class="modal fade" id="imgModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
            <div class="modal-body text-center">
                <img id="modalImage" src="" class="img-fluid" alt="크게 보기">
            </div>
        </div>
    </div>
</div>

<!-- 이미지 클릭 시 모달로 보기 -->
<script>
    function showImageModal(img) {
        const modalImg = document.getElementById("modalImage");
        modalImg.src = img.src;
        $('#imgModal').modal('show');
    }
</script>
