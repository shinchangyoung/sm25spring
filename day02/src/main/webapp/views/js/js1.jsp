<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
  #results{
    width:400px;
    border:2px solid red;
  }
</style>
<script>
  let js1 = {
    init:function(){
      document.querySelector('#getdata').onclick = ()=>{
        this.getData();
      }
    },
    getData:function(){
      let datas = [
        {id:'id01',name:'이말숙1',age:10},
        {id:'id02',name:'이말숙2',age:20},
        {id:'id03',name:'이말숙3',age:30}
      ];
      this.display(datas);
    },
    display:function(datas){
      let txt = '';
      for(let i=0;i<datas.length;i++){
        let id = datas[i].id;
        let name = datas[i].name;
        let age = datas[i].age;
        txt += '<p>';
        txt += id+' '+name+' '+age;
        txt += '</p>';
      }
      document.querySelector('#results').innerHTML = txt;
    }
  }
  window.onload = function(){
    js1.init();
  }
</script>
<%-- Center Page --%>
<div class="col-sm-9">
  <h2>JavaScrip1 Center Page</h2>
  <button type="button" class="btn btn-primary" id="getdata">Primary</button>
  <div id="results"></div>
</div>