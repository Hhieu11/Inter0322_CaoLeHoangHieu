<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>trang chu</title>
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

  <!-- jQuery library -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

  <!-- Latest compiled JavaScript -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="../css/form.css">
</head>

<body>

<header class="container-fluid" style="background-color:#d4463b;color:#fff;height:200px;">
  <div class="tieude">
    <img class="anh1" src="../images/logofurama.png" alt="">
    <h1 id="name"> Hiếu</h1>
  </div>

</header>
<nav class="navbar navbar-inverse" data-spy="affix" data-offset-top="197">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">
        <img src="../images/logo-01.png" alt="logo" id="logo">
      </a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.html">Home</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Employee
            <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="/nhanvien?action=create">THêm mới nhân viên</a></li>
            <li><a href="/nhanvien">Danh sách nhân viên</a></li>

          </ul>
        </li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Customer
            <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="/khachhang?action=create">Thêm mới khách hàng</a></li>
            <li><a href="/khachhang">Danh sách khách hàng</a></li>

          </ul>
        </li>
        <li><a href="../giaodien/service.jsp">Service</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Contract
            <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="../giaodien/employee.jsp">THêm mới hợp đồng</a></li>

          </ul>
        </li>

      </ul>
      <form class="navbar-form navbar-left" action="/action_page.php">
        <div class="input-group">
          <input type="text" class="form-control" placeholder="Search">
          <div class="input-group-btn">
            <button class="btn btn-default" type="submit">
              <i class="glyphicon glyphicon-search"></i>
            </button>
          </div>
        </div>
      </form>
    </div>
  </div>
</nav>
<section>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="../images/furama3.jpg" alt="Chania">
        <div class="carousel-caption">
          <h3>Khu Nghỉ Dưỡng Furama</h3>
          <p>Furama is always so much fun!</p>
        </div>
      </div>

      <div class="item">
        <img src="../images/furama2.jpg" alt="Chicago">
        <div class="carousel-caption">
          <h3>Khu Nghỉ Dưỡng Furama</h3>
          <p>Thank you, Furama!</p>
        </div>
      </div>

      <div class="item">
        <img src="../images/furama3.jpg" alt="New York">
        <div class="carousel-caption">
          <h3>Khu Nghỉ Dưỡng Furama</h3>
          <p>We love the furma!</p>
        </div>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  <div class="row">
    <div class="col-md-3">
      <h2 class="container text-primary">
        <span class="glyphicon glyphicon-th-list"></span> New Title
      </h2>
      <div class="list-group">
        <a href="#" class="list-group-item active">Item one</a>
        <a href="#" class="list-group-item">Item two</a>
        <a href="#" class="list-group-item">Item three</a>
      </div>
    </div>
    <div class="col-md-9">
      <h1>Nội Dung:</h1>
    </div>
  </div>



</section>
</body>
</html>

