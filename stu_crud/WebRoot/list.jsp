<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>显示学生列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
		.napu{
			font-size:12px;
		}
	</style>
  </head>
  
  <body bgcolor="#ffffff">
  	<table width="442" border="1" cellpadding="1" cellspacing="0" style="border-style:inherit" bordercolordark="#FFFFFF" class="napu">
  		<tr align="center">
  			<td><strong>编号</strong></td>
  			<td><strong>姓名</strong></td>
  			<td><strong>班级</strong></td>
  			<td><strong>成绩</strong></td>
  			<td><strong>修改</strong></td>
  			<td><strong>删除</strong></td>
  		</tr>
  		<c:forEach items="${list}" var="stu">
  		<tr align="center">
  			<td><c:out value="${stu.id }"></c:out></td>
  			<td><c:out value="${stu.name }"></c:out></td>
  			<td><c:out value="${stu.classes }"></c:out></td>
  			<td><c:out value="${stu.score }"></c:out></td>
  			<td><a href="student.do?method=getById&id=${stu.id}">编辑</a></td>
  			<td><a href="student.do?method=delete&id=${stu.id }">删除</a></td>
  		</tr>
  		</c:forEach>
  		<tr align="right">
  			<td colspan="6"><a href="insert.jsp">添加信息</a></td>
  		</tr>
  	</table>
  </body>
</html>
