<%@ page language="java" pageEncoding="gbk"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean"
	prefix="bean"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html"
	prefix="html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%String path = request.getContextPath(); %>
<html>
	<head>
		<title>GLOBAL����---����</title>
		<link rel="stylesheet" type="text/css" href="<%=path %>/style/wuliu.css" />
		<style type="text/css">
			<!--
			.STYLE1 {color: #CC0000}
			.STYLE4 {color: #0062C4}
			-->
		</style>
		<script type="text/javascript">
		    function searchOrderState(){
			 var k = document.f1;
			 k.action = "<%=path %>/company.do?methodName=queryOrderSatateByOrderNO";
			 k.submit();
			}
		</script>
		<SCRIPT type=text/javascript src="<%=path %>/js/company.js"></SCRIPT>
		<script language="javascript"> defaultStatus = "��ӭ����GLOBAL����---���ţ�";</script>
</head>
	<body onload="load();">
		<div id="container">
			<div id="banner">
			</div>
			<div id="globallink">
				<ul>
						<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li>
						<a href="<%=path %>/wuliu.jsp">��ҳ</a>
					</li>
					<li>
						<a href="<%=path %>/global/About.jsp">��������</a>
					</li>
					<li>
						<a href="<%=path %>/global/News.jsp">��˾����</a>
					</li>
					<li>
						<a href="<%=path %>/global/UserServer.jsp">�ͻ�����</a>
					</li>
					<li>
						<a href="<%=path %>/global/ZhaoPin.jsp">��Ƹ��Ϣ</a>
					</li>
				</ul>
			</div>
			<div id="left">
				<div id="search">
					<img src="<%=path %>/global_images/search.gif" />
					<br />
					
					<br />
					<form action="<%=path %>/company.do?methodName=queryOrderSatateByOrderNO" method="post" name="f1">
						<input type="text" name="orderNO" class=search-normal 
                                onblur="toggleColorSearch(this); blurSearch();" 
                                  onfocus="toggleColorSearch(this); focusSearch();" 
                                   value="��������Ҫ��ѯ�Ķ�����"/>
						<br />
					 <img src="<%=path %>/global_images/search.jpg" border="0"  onclick="searchOrderState()"/>
						
					</form>
				</div>
				<div id="photo">
					<img src="<%=path %>/global_images/left.JPG" />
				</div>
				<div id="contact">
					<div id="lianxi">
						&nbsp;
						<br />
						&nbsp;
						<br />
						&nbsp;
						<span class="STYLE1">�ͷ�TEL</span>��
						<span class="STYLE4">0351-14125365</span>
						<br />
						&nbsp;
						<span class="STYLE1">��˾����</span>��
						<span class="STYLE4">global@gmail.com </span>
					</div>
				</div>
			</div>
			<div id="main">
				<div id="dongtai">
					<ul>
						<li>
							<a href="#">ץ��ʱ�� ����᳹ �淶�г� ��ѧ��չ<img
									src="<%=path %>/global_images/new.gif" border="0" />
							</a>
						</li>
						<li>
							<a href="#">ʡ�ܾ����ֳ������Ա��λGLOBAL����˾���м�鹤��<img
									src="<%=path %>/global_images/new.gif" border="0" />
							</a>
						</li>
						<li>
							<a href="#">��˾�ں����ٿ�2008��GLOBAL����������繤������</a>
						</li>
						<li>
							<a href="#">��GLOBAL�˼򱨡���39��ȫ��</a>
						</li>
						<li>
							<a href="#">GLOBAL������˾��ʦ֣������</a>
						</li>
						<li>
							<a href="#">�����������г����˾��ȫ�ල���������������ҹ�˾��</a>
						</li>
						<li>
							<a href="#">��GLOBAL�˼򱨡���38��ȫ��</a>
						</li>
						<li>
							<a href="#">ʡ�ܾ����ֳ������Ա��λGLOBAL����˾���м�鹤��<img
									src="../global_images/new.gif" border="0" />
							</a>
						</li>
						<li>
							<a href="#">��˾�ں����ٿ�2008��GLOBAL����������繤������</a>
						</li>
						<li>
							<a href="#">��GLOBAL�˼򱨡���39��ȫ��</a>
						</li>
						<li>
							<a href="#">GLOBAL������˾��ʦ֣������</a>
						</li>
						<li>
							<a href="#">ʡ�ܾ����ֳ������Ա��λGLOBAL����˾���м�鹤��<img
									src="<%=path %>/global_images/new.gif" border="0" />
							</a>
						</li>
						<li>
							<a href="#">��˾�ں����ٿ�2008��GLOBAL����������繤������</a>
						</li>
						<li>
							<a href="#">��GLOBAL�˼򱨡���39��ȫ��</a>
						</li>
						<li>
							<a href="#">GLOBAL������˾��ʦ֣������</a>
						</li>
						<li>
							<a href="#">GLOBAL������˾��ʦ֣������</a>
						</li>
						<li>
							<a href="#">��GLOBAL�˼򱨡���38��ȫ��</a>
						</li>

					</ul>
				</div>
			</div>
			<div id="right">
			<div id="price">
					&nbsp;
					<br />
					<img src="<%=path %>/global_images/4.gif" />
					<br />
					&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="<%=path %>/global/searchWebSit.jsp"><img src="<%=path %>/global_images/in.jpg"
							border="0"/>
					</a>
				</div>
				<div id="price">
					&nbsp;
					<br />
					<img src="<%=path %>/global_images/3.gif" />
					<br />
					&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="<%=path %>/company.do?methodName=queryAllPriceFromDeliverySpot"><img src="<%=path %>/global_images/in.jpg"
							border="0"/>
					</a>
				</div>
				<div id="notice">
					&nbsp;
					<br />
					<marquee direction="up" behavior="scroll" loop="-1"
						scrollamount="3" height="220" width="138">
						<a href="#">�Ϻ��в��ֿ����ҵ����ѧϰ</a>
						<br/>
						&nbsp;<br/>
						<a href="#">�Ϻ�����ҵӭ����600���ж���Ա����ٿ�</a>
						<br />
						&nbsp;<br/>
						<a href="#">���ҵ�ȼ������ƶȽ�</a>
						<br />
						&nbsp;<br/>
						<a href="#">�Ϻ��в��ֿ����ҵ����ѧϰ</a>
						<br />
						&nbsp;<br/>
						<a href="#">�Ϻ�����ҵӭ����600���ж���Ա����ٿ�</a>
						<br />
						&nbsp;<br/>
						<a href="#">���ҵ�ȼ������ƶȽ�</a>
						<br />
						&nbsp;<br/>
						<a href="#">�Ϻ��в��ֿ����ҵ����ѧϰ</a>
						<br />
						&nbsp;<br/>
						<a href="#">�Ϻ�����ҵӭ����600���ж���Ա����ٿ�</a>
						<br />
						&nbsp;<br/>
						<a href="#">���ҵ�ȼ������ƶȽ�</a>
						<br />
					</marquee>
				</div>
				
			</div>
			<div id="foot">
				<div id="map">
					<img src="<%=path %>/global_images/map.gif" width="180" height="140" />
				</div>
				<div id="map_right">

				<div id="website">
						<ul>
				    <c:forEach var="p" items="${provinceList}" varStatus="s">
				      <c:if test ="${s.index<5}">
				        <li><a href="<%=path %>/company.do?methodName=queryAllDeliverySpotByProvinceIDFromDeliverySpot&provinceID=${p.province.provinceid }">${p.province.name }����</a></li>
				      </c:if>
				    </c:forEach>
						</ul>
					</div>
                   <div id="website">
						<ul>
				    <c:forEach var="p" items="${provinceList}" varStatus="s">
				      <c:if test ="${s.index>=5 && s.index<10}">
				         <li><a href="<%=path %>/company.do?methodName=queryAllDeliverySpotByProvinceIDFromDeliverySpot&provinceID=${p.province.provinceid }">${p.province.name }����</a></li>
				      </c:if>
				    </c:forEach>
						</ul>
					</div>
				  <div id="website">
						<ul>
				    <c:forEach var="p" items="${provinceList}" varStatus="s">
				      <c:if test ="${s.index>=10 && s.index<15}">
				        <li><a href="<%=path %>/company.do?methodName=queryAllDeliverySpotByProvinceIDFromDeliverySpot&provinceID=${p.province.provinceid }">${p.province.name }����</a></li>
				      </c:if>
				    </c:forEach>
						</ul>
					</div>
					 <div id="website">
						<ul>
				    <c:forEach var="p" items="${provinceList}" varStatus="s">
				      <c:if test ="${s.index>=15 && s.index<20}">
				         <li><a href="<%=path %>/company.do?methodName=queryAllDeliverySpotByProvinceIDFromDeliverySpot&provinceID=${p.province.provinceid }">${p.province.name }����</a></li>
				      </c:if>
				    </c:forEach>
						</ul>
					</div>
						 <div id="website">
						<ul>
				    <c:forEach var="p" items="${provinceList}" varStatus="s">
				      <c:if test ="${s.index>=20 && s.index<24}">
				         <li><a href="<%=path %>/company.do?methodName=queryAllDeliverySpotByProvinceIDFromDeliverySpot&provinceID=${p.province.provinceid }">${p.province.name }����</a></li>
				      </c:if>
				    </c:forEach>
				     <li><a href="<%=path %>/global/searchWebSit.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����>></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
