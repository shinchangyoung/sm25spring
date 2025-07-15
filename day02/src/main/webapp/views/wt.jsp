<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>

    .wt{
        width: 500px;
        border: 2px solid skyblue;
    }

</style>

<script>
    let center = {
        init: function () {
            let date = new Date();
            let year = date.getFullYear();
            let month = date.getMonth() + 1;
            let day = date.getDate();

            if (month < 10) {
                month = '0' + month;
            }
            if (day < 10) {
                day = '0' + day;
            }

           // alert(year + '' + month + '' + day);

            let today = year + '' + month + '' + day + '0600';


            let wt1url  = ''; /*URL*/
            var queryParams = '?' + encodeURIComponent('serviceKey') + '='+''; /*Service Key*/
            queryParams += '&' + encodeURIComponent('pageNo') + '=' + encodeURIComponent('1'); /**/
            queryParams += '&' + encodeURIComponent('numOfRows') + '=' + encodeURIComponent('10'); /**/
            queryParams += '&' + encodeURIComponent('dataType') + '=' + encodeURIComponent('JSON'); /**/
            queryParams += '&' + encodeURIComponent('regId') + '=' + encodeURIComponent('11B10101'); /**/
            queryParams += '&' + encodeURIComponent('tmFc') + '=' + encodeURIComponent(today); /**/

           /*
            $.ajax({
                url: wt1url + queryParams,
                success: (data) => {
                    let wt1Data = data.response.body.items.item;
                    let weather = wt1Data[0];
                    $('#wt1').text(weather);

                }
            })
                      */

            $.ajax({
                url: wt1url + queryParams,
                success: (data) => {
                    let weather = data.response.body.items.item[0];

                    let output = "";

                    // weather 객체의 모든 key에 대해 반복
                    for (let key in weather) {
                        output += '"' + key + '": ' + weather[key] + '\n';
                    }

                    // 줄바꿈 적용해서 출력
                    $('#wt1').html(output.replace(/\n/g, '<br>'));
                }
            });




        }
    }
    $().ready(() => {
        center.init();
    });
</script>

<div class="col-sm-9">
    <h2>Weather page</h2>

    <div class="wt" id="wt1"></div>
</div>
