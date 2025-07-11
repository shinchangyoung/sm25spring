<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
  h2{
    color: white;
    background-color: black;
  }
  h3{
    color: yellow;
    background-color: blue;
  }

  #id3{
    color: aqua;
    background-color: yellow;
  }

  .myclass{
    color: goldenrod;
  }

  .block_class{
    display: block;
  }

  .inline_class{
    display: inline;
  }

</style>

<div class="col-sm-9">
  <h2>CSS1 Center Page</h2>
  <h3>CSS1 Center Page</h3>
  <h3 id = "id3">CSS1 Center Page</h3>
  <p class="myclass">안녕하세요!</p>
  <span>span1</span>
  <span class="block_class">span1</span>
</div>
