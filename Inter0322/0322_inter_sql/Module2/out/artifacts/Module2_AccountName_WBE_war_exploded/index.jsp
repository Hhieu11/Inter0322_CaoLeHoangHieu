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
    <h2>Regisstration Form</h2>
  </legend>
  <form action="https://www.google.com/" >a

    <div class="row">
      <label>StudentID *</label>
      <input type="text" placeholder="Inphut your ID" required>

    </div>
    <div class="row">
      <label>User Name</label>
      <input type="text" placeholder="">
    </div>
    <div class="row">
      <label>Password *</label>
      <input type="password" placeholder="">
    </div>
    <div class="row">
      <label>Email *</label>
      <input type="email">
    </div>
    <div class="row">
      <label>DOB</label>
      <input type="date">
    </div>
    <div class="row">
      <label>phone</label>
      <input type="tel">
    </div>
    <div class="row">
      <label>fee</label>
      <input type="number" placeholder="">
    </div>
    <div class="row">
      <label>Course</label>
      <input type="checkbox"> Java
      <input type="checkbox"> JDBC
      <input type="checkbox"> EJB
      <input type="checkbox"> JSP
    </div>
    <div class="row">
      <label>Grender</label>
      <input type="radio" name="gender"> male
      <input type="radio" name="gender"> Female
    </div>
    <div class="row">
      <label>Qualifitation</label>
      <select>
        <option>B</option>
        <option>A</option>
        <option>C</option>
        <option>D</option>
      </select>
    </div>
    <div class="row">
      <input class="btn" type="submit" value="OK">
    </div>
  </form>
</fieldset>
</body>
</html>