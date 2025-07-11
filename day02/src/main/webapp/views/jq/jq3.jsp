<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
  const jq1 = {
    // 초기화 함수: 이벤트 등록
    init: function () {
      // 폼 제출 이벤트 가로채기
      $('#jq2_form > button').click(() =>{  // 기본 제출 막기
        this.check();        // 유효성 검사 호출
      });

      // 성별 라디오버튼이 변경될 때 메시지 제거
      $('input[name="gender"]').change(() => {
        $('#gender_desc').text('');
      });
    },

    // 유효성 검사 함수
    check: function () {
      // 성별 선택 확인
      const gender = $('input[name="gender"]:checked').val();
      if (!gender) {
        $('#gender_desc').text('성별을 선택해주세요.').css('color', 'red');
        return;
      }

      // 취향 체크박스 중 하나 이상 선택했는지 확인
      const hobby = $('input[name="hobby"]:checked').val();
      if (!hobby) {
        $('#hobby_desc').text('취향박스를 선택하주세요').css('color','red');
        return;
      }


      const car = $('#sel1').val();
      if (!car) {
        $('#car_desc').text('K를 선택하주세요').css('color','red');
        return;
      }

      // range 최소값 조건 확인 (예: 10 이상 입력되었는지)
      const range = $('input[name="range"]').val();
      if (range < 10) {
        $('#range_desc').text('range는 최소 10 이상으로 설정해주세요.').css('color','red');
        return;
      }

      // 날짜가 선택되었는지 확인
      const date = $('input[name="date"]').val();
      if (!date) {
        $('#date_desc').text('날짜를 정해주세요').css('color','red');
        return;
      }

      // 모든 조건 통과 시 서버로 전송
      this.send();
    },

    // 서버로 데이터 전송 함수
    send: function () {
      $('#jq2_form').attr('method', 'post');                // 전송 방식 POST로 지정
      $('#jq2_form').attr('action', '/registertestimpl');   // 전송 경로 지정
      $('#jq2_form')[0].submit();                            // 실제 폼 전송
    }
  };

  // 문서가 준비되면 init 함수 실행
  $(document).ready(() => {
    jq1.init();
  });
</script>

<!-- HTML 폼 영역 -->
<div class="col-sm-9">
  <h2>회원가입 폼</h2>
  <form id="jq2_form">

    <!-- 성별 라디오 선택 -->
    <h5>성별 <span id="gender_desc"></span></h5>
       <div class="form-check">
      <label class="form-check-label">
        <input type="radio" class="form-check-input" name="gender" value="F">Female
      </label>
    </div>
    <div class="form-check">
      <label class="form-check-label">
        <input type="radio" class="form-check-input" name="gender" value="M">Male
      </label>
    </div>
    <hr>

    <!-- 취향 체크박스 (복수 선택 가능) -->
    <h5>취향 <span id="hobby_desc"></span></h5>

    <div class="form-check">
      <input type="checkbox" class="form-check-input" id="check1" name="hobby" value="1">
      <label class="form-check-label" for="check1">Eat</label>
    </div>
    <div class="form-check">
      <input type="checkbox" class="form-check-input" id="check2" name="hobby" value="2">
      <label class="form-check-label" for="check2">Study</label>
    </div>
    <div class="form-check">
      <input type="checkbox" class="form-check-input" id="check3" name="hobby" value="3">
      <label class="form-check-label" for="check3">Coding</label>
    </div>

    <!-- 셀렉트 박스 -->
    <div class="form-group">
      <label for="sel1">Select list <span id="car_desc"></span></label>
      <select class="form-control" id="sel1" name="car">
        <option value="">선택바람</option>
        <option value="K1">K1</option>
        <option value="K2">K2</option>
        <option value="K3">K3</option>
        <option value="K4">K4</option>
      </select>
    </div>
    <hr>

    <!-- 수치 범위 입력 (슬라이더) -->
    <h5>Range <span id="range_desc"></span></h5>
    <input type="range" class="form-control-range" name="range" min="0" max="100" value="0">
    <hr>

    <!-- 날짜 입력 -->
    <h5>Calendar <span id="date_desc"></span></h5>
    <input type="date" name="date">
    <hr>

    <!-- 폼 제출 버튼 -->
    <button type="button" class="btn btn-primary">Register</button>
  </form>
</div>
