<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
  console.log('start1');
  window.online = function(){
    console.log('onload');

    let num = 10;
    let num2 = 100.10;
    let txt = '"abc"';
    let boolean = true;

    let arr = [1,2,3,'a'];
    let obj = {
      id:'do01',
      pwd:"pwd01",
    }

    let f1 = function(){}

    let u;

    let json = [{},{},{}]

    alert(typeof(f1));
  }
  console.log('start2');
</script>


<div class="col-sm-9">
  <h2>CSS2 Center Page</h2>

  <button type="button" class="btn btn-primary" id="getdata">Primary</button>

</div>