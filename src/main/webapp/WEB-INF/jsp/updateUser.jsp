<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>  
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>  
    <title>updateUser</title>
      
  </head>  
    
  <body>  
  <br/>
  <br/><p align="center">UpdateUser</p>
  <form action="${pageContext.request.contextPath}/user/updateUser" method="post">
  <table align="center">
    <tr><td><input type="hidden" name="userid" value="${user.userid }"></td></tr>
  	<tr><td>username <input type="text" id="username" name="username" value="${user.username}"></td></tr>
  	<tr><td>password <input type="text" id="password" name="password" value="${user.password }"></td></tr>
  	<tr><td>&nbsp;&nbsp;age&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="age" name="age" value="${user.age }"></td></tr>
  	<tr><td>&nbsp;gender &nbsp;&nbsp;<input type="text" id="gender" name="gender" value="${user.gender }"></td></tr>
  	<tr>
  		<td align="center"><input type="submit" onclick="return confirm()" value="submit">
  		<input type="reset" value="reset"></td>
  	</tr>
  </table>
  </form>
    <script type="text/javascript">
  	function confirm(){
  		var name=document.getElementById("username").value;
  		var password=document.getElementById("password").value;
  		var age=document.getElementById("age").value;
  		var gender=document.getElementById("gender").value;
  		if(name==""||password==""||age==""||gender==""){
  			alert("please input all information");
  			return false;
  		}else if(isNaN(age)){
  			alert("age must be a number");
  			return false;
  		}else if(isNaN(gender)){
  			alert("gender must be a number");
  			return false;
  		}
  		return true;
  	}
    
    </script>
    
  </body>  
</html> 