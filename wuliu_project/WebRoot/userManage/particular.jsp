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
		<base href="<%=basePath%>">

		<title>GLOBAL��������ϵͳ��̨����---��ʾ�û�����ϸ��Ϣ������Ա����ݵ���Ϣ</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/style/wuliu_back.css" />
	</head>

	<body>
		<center>
			<table border="0" class="t1" width="550">
				<tr>
					<td>
						Ա����ţ�
					</td>
					<td>
						${UserList.employee.empno}
					</td>
					<td>
						���͵㣺
					</td>
					<td>
						${UserList.deliveryspot.name }
					</td>

				</tr>
				<tr>
					<td>
						�û�����
					</td>
					<td>
						${UserList.username }
					</td>
					<td>
						Ȩ�ޣ�
					</td>
					<td>
						<font color="red">${UserList.power.name }</font>
					</td>
				</tr>
				<tr>
					<td colspan="4">
						<hr />
					</td>
				</tr>
				<tr>
					<td>
						������
					</td>
					<td>
						${EmployeeList.name }
					</td>
					<td>
						�Ա�
					</td>
					<td>
						<c:if test="${EmployeeList.gender == '1'}">
						  ��
						</c:if>
						<c:if test="${EmployeeList.gender == '0'}">
						  Ů
				</c:if>
					</td>
				</tr>
				<tr>
					<td>
						�������͵㣺
					</td>
					<td>
						${EmployeeList.deliveryspot.name }
					</td>
					<td>
						ְλ ��
					</td>
					<td>
						${EmployeeList.position.name }
					</td>
				</tr>
				<tr>
					<td>
						��ְ���ڣ�
					</td>
					<td>
						${EmployeeList.startwordtime }
					</td>
					<td>
						нˮ��
					</td>
					<td>
						${EmployeeList.salary }
					</td>
				</tr>
				<tr>
					<td>
						�������ڣ�
					</td>
					<td>
						${EmployeeList.birthday }
					</td>
					<td>
						���֤�ţ�
					</td>
					<td>
						${EmployeeList.cardid }
					</td>
				</tr>
				<tr>
					<td>
						��ַ��
					</td>
					<td>
						${EmployeeList.address }
					</td>
					<td>
						�绰���룺
					</td>
					<td>
						${EmployeeList.tel }
					</td>
				</tr>
				<tr>
					<td>
						�������䣺
					</td>
					<td>
						${EmployeeList.email }
					</td>
				</tr>

			</table>
		</center>
	</body>
</html>
