<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Library</title>
<style>
  body { font-family: Arial, sans-serif; margin: 80px auto; max-width: 400px; }
  h1 { color: #333; margin-bottom: 5px; }
  h3 { color: #555; margin-bottom: 20px; }
  .menu { list-style: none; padding: 0; }
  .menu li { margin-bottom: 10px; }
  .menu li a {
    display: block;
    padding: 10px 15px;
    border: 1px solid #ccc;
    border-radius: 4px;
    text-decoration: none;
    color: #333;
    background: #fafafa;
    transition: background 0.2s;
  }
  .menu li a:hover { background: #4a90d9; color: white; border-color: #4a90d9; }
</style>
</head>
<body>

<h1>Library Management System</h1>
<h3>Choose an operation:</h3>

<ul class="menu">
    <li><a href="addBook.jsp">1. Add Book</a></li>
    <li><a href="getAll">2. See All Books</a></li>
    <li><a href="findBook">3. Search Book</a></li>
    <li><a href="updateBook">4. Update Book</a></li>
    <li><a href="deleteBook">5. Delete Book</a></li>
</ul>

</body>
</html>