<%@ page language="java" pageEncoding="gbk"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean"
	prefix="bean"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html"
	prefix="html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%String path = request.getContextPath(); %>
<html>
	<head>
		<title>GLOBAL����---��Ƹ��Ϣ</title>
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
		<script language="javascript"> defaultStatus = "��ӭ����GLOBAL����---��Ƹ��";</script>
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
				 <table class="t1" border="1" cellpadding="0" cellspacing="0">
				  <tr>
				   <td bgcolor="#B3C4FD">1����λ���ƣ��ͷ�</td> 
				   <td bgcolor="#B3C4FD">������2��</td>
				   <td bgcolor="#B3C4FD">�������ţ����͵�����</td>
				  </tr>
				  <tr>
				   <td colspan="3">
                      ��Ҫ��߱��ľ����ѵ������: <br>
					����20-30��֮��<br>
					ѧ����ר�����ϣ���������<br>
                  </td>
                  </tr>
                  <tr>
                     <td colspan="3">
                     ��ְλ������<br>
					1.������������ͨ����׼�������������ʼ�<br>
					2.�ܶ�������ͻ��绰Ͷ���¼��������ճ�����<br>
					3.�ܳԿ����ͣ�����������ҵ�ͷ���������ȿ���<br>
                  </td>
				  </tr>
				   <tr>
                     <td colspan="3" align="right">
	                  ʱ�䣺[ 2008-10-17 ]                  </td>
				  </tr>
				 </table>
<br>
				 	 <table class="t1"  border="1" cellpadding="0" cellspacing="0">
				  <tr>
				   <td bgcolor="#B3C4FD">2����λ���ƣ�����Ͷ�����ľ���</td> 
				   <td bgcolor="#B3C4FD">������2��</td>
				   <td bgcolor="#B3C4FD">�������ţ����͵�����</td>
				  </tr>
				  <tr>
				   <td colspan="3">
                      ��Ҫ��߱��ľ����ѵ������: <br>
					����26-35��֮��<br>
					ѧ����ר�����ϣ���������<br>
                  </td>
                  </tr>
                  <tr>
                     <td colspan="3">
	                   ��ְλ������<br>
					1.��Ϥ������ҵ�ͷ�������̣��ܶ����������Ͷ������<br>
					2.����3������������ҵ��������<br>
					3.�ܳԿ����ͣ���פ��أ����С�������<br>
                  </td>
				  </tr>
				   <tr>
                     <td colspan="3" align="right">
	                  ʱ�䣺[ 2008-11-23 ]                  </td>
				  </tr>
				 </table>
       <table class="t1">
				 <tr>
				 <td>
				      ������Ա�������ޣ������߿ɽ����˼�������Ƭ��ѧ��֤�鸴ӡ�������֤��ӡ����������<br>
				 ɽ��ʡ̫ԭ���������186�ţ�̫ԭ����ѧ����100�ף�,������Դ�� Amaker�� �� �ʱࣺ030024��<br>
                       �����ʼ���global@gmail.com����������ע��ӦƸְλ��<br>
				 </td>
				 </tr>
				 </table>
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
