<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean"
	prefix="bean"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html"
	prefix="html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic"
	prefix="logic"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>GLOBAL��������ϵͳ��̨����---Ա����ϸ��Ϣ</title>
		<base href="<%=basePath%>">

		<link rel="stylesheet" type="text/css"
			href="<%=path%>/style/wuliu_back.css" />
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/style/wuliu_back.css" />

	</head>

	<body>
	<center>
		<table class="t1" width="550" border="0">
			<tr>
				<td>
					Ա����ţ�
				</td>
				<td>
					${employeeList.empno }
				</td>
				<td>
					�������͵㣺
				</td>
				<td>
					${employeeList.deliveryspot.name }
				</td>
			</tr>
			<tr>
				<td>
					������
				</td>
				<td>
					${employeeList.name }
				</td>
				<td>
					�Ա�
				</td>
				<td>
					<c:if test="${employeeList.gender == '1' }">
						��
						</c:if>
					<c:if test="${employeeList.gender == '0' }">
						Ů
						</c:if>
				</td>
			</tr>
			<tr>
			<td colspan="4"><hr/></td>
			</tr>
			<tr>
				<td>
					ְλ��
				</td>
				<td>
					<font color="red">${employeeList.position.name }</font>
				</td>
				<td>
					нˮ��
				</td>
				<td>
					${employeeList.salary }
				</td>
			</tr>
			<tr>
				<td>
					��ְ���ڣ�
				</td>
				<td>
					${employeeList.startwordtime }
				</td>
				<td>
					�������ڣ�
				</td>
				<td>
					${employeeList.birthday }
				</td>
			</tr>
			<tr>
				<td>
					���֤�ţ�
				</td>
				<td>
					${employeeList.cardid }
				</td>
				<td>
					�绰���룺
				</td>
				<td>
					${employeeList.tel }
				</td>
			</tr>
			<tr>
				<td>
					��ַ��
				</td>
				<td>
					${employeeList.address }
				</td>
				<td>
					�������䣺
				</td>
				<td>
					${employeeList.email }
				</td>
			</tr>
			</table>
		</center>
	</body>
</html>
