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

		<title>GLOBAL��������ϵͳ��̨����---${UserSession.deliveryspot.name}---���͵�</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

		<link rel="stylesheet" type="text/css" href="<%=path %>/style/wuliu_back.css" />
		<script language="javascript" src="<%=path %>/js/wuliu_office.js"></script>
        <script language="javascript"> defaultStatus = "��ӭ����GLOBAL����---${UserSession.deliveryspot.name}���͵㣡";  </script>
        
	</head>
	<body>
	<c:if test="${UserSession.power.powerid==2}">
		<div id="container">
			<div id="banner">
				<div id="globallink">
					<ul>
						<li>
							<a href="index.jsp">�칫��ҳ</a>
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
					<a onClick="test(2)">Ա������</a>
				</div>
				<div id="menu_down2" class="menu_down" style="display:block">
					<ul>
					  <li>
							<a href="<%=path %>/check/employee.do?method=listDeliverySpot" target="main">��Ա����ְ</a>
						</li>
						<li>
							<a href="<%=path %>/check/selectEmployee.do?method=queryByEmpNO&dsID=${UserSession.deliveryspot.deliveryspotid}" target="main">�鿴Ա����Ϣ</a>
						</li>
					</ul>
				</div>
				<div id="menu">
					<a onClick="test(1)">�û�����</a>
				</div>
				<div id="menu_down1" class="menu_down" style="display:block">
					<ul>
						<li>
							<a href="<%=path %>/userManage/addUser.jsp" target="main">����û�</a>
						</li>

						<li>
							<a href="<%=path %>/check/user.do?methodName=list&dsid=${UserSession.deliveryspot.deliveryspotid}" target="main">�鿴�û�</a>
						</li>
					</ul>
				</div>
				
				<div id="menu">
					<a onClick="test(3)">��������</a>
				</div>
				<div id="menu_down3" class="menu_down" style="display:block">
					<ul>
						<li>
							<a href="<%=path %>/carManage/searchCar.jsp" target="main">�鿴����</a>
						</li>
						<li>
							<a href="<%=path %>/check/car.do?methodName=listAllCarNO" target="main">����״̬ά��</a>
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
				<div id="menu">
					<a onClick="test(7)">�������</a>
				</div>
				<div id="menu_down7" class="menu_down" style="display:block">
					<ul>
						<li>
							<a href="baoBiaoManage/viewBaoBiao.jsp" target="main">���ɱ���</a>
						</li>
					</ul>
				</div>

			</div>
			<div id="main">
				<iframe name="main" id="main" frameborder="0" src="<%=path %>/check/selectEmployee.do?method=queryByEmpNO&dsID=${UserSession.deliveryspot.deliveryspotid}">
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
	 	<c:if test="${UserSession.power.powerid!=2}">
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
