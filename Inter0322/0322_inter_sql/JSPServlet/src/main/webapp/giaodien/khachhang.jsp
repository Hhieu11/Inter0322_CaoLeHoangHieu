<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 30/03/2022
  Time: 3:11 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>List Customer</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


    <h2>Danh sách khách hàng</h2>
    <form class="d-flex" style="float: right">
        <input class="form-control me-2" style="width: 70% "  type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
    </form>

</head>
<body>
<table class="table table-dark table-striped">
    <thead>
    <tr>
        <th scope="col">Customer ID</th>
        <th scope="col">Loại Khách hàng</th>
        <th scope="col">Tên Khách Hàng</th>
        <th scope="col">Ngày Sinh</th>
        <th scope="col">Giới Tính</th>
        <th scope="col">CMND</th>
        <th scope="col">SĐT</th>
        <th scope="col">Email</th>
        <th scope="col">Địa chỉ</th>

        <th scope="col">Thao tác</th>
    </tr>
    </thead>
    <tbody>
<c:forEach var="khachang" items="${khachHang}">
    <tr>
        <th scope="row">${khachang.id}</th>
        <td>${khachang.type}</td>
        <td>${khachang.name}</td>
    <td>${khachang.ngaySinh}</td>
    <td>
    <c:choose>
        <c:when test="${khachang.gender==0}"> Female</c:when>
        <c:when test="${khachang.gender==1}"> Male</c:when>
        <c:otherwise> LGBT</c:otherwise>

    </c:choose>

    <%--${nhanvien.gender}--%>
    </td>
    <td>${khachang.cmnd}</td>
    <td>${khachang.soDT}</td>
    <td>${khachang.email}</td>
    <td>${khachang.diaChi}</td>

        <td>
            <div class="btn-group" role="group" aria-label="Basic example">
                <a href="/khachhang?action=create" ><button type="button" class="btn btn-success" onclick="add()" >Thêm</button></a>
                <button onclick="onDelete(${khachang.id})" type="button" name="action"  value="delete" class="btn btn-primary"
                        data-toggle="modal" data-target="#exampleModal" style="background-color: #ff0000">
                    Xóa

                </button>
                <button type="button" class="btn btn-warning">Sửa</button>
            </div>
        </td>
    </tr>



    </tbody>
    </c:forEach>
</table>

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Confirm Delete</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="/khachhang" method="post">
                <input type="hidden" name="id" id="idKhachHangDelete">
                <input type="hidden" name="action" value="delete">
                <div class="modal-body">
                    <h4> Bạn có muốn xóa không</h4>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Delete</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    function add() {
        location.assign("addCustomer.html");
    }
    function onDelete(idKhachHangDelete) {
        document.getElementById('idKhachHangDelete').value=idKhachHangDelete;

    }
</script>
<nav aria-label="Page navigation example">
    <ul class="pagination justify-content-center">
        <li class="page-item disabled">
            <a class="page-link">Previous</a>
        </li>
        <li class="page-item"><a class="page-link" href="#">1</a></li>
        <li class="page-item"><a class="page-link" href="#">2</a></li>
        <li class="page-item"><a class="page-link" href="#">3</a></li>
        <li class="page-item">
            <a class="page-link" href="#">Next</a>
        </li>
    </ul>
</nav>
</body>

</html>
