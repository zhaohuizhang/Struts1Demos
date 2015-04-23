<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>学员登记</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
/* 	.STYLE2{ */
/* 		font-size:12px; */
/* 	} */
	.formdiv{
		margin-top: 20px;
		margin-left: auto;
		margin-right: auto;
	}
	.STYLE3{
		font-size: 16px;
		font-weight: bold;
		color: #FF0000;
	}
	.STYLE4{
		font-size: 12px;
	}
	
	</style>
  </head>
  
  <body>
  	<form action="save.do" method="post" name="stuname" class="formdiv">
  		<table width="449" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#B0D8FF" ordercolor="#99CCFF" lign="center">
  			<tr>
  				<td colspan="2">
  					<div align="center" class="STYLE3">学员登记</div>
  				</td>
  			</tr>
  			<tr>
  				<td width="98">
  					<div algin="center" class="STYLE4">姓名：</div>
  				</td>
  				<td width="286">&nbsp;&nbsp;
  					<input name="username" type="text" id="username"/>
  				</td>
  			</tr>
  			<tr>
  				<td>
  					<div algin="center" class="STYLE4">班级：</div>
  				</td>
  				<td width="286">&nbsp;&nbsp;
  					<input name="classes" type="text" id="classes"/>
  				</td>
  			</tr>
  			<tr>
  				<td>
  					<div algin="center" class="STYLE4">成绩：</div>
  				</td>
  				<td width="286">&nbsp;&nbsp;
  					<input name="score" type="text" id="score"/>
  				</td>
  			</tr>
  			<tr>
  				<td width="98">
  					<div algin="center" class="STYLE4">性别：</div>
  				</td>
  				<td width="286">
  					<span class="STYLE4">&nbsp;&nbsp;
  						<input type="radio" name="sex" value="1"/>男
  						<input type="radio" name="sex" value="0" />女
  					</span>
  				</td>
  			</tr>
  			<tr>
  				<td width="98">
  					<div algin="center" class="STYLE4">爱好：</div>
  				</td>
  				<td width="286">
  					<span class="STYLE4">&nbsp;&nbsp;
  						<input type="checkbox" name="likes" id="likes" value="游泳"/>游泳
  						<input type="checkbox" name="likes" id="likes" value="音乐"/>音乐
  						<input type="checkbox" name="likes" id="likes" value="单车"/>单车
  						<input type="checkbox" name="likes" id="likes" value="跑步"/>跑步
  					</span>
  				</td>
  			</tr>
  			<tr>
  				<td width="98">
  					<div algin="center" class="STYLE4">出生年月：</div>
  				</td>
  				<td width="286"> &nbsp;&nbsp;
  					<select name="years" id="years">
  						<option value="1980">1980</option>
  						<option value="1981">1981</option>
  						<option value="1982">1982</option>
  						<option value="1983">1983</option>
  						<option value="1984">1984</option>
  						<option value="1985">1985</option>
  						<option value="1986">1986</option>
  						<option value="1987">1987</option>
  						<option value="1988">1988</option>
  						<option value="1989">1989</option>
  						<option value="1990">1990</option>
  						<option value="1991">1991</option>
  					</select>
  				</td>
  			</tr>
  			<tr>
  				<td>
  					<div align="center" class="STYLE4">自我介绍：</div>
  				</td>
  				<td>&nbsp;&nbsp;
  					<textarea rows="10" cols="20" name="summary" id="summary"></textarea>
  				</td>
  			</tr>
  			<tr>
  				<td colspan="2">
  					<div align="center">
  						<input type="submit" name="Submit" value="提交" /> &nbsp;&nbsp;
  						<input type="reset" name="Submit2" vaue="重置">
  					</div>
  				</td>
  			</tr>
  			<tr><td colspan="2"> &nbsp;</td></tr>
  		</table>
  	</form>
  </body>
</html>
