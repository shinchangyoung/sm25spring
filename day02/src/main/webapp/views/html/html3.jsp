<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
  .table_img{
    width:1000px;
    height:400px;
  }
</style>


<div class="col-sm-9">
  <h2>HTML2 Center Page</h2>

  <div id="demo" class="carousel slide" data-ride="carousel">

    <!-- Indicators -->
    <ul class="carousel-indicators">
      <li data-target="#demo" data-slide-to="0" class="active"></li>
      <li data-target="#demo" data-slide-to="1"></li>
      <li data-target="#demo" data-slide-to="2"></li>
    </ul>

    <!-- The slideshow -->
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img class="table_img" src="/img/place1.png" alt="place1">
      </div>
      <div class="carousel-item">
        <img class="table_img" src="/img/place2.png" alt="place2">
      </div>
      <div class="carousel-item">
        <img class="table_img" src="/img/place3.png" alt="place3">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="carousel-control-prev" href="#demo" data-slide="prev">
      <span class="carousel-control-prev-icon"></span>
    </a>
    <a class="carousel-control-next" href="#demo" data-slide="next">
      <span class="carousel-control-next-icon"></span>
    </a>

  </div>
</div>