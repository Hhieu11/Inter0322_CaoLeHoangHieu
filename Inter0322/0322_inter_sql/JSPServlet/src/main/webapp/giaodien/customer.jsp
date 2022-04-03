<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 30/03/2022
  Time: 3:08 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="../css/customer.css">
</head>
<body>
<fieldset>
    <legend>
        <h2>Thêm mới khách hàng</h2>
    </legend>
    <form action="/khachhang" method="post" >
        <input type="hidden" name="action"value="create">


        <div class="row">
            <label>ID Khách hàng *</label>
            <input type="text" placeholder="Inphut your ID" required>
        </div>
        <div class="row">
            <label>ID type khách hàng *</label>
            <input type="text" placeholder="Inphut your ID" required>
        </div>
        <div class="row">
            <label>Tên khách hàng</label>
            <input type="text" placeholder="">
        </div>
        <div class="row">
            <label>Ngày sinh *</label>
            <input type="date" placeholder="">
        </div>
        <div class="row">
            <label>Giới tính</label>
            <input type="text" name="gender">
        </div>
        <div class="row">
            <label>ID card *</label>
            <input type="text"  required>

        </div>
        <div class="row">
            <label>Điện thoại</label>
            <input type="tel">
        </div>
        <div class="row">
            <label>email</label>
            <input type="email">
        </div>
        <div class="row">
            <label>Địa chỉ</label>
            <input type="">
        </div>
        <div class="row">
            <input class="btn" type="submit" value="Thêm mới">
        </div>
    </form>
</fieldset>
</body>
</html>