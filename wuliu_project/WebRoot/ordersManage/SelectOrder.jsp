<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean"
	prefix="bean"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html"
	prefix="html"%>

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

		<title>GLOBAL��������ϵͳ��̨����---������Ϣ</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/style/wuliu_back.css" />
	</head>

	<body>
<c:if test="${UserSession.power.powerid==3}">
		<form name="f1" id="f1" action="" method="post">
			<center>
				<h1>
					������Ϣ
				</h1>
				�����ţ�${orderno }
				<table border="1" class="t1">

					<tr>
						<td colspan="2" align="center">
							�ռ�����ϸ��Ϣ
						</td>
						<td colspan="2" align="center">
							�ļ�����ϸ��Ϣ
						</td>
					</tr>
					<tr>
						<td>
							����
						</td>
						<td>
							<bean:write name="order" property="receivename" />
						</td>
						<td>
							����
						</td>
						<td>
							<bean:write name="order" property="sendname" />
						</td>
					</tr>
					<tr>
						<td>
							��ַ
						</td>
						<td>
							<bean:write name="order" property="receiveaddress" />
						</td>
						<td>
							��ַ
						</td>
						<td>
							<bean:write name="order" property="sendaddress" />
						</td>
					</tr>
					<tr>
						<td>
							�̶��绰
						</td>
						<td>
							<bean:write name="order" property="receivetel" />
						</td>
						<td>
							�̶��绰
						</td>
						<td>
							<bean:write name="order" property="sendtel" />
						</td>
					</tr>
					<tr>
						<td>
							�绰
						</td>
						<td>
							<bean:write name="order" property="receivemobile" />
						</td>
						<td>
							�绰
						</td>
						<td>
							<bean:write name="order" property="sendmobile" />
						</td>
					</tr>
					<tr>
						<td>
							�ʱ�
						</td>
						<td>
							<bean:write name="order" property="receivepostcode" />
						</td>
						<td>
							�ʱ�
						</td>
						<td>
							<bean:write name="order" property="sendpostcode" />
						</td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							������Ϣ
						</td>
						<td colspan="2" align="center">
							֧����Ϣ
						</td>
					</tr>
					<tr>
						<td>
							������kg��
						</td>
						<td>
							<bean:write name="order" property="weight" />
						</td>
						<td>
							��Ʒ���ۣ���Ԫ��
						</td>
						<td>
							<bean:write name="order" property="goodsprice" />
						</td>
					</tr>
					<tr>
						<td>
							�����m3��
						</td>
						<td>
							<bean:write name="order" property="volume" />
						</td>
						<td>
							���۷��ã���Ԫ��
						</td>
						<td>
							<bean:write name="order" property="insureprice" />
						</td>
					</tr>
					<tr>
						<td>
							��������ʱ��
						</td>
						<td>
							<bean:write name="order" property="createtime" />
						</td>
						<td>
							�ܷ��ã���Ԫ��
						</td>
						<td>
							<bean:write name="order" property="totalprice" />
						</td>
					</tr>
					<tr>
						<td>
							��ע��ע��������ϸ��

						</td>
						<td colspan="3">
							<bean:write name="order" property="remark" />
						</td>
					</tr>
					<tfoot>
						<font color="red">����״̬��${order.orderstate.name }</font>
					</tfoot>
				</table>
			</center>
		</form>
		</c:if>
	 	<c:if test="${UserSession.power.powerid!=3}">
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
