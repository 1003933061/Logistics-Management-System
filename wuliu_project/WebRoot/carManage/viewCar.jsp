<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<title>GLOBAL��������ϵͳ��̨����---�鿴������ϸ��Ϣ</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/style/wuliu_back.css" />

	</head>

	<body>
		<h1> 
			${car.carno }������Ϣ 
		</h1>
		<center>
			<table border="0" class="t1" width="550">
				<tr>
					<td>
						���ƺţ�
					</td>
					<td>
						${car.carno }
						<br>
					</td>
					<td>
						Ӫ��֤�ţ�
					</td>
					<td>
						${car.workno }
					</td>
				</tr>
				<tr>
					<td colspan="4">
						<hr />
					</td>
				</tr>
				<tr>
					<td>
						�ݻ�
					</td>
					<td>
						${car.carsize }�������ף�
					</td>
					<td>
						���ͣ�
					</td>
					<td>
						${car.cartype.name }
					</td>
				</tr>
				<tr>
					<td>
						��λ��
					</td>
					<td>
						${car.tonnage }���֣�
					</td>

					<td>
						����״̬��
					</td>
					<td>
						<font color="red">${car.carstate.name}</font>
					</td>
				</tr>
				<tr>
					<td colspan="4">
						<hr />
					</td>
				</tr>
				<tr>
					<td>
						�������ڣ�
					</td>
					<td>
						${car.buytime }
					</td>
				</tr>
				<tr>
					<td>
						˾����
					</td>
					<td>
						<a href="<%=path %>/check/selectEmployee.do?method=listEmp&empNO=${car.employee.empno }">${car.employee.empno }</a>
					</td>
				</tr>
				<tr>
					<td>
						��ע��
					</td>
					<td>
						${car.remark }
					</td>
				</tr>
					
			</table>
		</center>
	</body>
</html>
