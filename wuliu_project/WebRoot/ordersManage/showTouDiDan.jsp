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
		<title>GLOBAL��������ϵͳ��̨����---Ͷ�ݵ�</title>
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="this is my page">
		<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
		<!--<link rel="stylesheet" type="text/css" href="./styles.css">-->
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/style/wuliu_back.css" />
	</head>
	<body>
		<center>
			<h1>
				Ͷ�ݵ���Ϣ
			</h1>
			<form name="f1" id="f1" action="" method="post">
				<table border="1" class="t1">
					<tr>
						<td>
							Ͷ�ݵ���
						</td>
						<td>
							<a
								href="<%=path%>/check/order.do?methodName=getTouDiDanDetaile&ReceiptID=${Receipt.receiptid}&receiptno=${Receipt.receiptno}">${Receipt.receiptno}</a>
						</td>

					</tr>
					<tr>
						<td>
							Ͷ��ʱ��
						</td>
						<td>
							${Receipt.createtime }
						</td>
					</tr>
					<tr>

						<td>
							�������͵�
						</td>
						<td>
							${Receipt.deliveryspot.name }
						</td>
					</tr>
					<tr>
						<td>
							Ͷ��������
						</td>
						<td>
							${Receipt.employee.name }
						</td>


					</tr>
					<tr>
						<td>
							��ע
						</td>
						<td>
							${Receipt.remark }
						</td>
					</tr>
				</table>
			</form>
		</center>
	</body>
</html>
