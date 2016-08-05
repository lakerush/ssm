<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>  
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>  
    <title>showUser</title>
      
  </head>  
    
  <body>  
  <br/>
  <br/>
  <div align="center">userInfo</div>
  <br/>
  <table border="1" align="center">
    <tr align="center">
    	<td>userId&nbsp;&nbsp;&nbsp;</td>
    	<td>userName&nbsp;&nbsp;&nbsp; </td>
    	<td>password &nbsp;&nbsp;&nbsp;</td>
    	<td>age &nbsp;&nbsp;&nbsp;</td>
    	<td>operation &nbsp;&nbsp;&nbsp;</td>
    </tr>
  	<c:forEach items="${users}" var="user"> 
  		<tr align="center">
  			<td>${user.userid}</td>
  			<td>${user.username}</td>
  			<td>${user.password}</td>
  			<td>${user.age}</td>
  			<td>
  				<a href="javascript:void(0)" onclick="updateUser('${user.userid}')">update</a>/<a href="javascript:void(0);" onclick="deleteUser('${user.userid}','${user.username}')">delete</a>&nbsp;&nbsp;
  			</td>
  		</tr>
  	</c:forEach>
  	<tr><td colspan="2" align="center"><a href="${pageContext.request.contextPath}/user/toAddUser" >insert</a></td></tr>
  </table>
    <script type="text/javascript">
    function deleteUser(id,name){
    	if(confirm("Are you sure to delete  "+name+"?")){
    		location="${pageContext.request.contextPath}/user/deleteUser/"+id;
    		
    		 alert("delete success");
    	}
    }
    function updateUser(id){
    	location="${pageContext.request.contextPath}/user/toUpdateUser/"+id;
    }
    </script>
    
  </body>  
</html> 