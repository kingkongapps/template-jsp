<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>SampleAjax</title>
    <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
    <style>
        table {
          width: 80%;
        }
        table, th, td {
          border: 1px solid #bcbcbc;
        }
    </style>
</head>
<body>
    <H1>Welcome~ Home~!</H1>

    <form action="/api/v1/getSampleList" method="POST">
    <table>
        <tr>
            <td><input type="hidden" id="id"></td>
        </tr>
        <tr>
            <td>이름</td>
            <td><input type="text" id="name" name="name" value="길동"></td>
            <td>주소</td>
            <td><input type="text" id="addr" name="addr" value="서울시"></td>
            <td>연락처</td>
            <td><input type="text" id="cellPhone" name="cellPhone" value=""></td>
        </tr>
        <tr>
            <td colspan="6" align="center"><button type="button" onclick="getSampleList()">Search</button></td>
        </tr>
    </table>
    </form>

    <div id="list" />
<script>
    function getSampleList() {

        var param = {};
        param.id        = $("#id").val();
        param.name      = $("#name").val();
        param.addr      = $("#addr").val();
        param.cellPhone = $("#cellPhone").val();

        console.log(param);

        $.ajax({
            url : '/api/v1/getSampleList',
            method : 'post',
            data : JSON.stringify(param),
            dataType : 'json',               /*html, text, json, xml, script*/
            beforeSend: function (xhr) {
                xhr.setRequestHeader("Content-type","application/json");
            },
            success : function(res){
                console.log(res);

                var list = res.data;
                var s = "<table>";
                s += "<tr><td>ID</td><td>Name</td><td>Address</td><td>Cell Phone</td></tr>";

                list.forEach(function(d) {
                    s += "<tr>";
                    s += "<td>" + d.id        + "</td>";
                    s += "<td>" + d.name      + "</td>";
                    s += "<td>" + d.addr      + "</td>";
                    s += "<td>" + d.cellPhone + "</td>";
                    s += "</tr>";
                });
                s += "</table>";

                $("#list").html(s);
            },
            error : function(xhr, status, error) {
                console.log(xhr);
                console.log(status);                // 'error'
                console.log(error);                 // 'Not Found'

                alert(xhr.status);           // 에러코드(404, 500 등)
                alert(xhr.responseText);     // html 포맷의 에러 메시지
            }
        });
    }
</script>
</body>
</html>