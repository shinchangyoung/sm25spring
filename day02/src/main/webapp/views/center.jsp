<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<style>
    #results {
        width: 200px;
        border: 2px solid red;
    }

    #weathers {
        width: 200px;
        border: 2px solid blue;
    }

    .wh{
        width: 500px;
        border: 2px solid greenyellow;
    }


    img {
        height: 20px;
        weight: 20px;
    }

</style>
<script>
    let center = {
        //HotItem
        init: function () {
            let url = '/getdata';
            $.ajax({
                url: url,
                success: (data) => {
                    console.log(data);
                    this.display(data);
                },
                error: () => {
                }
            });
            setInterval(() => {
                $.ajax({
                    url: url,
                    success: (data) => {
                        console.log(data);
                        this.display(data);
                    },
                    error: () => {
                    }
                });
            }, 10000);
            let date = new Date();
            let year = date.getFullYear();
            let month = date.getMonth() + 1;
            let day = date.getDate();

            if(month < 10){
                month = '0' + month;
            }
            if(day < 10){
                day = '0' + day;
            }

          //  alert(year + '' +  month + '' + day);

            let today = year + '' + month + '' + day + '0600';


            let wh1url = ''; /*URL*/
            let queryParams = '?' + encodeURIComponent('serviceKey') + '='+''; /*Service Key*/
            queryParams += '&' + encodeURIComponent('pageNo') + '=' + encodeURIComponent('1'); /**/
            queryParams += '&' + encodeURIComponent('numOfRows') + '=' + encodeURIComponent('10'); /**/
            queryParams += '&' + encodeURIComponent('dataType') + '=' + encodeURIComponent('JSON'); /**/
            queryParams += '&' + encodeURIComponent('stnId') + '=' + encodeURIComponent('108'); /**/
            queryParams += '&' + encodeURIComponent('tmFc') + '=' + encodeURIComponent(today); /**/

            $.ajax({
                url:wh1url + queryParams,
                success:(data)=>{
                let wh1Data = data.response.body.items.item[0].wfSv;
                $('#wh1').text(wh1Data);
            }
        })


            //weather
            // let url1 = '/weatherdata';
            // $.ajax({
            //     url: url1,
            //     success: (data) => {
            //         console.log(data);
            //         this.display(data);
            //     },
            //     error: () => {
            //     }
            // });
            //
            // setInterval(() => {
            //     $.ajax({
            //         url: url1,
            //         success: (data) => {
            //             console.log(data);
            //             this.display1(data);
            //         },
            //         error: () => {
            //         }
            //     });
            // }, 20000);
        },

        display: (data) => {
            // JSON [{},{}]
            let result = '';
            $(data).each((index, item) => {
                let cnt = item.cnt;
                let title = item.title;
                let updown = item.updown;
                result += (updown == 0) ? '<p>' + cnt + ' ' + title + ' ' + '<img class="updown" src="/img/up.png">' + '</p>'
                    : '<p>' + cnt + ' ' + title + ' ' + '<img class="updown" src="/img/down.png">' + '</p>';
            });
            $('#results').html(result);
        },

        // display1: (data) => {
        //     let result1 = '';
        //     $(data).each((index, weather) => {
        //         let region = weather.region;
        //         let temperature = weather.temperature;
        //         let wet = weather.wet;
        //         result1 += (wet == 0) ? '<p>' + region + ' ' + temperature + "도" + ' ' + '<img class="wet" src="/img/sun.png">' + '</p>'
        //             : '<p>' + region + ' ' + temperature + "도" + ' ' + '<img class="wet" src="/img/rain.png">' + '</p>';
        //     });
        //     $('#weathers').html(result1);
        // }


    }
    $().ready(() => {
        center.init();
    });
</script>
<%-- Center Page --%>
<div class="col-sm-7">
    <h2>TITLE HEADING</h2>
    <h5>Title description, Sep 2, 2017</h5>
    <div class="wh" id="wh1"></div>
</div>


<div class="col-sm-3">
    <h4>실시간검색순위</h4>
    <div id="results">로딩..</div>

<%--    <h4>실시간전국기온</h4>--%>
<%--    <div id="weathers">로딩..</div>--%>
</div>