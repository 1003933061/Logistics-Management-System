<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/style/wuliu_back.css" />
		<title>GLOBAL��������ϵͳ��̨����---��������</title>
		<script type="text/javascript">
   function sucess(){
     var f = document.forms[0];
     f.action="";
     f.submit();
  }
</script>
	</head>

	<body>
	<c:if test="${UserSession.power.powerid!=3}">
		<h1>
			����״̬ά��
		</h1>
		<form action="<%=path%>/check/car.do?methodName=changeState" method="post">
			<center>
				<table border="0" class="t1">
					<tr>
						<td>
							���ƺ�:
						</td>
						<td>
							<select name="carNO">
								<c:forEach var="c" items="${carlist}">
									<option value="${c.carid }">
										${c.carno }
									</option>
								</c:forEach>
							</select>
						</td>
						<td>
							����״̬:
						</td>
						<td>
							<select name="state">
								<option value="4">
									����
								</option>
								<option value="2">
									;��
								</option>
								<option value="3">
									ά��
								</option>
							</select>
						</td>
						<td>
							<input type="submit" value="�޸�" />
						</td>
					</tr>
				</table>
			</center>
		</form>
		</c:if>
	 	<c:if test="${UserSession.power.powerid==3}">
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<h1>
				����Ȩ���ʴ�ҳ�棡����
			</h1>
		</c:if>
	</body>
</html>
