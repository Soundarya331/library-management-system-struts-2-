<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Books</title>
<style>
  body { font-family: Arial, sans-serif; margin: 50px auto; max-width: 500px; }
  h1 { color: #333; margin-bottom: 20px; }
  .book-card { border: 1px solid #ccc; padding: 10px 15px; margin-bottom: 12px; border-radius: 4px; background: #fafafa; }
  .book-card h4 { margin: 5px 0; font-size: 0.95rem; color: #444; }
  .bottom-link { margin-top: 20px; padding-top: 10px; border-top: 1px solid #eee; }
  a { color: #4a90d9; text-decoration: none; font-size: 0.9rem; }
  a:hover { text-decoration: underline; }
</style>
</head>
<body>

<h1>Available Books</h1>

<s:iterator value="books">
    <div class="book-card">
        <h4>Book Name: <s:property value="name"/></h4>
        <h4>Author: <s:property value="author"/></h4>
        <h4>Price: <s:property value="price"/></h4>
        <h4>Genre: <s:property value="genre"/></h4>
    </div>
</s:iterator>

<div class="bottom-link">
    <a href="welcome.jsp">← Dashboard</a>
</div>

</body>
</html>