<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Book</title>
<style>
  body { font-family: Arial, sans-serif; margin: 50px auto; max-width: 400px; }
  input[type="text"] { width: 100%; padding: 7px; margin: 5px 0 12px; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box; }
  input[type="submit"] { background: #4a90d9; color: white; border: none; padding: 8px 18px; border-radius: 4px; cursor: pointer; }
  input[type="submit"]:hover { background: #357abd; }
  .bottom-link { margin-top: 15px; padding-top: 10px; border-top: 1px solid #eee; }
  a { color: #4a90d9; text-decoration: none; font-size: 0.9rem; }
  a:hover { text-decoration: underline; }
</style>
</head>
<body>

<h2>Update Book</h2>

<s:form action="findBookForUpdate">
    <s:textfield name="name" label="Enter Book Name"/>
    <s:submit value="Search"/>
</s:form>

<s:if test="books != null && books.size() > 0">
    <s:iterator value="books">
        <hr/>
        <s:form action="updateBookDetails">
            <s:textfield name="name"   label="Book Name" value="%{name}" readonly="true"/>
            <s:textfield name="author" label="Author"    value="%{author}"/>
            <s:textfield name="price"  label="Price"     value="%{price}"/>
            <s:textfield name="genre"  label="Genre"     value="%{genre}"/>
            <s:submit value="Update"/>
        </s:form>
    </s:iterator>
</s:if>

<div class="bottom-link">
    <a href="welcome.jsp">← Dashboard</a>
</div>

</body>
</html>