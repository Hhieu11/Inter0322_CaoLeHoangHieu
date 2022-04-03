<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 30/03/2022
  Time: 3:10 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>service</title>
    <link rel="stylesheet" href="../css/customer.css">
</head>
<body>
<fieldset>
    <legend>
        <h2>Thêm mới Dịch vụ</h2>
    </legend>
    <form action="#" >

        <div class="row">
            <label>ID Dịch vụ</label>
            <input type="text" placeholder="Inphut your ID" required>

        </div>
        <div class="row">
            <label>Tên dịch vụ</label>
            <input type="text" placeholder="">
        </div>
        <div class="row">
            <label>Khu Vực</label>
            <input type="date" placeholder="">
        </div>
        <div class="row">
            <label>giá</label>
            <input type="number" name="gia">

        </div>
        <div class="row">
            <label>People</label>
            <input type="text"  required>

        </div>
        <div class="row">
            <label>room</label>
            <input type="text">
        </div>

        <div class="row">
            <input class="btn" type="submit" value="Thêm mới">
        </div>
    </form>
</fieldset>
</body>
</html>