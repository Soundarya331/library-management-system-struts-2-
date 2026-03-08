<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find Book</title>
<style>
  body { font-family: Arial, sans-serif; margin: 50px auto; max-width: 400px; }
  input[type="text"] { width: 100%; padding: 7px; margin: 5px 0 12px; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box; }
  input[type="submit"] { background: #4a90d9; color: white; border: none; padding: 8px 18px; border-radius: 4px; cursor: pointer; }
  input[type="submit"]:hover { background: #357abd; }
  .book-card { border: 1px solid #ccc; padding: 10px; margin-bottom: 10px; border-radius: 4px; background: #fafafa; }
  .bottom-link { margin-top: 15px; padding-top: 10px; border-top: 1px solid #eee; }
  a { color: #4a90d9; text-decoration: none; font-size: 0.9rem; }
  a:hover { text-decoration: underline; }
</style>
</head>
<body>

<h2>Find Book</h2>

<s:form action="getBookByName">
    <s:textfield name="name" label="Book Name"/>
    <s:submit value="Search"/>
</s:form>

<s:iterator value="books">
    <div class="book-card">
        <p><strong>Book Name:</strong> <s:property value="name"/></p>
        <p><strong>Author:</strong>    <s:property value="author"/></p>
        <p><strong>Price:</strong>     <s:property value="price"/></p>
        <p><strong>Genre:</strong>     <s:property value="genre"/></p>
    </div>
</s:iterator>

<div class="bottom-link">
    <a href="welcome.jsp">← Dashboard</a>
</div>

</body>
</html>