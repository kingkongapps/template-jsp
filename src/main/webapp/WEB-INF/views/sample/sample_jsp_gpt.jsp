<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>입력 양식</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<h1>사용자 정보 입력</h1>
<form id="userForm">
    <label for="id">ID:</label>
    <input type="text" id="id" name="id" required><br>

    <label for="name">이름:</label>
    <input type="text" id="name" name="name" required><br>

    <label for="address">주소:</label>
    <input type="text" id="address" name="address" required><br>

    <label for="cell_phone">휴대전화:</label>
    <input type="text" id="cell_phone" name="cell_phone" required><br>

    <button type="button" id="submitBtn">제출</button>
</form>

<script>
    $(document).ready(function () {
        $("#submitBtn").click(function () {
            var id = $("#id").val();
            var name = $("#name").val();
            var address = $("#address").val();
            var cellPhone = $("#cell_phone").val();

            var param = {};
            param.id = id;

            var data = {
                id: id,
                name: name,
                addr: address,
                cellPhone: cellPhone
            };

            $.ajax({
                type: "POST",
                url: "/api/v1/getSampleList",
                data: JSON.stringify(data),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    // 서버로부터의 JSON 응답 처리
                    console.log(response);
                    // 여기에서 필요한 작업을 수행하십시오.
                }
            });
        });
    });
</script>
</body>
</html>
