<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 30/03/2022
  Time: 3:09 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>contract</title>
    <link rel="stylesheet" href="../css/customer.css">
</head>
<body>
<fieldset>
    <legend>
        <h2>Thêm mới Hợp đồng</h2>
    </legend>
    <form action="#" >

        <div class="row">
            <label>ID Hợp đồng *</label>
            <input type="text" placeholder="Inphut your ID" required>

        </div>
        <div class="row">
            <label>Ngày bắt đầu hợp đồng</label>
            <input type="datetime-local" placeholder="">
        </div>
        <div class="row">
            <label>Ngày kết thúc hợp đồng</label>
            <input type="datetime-local" placeholder="">
        </div>
        <div class="row">
            <label>đặt cọc</label>
            <input type="number" name="gia">

        </div>
        <div class="row">
            <label>Tổng số tiền</label>
            <input type="number"  required>
        </div>
        <div class="row">
            <label>ID khách hàng</label>
            <input type="text"  required>
        </div>
        <div class="row">
            <label>ID nhân viên</label>
            <input type="text"  required>
        </div>
        <div class="row">
            <label>ID service</label>
            <input type="text"  required>
        </div>
        <div class="row">
            <input class="btn" type="submit" value="Thêm mới">
        </div>
    </form>
</fieldset>
</body>
</html>