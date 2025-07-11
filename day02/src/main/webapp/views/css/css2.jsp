<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
  window.onload = function(){
    let hh2 = document.querySelector('h2');
    hh2.innerText = 'replace';

    let hh3 = document.querySelector('#header3');
    hh3.mouseover = function(){
      hh2.innerText = 'Click..'
    }

    let buttonClick = document.querySelector('#button_click')
    buttonClick.onclick = function () {
      this.innerText = 'Clicked';
    }

    document.querySelector('#go_naver').onclick = function (){
      let c = confirm('Are you going Now..');
      if(c == true){
        location.href='/login';
      }
    }

  }


</script>


<div class="col-sm-9">
  <h2>CSS2 Center Page</h2>
  <h3 id="header3">Header 3</h3>
  <button id="button_click">Click</button>
  <a href="#" id="go_naver">Naver</a>
</div>


