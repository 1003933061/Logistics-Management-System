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

		<title>GLOBAL��������ϵͳ��̨����---${UserSession.deliveryspot.name}---����Ա</title>
		<link rel="stylesheet" type="text/css" href="<%=path %>/style/wuliu_back.css" />
		<script language="javascript" src="<%=path %>/js/wuliu_office.js"></script>
		<script language="javascript"> defaultStatus = "��ӭ����GLOBAL����---${UserSession.deliveryspot.name}����Ա��";</script>
	</head>
	<body>
	<c:if test="${UserSession.power.powerid==3}">
		<div id="container">
			<div id="banner">
				<div id="globallink">
					<ul>
						<li>
							<a href="<%=path %>/index.jsp">�칫��ҳ</a>
						</li>
						<li>
							<a href="<%=path %>/company.do?methodName=initAllDeliverySpot">��˾��ҳ</a>
						</li>
						<li>
							<a href="<%=path %>/login.do?methodName=loginOut">�˳�</a>
						</li>
					</ul>
				</div>
			</div>
			<div id="left">

				<div id="menu">
					<a onClick="test(1)">��������</a>
				</div>
				<div id="menu_down1" class="menu_down" style="display:block">
					<ul>
						<li>
							<a href="<%=path %>/ordersManage/Ordering.jsp" target="main">��д����</a>
						</li>

						<li>
							<a href="<%=path %>/ordersManage/SelectOrderByOrderNo.jsp" target="main">�鿴����</a>
						</li>
						
					</ul>
				</div>
				<div id="menu">
					<a onClick="test(2)">���ӵ�����</a>
				</div>
				<div id="menu_down2" class="menu_down" style="display:block">
					<ul>
						<li>
							<a href="<%=path %>/check/order.do?methodName=getJiaoJieYuanList" target="main">���ｻ��</a>
						</li>
						<li>
							<a href="<%=path %>/ordersManage/SelectJiaoJieDan.jsp" target="main">�鿴���ӵ�</a>
						</li>
					</ul>
				</div>
				<div id="menu">
					<a onClick="test(3)">Ͷ�ݵ�����</a>
				</div>
				<div id="menu_down3" class="menu_down" style="display:block">
					<ul>
						<li>
							<a href="<%=path %>/check/order.do?methodName=getTouDiYuanList" target="main">����Ͷ��</a>
						</li>
						<li>
							<a href="<%=path %>/ordersManage/SelectTouDiDan.jsp" target="main">�鿴Ͷ�ݵ�</a>
						</li>
						<li>
							<a href="<%=path %>/ordersManage/qianShouOrders.jsp" target="main">����ǩ��</a>
						</li>
					</ul>
				</div>
				
				<div id="menu">
					<a onClick="test(4)">�����鿴</a>
				</div>
				<div id="menu_down4" class="menu_down" style="display:block">
					<ul>
						<li>
							<a href="<%=path %>/carManage/searchCar.jsp" target="main">�鿴����</a>
						</li>
					</ul>
				</div>
				<div id="menu">
					<a onClick="test(5)">��·�鿴</a>
				</div>
				<div id="menu_down5" class="menu_down" style="display:block">
					<ul>
						<li>
							<a href="<%=path%>/check/line.do?methodName=listAllLine" target="main">�鿴��·</a>
						</li>
					</ul>
				</div>
				<div id="menu">
					<a onClick="test(6)">���͵�鿴</a>
				</div>

				<div id="menu_down6" class="menu_down" style="display:block">
					<ul>
						<li>
							<a href="<%=path %>/check/deliverySpot.do?methodName=viewPeiSongDian&id=${UserSession.deliveryspot.deliveryspotid }" target="main">�鿴���͵�</a>
						</li>
					</ul>
				</div>
			</div>
			<div id="main">
				<iframe name="main" id="main" frameborder="0" src="<%=path %>/ordersManage/Ordering.jsp">
				</iframe>
			</div>
			<div id="foot">
				<center>
					<pre>
               ��Ȩ����GLOBAL������˾ �������:��ICP��05039742��
              ҵ����ѯ�绰��0351-2720833 2720836 13805390912 ����ල�绰��13791568668 ���棺0351-2720899
             �ܹ�˾��ַ��ɽ��ʡ̫ԭ���������186�ţ�̫ԭ����ѧ����100�ף�
</pre>
				</center>
			</div>
		</div>
		
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
