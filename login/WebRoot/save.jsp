<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- <% request.setCharacterEncoding("UTF-8"); %> --%>
<html> 
	<head>
		<title>确认登记</title>
		<style type="text/css">
		.STYLE2{
			font-size:12;
		}
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
<!-- 		<html:form action="/stuinfo"> -->
		
<!-- 			summary : <html:text property="summary"/><html:errors property="summary"/><br/> -->
<!-- 			classes : <html:text property="classes"/><html:errors property="classes"/><br/> -->
<!-- 			sex : <html:text property="sex"/><html:errors property="sex"/><br/> -->
<!-- 			username : <html:text property="username"/><html:errors property="username"/><br/> -->
<!-- 			likes : <html:text property="likes"/><html:errors property="likes"/><br/> -->
<!-- 			score : <html:text property="score"/><html:errors property="score"/><br/> -->
<!-- 			years : <html:text property="years"/><html:errors property="years"/><br/> -->
<!-- 			<html:submit/><html:cancel/> -->
<!-- 		</html:form> -->
	<form action="stuinfo.do" method="post" name="stuinfo" class="formdiv">
  		<table width="449" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#B0D8FF" ordercolor="#99CCFF" lign="center">
  			<tr>
  				<td colspan="2">
  					<div align="center" class="STYLE3">确认登记信息</div>
  				</td>
  			</tr>
  			<tr>
  				<td width="98">
  					<div algin="center" class="STYLE4">姓名：</div>
  				</td>
  				<td width="286">&nbsp;&nbsp;${param.username}
  					<input name="username" type="hidden" id="username" value="${param.username }"/>
  				</td>
  			</tr>
  			<tr>
  				<td>
  					<div algin="center" class="STYLE4">班级：</div>
  				</td>
  				<td width="286">&nbsp;&nbsp;${param.classes }
  					<input name="classes" type="hidden" id="classes" value="${param.classes }"/>
  				</td>
  			</tr>
  			<tr>
  				<td>
  					<div algin="center" class="STYLE4">成绩：</div>
  				</td>
  				<td width="286">&nbsp;&nbsp;${param.score }
  					<input name="score" type="hidden" id="score" value="${param.score }"/>
  				</td>
  			</tr>
  			<tr>
  				<td width="98">
  					<div algin="center" class="STYLE4">性别：</div>
  				</td>
  				<td width="286">
  					<span class="STYLE4">&nbsp;&nbsp;
  						<c:choose>
  							<c:when test="${param.sex eq '1' }">
  							男
  							</c:when><c:otherwise>
  							女
  							</c:otherwise></c:choose>	
  						<input type="hidden" name="sex" value="${param.sex }"/>
  					</span>
  				</td>
  			</tr>
  			<tr>
  				<td width="98">
  					<div algin="center" class="STYLE4">爱好：</div>
  				</td>
  				<td width="286">
  					<span class="STYLE4">&nbsp;&nbsp;${param.likes }
  						<input type="hidden" name="likes" id="likes" value="${param.likes }"/>
  					</span>
  				</td>
  			</tr>
  			<tr>
  				<td width="98">
  					<div algin="center" class="STYLE4">出生年月：</div>
  				</td>
  				<td width="286"> &nbsp;&nbsp;${param.years }
  					<input name="years" type="hidden" value="${param.years }"/>
  				</td>
  			</tr>
  			<tr>
  				<td>
  					<div align="center" class="STYLE4">自我介绍：</div>
  				</td>
  				<td>&nbsp;&nbsp;${param.summary }
  					<input type="hidden" name="summary" value="${param.summary }" />
  				</td>
  			</tr>
  			<tr>
  				<td colspan="2">
  					<div align="center">
  						<input type="submit" name="Submit" value="保存" />
  					</div>
  				</td>
  			</tr>
  			<tr><td colspan="2"> &nbsp;</td></tr>
  		</table>
  	</form>
	</body>
</html>

