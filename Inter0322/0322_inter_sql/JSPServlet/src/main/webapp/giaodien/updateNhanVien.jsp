<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 30/03/2022
  Time: 3:10 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>employee</title>
    <link rel="stylesheet" href="../css/employee.css">
</head>
<body>
<fieldset>
    <legend>
        <h2>Update nhân viên</h2>
    </legend>
    <form action="/nhanvien" method="post" >
        <input type="hidden" name="action"value="update"/>
        <input type="hidden" name="id"value=""/>

        <div class="row">
            <label>ID Nhân viên *</label>
            <input type="text" name="id" placeholder="Inphut your ID" value="${nhanvien.id}" >

        </div>
        <div class="row">
            <label>Tên nhân viên</label>
            <input type="text" name="name" value="${nhanvien.name}" placeholder="">
        </div>
        <div class="row">
            <label>Ngày sinh *</label>
            <input type="text"name="ngaySinh"value="${nhanvien.ngaySinh}" placeholder="">
        </div>
        <div class="row">
            <label>Giới Tính</label>
            <input type="text" name="gender"value="${nhanvien.gender}" placeholder="" >
        </div>
        <div class="row">
            <label>Lương</label>
            <input type="text" name="luong" value="${nhanvien.luong}">

        </div>
        <div class="row">
            <label>Điện thoại</label>
            <input type="text"value="${nhanvien.soDT}" name="soDT">
        </div>
        <div class="row">
            <label>email</label>
            <input type="text" value="${nhanvien.email}" name="email">
        </div>
        <div class="row">
            <label>Địa chỉ</label>
            <input type="text"value="${nhanvien.diaChi}" name="diaChi">
        </div>
        <%--        <div class="row">--%>
        <%--            <label>ID position</label>--%>
        <%--            <input type="text">--%>
        <%--        </div>--%>
        <%--        <div class="row">--%>
        <%--            <label>ID degree</label>--%>
        <%--            <input type="text">--%>
        <%--        </div>--%>
        <%--        <div class="row">--%>
        <%--            <label>ID division</label>--%>
        <%--            <input type="text">--%>
        <%--        </div>--%>
        <%--        <div class="row">--%>
        <%--            <label>User name</label>--%>
        <%--            <input type="text">--%>
        <%--        </div>--%>
        <div class="row">
            <input class="btn" type="submit" value="Update">
        </div>
    </form>
</fieldset>
</body>
</html>
