<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
  let js3 = {
    init:function(){
      $('#getdata').click(()=>{
        this.getData();
      });
    },
    getData:function(){
      let datas = [
        { id: 'id01', name: '이말숙1', age: 10 },
        { id: 'id02', name: '이말숙2', age: 20 },
        { id: 'id03', name: '이말숙3', age: 30 }
      ];
      this.display(datas);
    },
    display:function(datas){
      let txt = '';
      $(datas).each((index,data)=>{
        txt += '<tr>';
        txt += '<td>' + data.id + '</td>';
        txt += '<td>' + data.name + '</td>';
        txt += '<td>' + data.age + '</td>';
        txt += '</tr>';
      });
      $('#cust_table > tbody').html(txt);
    }
  }

  $(document).ready(() =>{
    js3.init();
    });
</script>


<div class="col-sm-9">
  <h2>JS3 Center Page</h2>

  <table id="cust_data" class="table table-striped">
    <thead>
    <tr>
      <th>Id</th>
      <th>Name</th>
      <th>Age</th>
    </tr>
    </thead>
    <tbody >
    <!-- 여기에 데이터가 들어감 -->
    </tbody>
  </table>
</div>