<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>회원가입</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
    <form action="/cz/register" method="post">
        <table>
            <tr>
                <td>아이디</td>
                <td><input name="uid" type="text" required>
                <span class="resultId"></span></td>
            </tr>
            <tr>
                <td>비밀번호</td>
                <td><input name="pass" id="pass" type="password" required></td>
            </tr>
            <tr>
                <td>비밀번호 확인</td>
                <td><input name="pass_check" id="pass_check" type="password" required>
                <span class="resultPass"></span></td>
            </tr>
            <tr>
                <td>이름</td>
                <td><input name="name" type="text" required></td>
            </tr>
            <tr>
                <td>전화번호</td>
                <td><input name="hp" type="text" required></td>
            </tr>
        </table>
        <input type="submit" value="회원가입">
    </form>
    <script src="/cz/js/checkregister.js"></script>
</body>
</html>