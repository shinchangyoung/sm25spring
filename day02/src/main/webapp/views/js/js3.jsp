<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
  .stxt{
    color:red;
  }
</style>
<script>
  let jq_center = {
    init:function(){
      $('#jq_form > div > button').click(()=>{
        $('#jq_form').attr('method','post');
        $('#jq_form').attr('action','/jq/jqformtest');
        $('#jq_form').submit();
      });
    }
  }
  $(document).ready(()=>{
    jq_center.init();
  });
</script>



<%-- Center Page --%>
<div class="col-sm-9">
  <h2>jQuery Center Page</h2>
  <form id="jq_form">
    <div class="row">
      <div class="col-sm-9">
        <div class="form-group">
          <label for="id">Id:</label>
          <input type="text" class="form-control" id="id" name="id">
          <span id="sid" class="stxt"></span>
        </div>
        <div class="form-group">
          <label for="pwd">Password:</label>
          <input type="password" class="form-control" id="pwd" name="pwd">
        </div>
        <div class="form-group">
          <label for="cpwd">Check Password:</label>
          <input type="password" class="form-control" id="cpwd">
        </div>
        <div class="form-group">
          <label for="comment">Comment:</label>
          <textarea class="form-control" rows="5" id="comment" name="comment"></textarea>
        </div>
        <div class="form-group">
          <div class="form-check">
            <label class="form-check-label">
              <input type="checkbox" name="ch" class="form-check-input" value="op1">Option 1
            </label>
          </div>
          <div class="form-check">
            <label class="form-check-label">
              <input type="checkbox" name="ch" class="form-check-input" value="op2">Option 2
            </label>
          </div>
          <div class="form-check">
            <label class="form-check-label">
              <input type="checkbox" name="ch" class="form-check-input" value="op3">Option 3
            </label>
          </div>
        </div>

        <div class="form-group">
          <div class="form-check-inline">
            <label class="form-check-label">
              <input type="radio" class="form-check-input" name="ra" value="ra1">Option 1
            </label>
          </div>
          <div class="form-check-inline">
            <label class="form-check-label">
              <input type="radio" class="form-check-input" name="ra" value="ra2">Option 2
            </label>
          </div>
          <div class="form-check-inline disabled">
            <label class="form-check-label">
              <input type="radio" class="form-check-input" name="ra" value="ra3">Option 3
            </label>
          </div>
        </div>
        <div class="form-group">
          <label for="sel1">Select list:</label>
          <select class="form-control" id="sel1" name="sel">
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
          </select>
        </div>
      </div> <!-- end col-9  -->

      <div class="col-sm-3">

      </div>
      <button type="button" class="btn btn-primary">Register</button>
    </div>

  </form>

</div>