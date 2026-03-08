<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book details</title>
<style>
  body { font-family: Arial, sans-serif; margin: 50px auto; max-width: 400px; }
  input[type="text"] { width: 100%; padding: 7px; margin: 5px 0 12px; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box; }
  input[type="submit"] { background: #4a90d9; color: white; border: none; padding: 8px 18px; border-radius: 4px; cursor: pointer; }
  input[type="submit"]:hover { background: #357abd; }
  .success { background: #d4edda; color: #155724; border: 1px solid #c3e6cb; padding: 10px; border-radius: 4px; margin-bottom: 12px; }
  .error { background: #f8d7da; color: #721c24; border: 1px solid #f5c6cb; padding: 10px; border-radius: 4px; margin-bottom: 12px; }
  .bottom-link { margin-top: 15px; padding-top: 10px; border-top: 1px solid #eee; }
  a { color: #4a90d9; text-decoration: none; font-size: 0.9rem; }
  a:hover { text-decoration: underline; }
</style>
</head>
<body>

<h2>Add Book</h2>

<!-- Success message from Action -->
<s:if test="hasActionMessages()">
    <div class="success">
        <s:actionmessage/>
    </div>
</s:if>

<!-- Validation error messages -->
<s:if test="hasFieldErrors()">
    <div class="error">
        <s:fielderror/>
    </div>
</s:if>

<s:form action="saveBook">
    <s:textfield name="name" label="Book Name"/>
    <s:textfield name="price" label="Price"/>
    <s:textfield name="author" label="Author"/>
    <s:textfield name="genre" label="Genre"/>
    <s:submit value="Save"/>
</s:form>

<div class="bottom-link">
    <a href="welcome.jsp">← Dashboard</a>
</div>

</body>
</html>