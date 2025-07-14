<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    #results{
        width: 200px;
        border:2px solid red;
    }
    
</style>
<script>
    let center = {
        init:function(){
            let url = '/getdata';
            $.ajax({
                url:url,
                success:(data)=>{
                    console.log(data);
                    this.display(data);
                },
                error:()=>{}
            });
        },
        display:(data)=>{
            // JSON [{},{}]
            let result = '';
            $(data).each((index,item)=>{
                let cnt = item.cnt;
                let title = item.title;
                let updown = item.updown;
                result += '<p>'+cnt+' '+title+' '+updown+'</p>';
            });
            $('#results').html(result);
        }
    }
    $().ready(()=>{
        center.init();
    });
</script>
<%-- Center Page --%>
<div class="col-sm-7">
    <h2>TITLE HEADING</h2>
    <h5>Title description, Sep 2, 2017</h5>
    <div class="fakeimg">Fake Image</div>
</div>
<div class="col-sm-3">
    <h4>실시간검색순위</h4>
    <div id="results"></div>
</div>