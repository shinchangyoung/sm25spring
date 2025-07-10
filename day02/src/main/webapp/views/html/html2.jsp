<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="col-sm-9">
  <h2>HTML2 Center Page</h2>

  <div class="dropdown">
    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
      Dropdown button
    </button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Link 1</a>
      <a class="dropdown-item" href="#">Link 2</a>
      <a class="dropdown-item" href="#">Link 3</a>
    </div>
  </div>

  <div class="form-group">
    <label for="usr">Name:</label>
    <input type="text" class="form-control" id="usr">
  </div>
  <div class="form-group">
    <label for="pwd">Password:</label>
    <input type="password" class="form-control" id="pwd">
  </div>

  <div class="form-group">
    <label for="comment">Comment:</label>
    <textarea class="form-control" rows="5" id="comment"></textarea>
  </div>

  <div class="container">
    <h2>Form Control Range and File</h2>
    <p>Add the .form-control-range class to input type"range" or .form-control-file to input type"file" to style a range control or a file field with full-width:</p>
    <form action="/action_page.php">

      <div class="form-group">
        <input type="file" class="form-control-file border" name="file">
      </div>
      <button type="submit" class="btn btn-primary">Submit</button>
    </form>
  </div>


</div>