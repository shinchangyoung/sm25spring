<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
  let jq1 = {
    init: function () {
      $('#jq2_form > button').click(() => {
        this.check();
      });

      $('#id').blur(() => {
        $('#id_desc').text('');
      });

      $('#email').blur(() => {
        $('#email_desc').text('');
      });


    },

    check: function () {
      let email = $('#email').val().trim();
      let id = $('#id').val().trim();
      let pwd = $('#pwd').val().trim();
      let pno = $('#pno').val().trim();


      //id
      if (id == '') {
        $('#id_desc').html('id는 필수 항목 입니다.');
        $('#id').focus();
        return;
      }

      const idRegex = /^[a-z0-9]{5,20}$/;
      if (!emailCheck.test(email)) {
        $('#id_desc').html('영문 소문자 또는 숫자 5~20자여야합니다.');
        $('#id').focus();
        return;
      }


      //email
      if (email == '') {
        $('#email_desc').html('Email은 필수 항목 입니다.');
        $('#email').focus();
        return;
      }

      const emailCheck = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
      if (!emailCheck.test(email)) {
        $('#email_desc').html('Email은 형식이 틀립니다.');
        $('#email').focus();
        return;
      }



      this.send();
    },
    send: function () {
      $('#jq2_form').attr('method', 'post');
      $('#jq2_form').attr('action', '/email');
      $('#jq2_form').submit();
    }
  }

  $().ready(() => {
    jq1.init();
  });
</script>


<div class="col-sm-9">
  <h2>JQ2 Center Page</h2>
  <h2>JqController에 /formtestimpl</h2>
  <!-- email_form -->
  <form id="jq2_form">

    <%--id input--%>
    <div class="form-group">
      <label for="id">id:<span id="id_desc"></span></label>
      <input type="text" class="form-control" placeholder="Enter id" id="id" name="id">
    </div>

    <%--비번 input--%>
    <div class="form-group">
      <label for="pwd">password:<span id="pwd_desc"></span></label>
      <input type="text" class="form-control" placeholder="Enter password" id="pwd" name="pwd">
    </div>

    <%--전환번호 input--%>
    <div class="form-group">
      <label for="pno">phone number:<span id="pno_desc"></span></label>
      <input type="text" class="form-control" placeholder="Enter phone number" id="pno" name="pno">
    </div>


    <%--email input--%>
    <div class="form-group">
      <label for="email">email:<span id="email_desc"></span></label>
      <input type="text" class="form-control" placeholder="Enter email" id="email" name="email">
    </div>


    <button type="button" class="btn btn-primary">INPUT</button>
  </form>


</div>