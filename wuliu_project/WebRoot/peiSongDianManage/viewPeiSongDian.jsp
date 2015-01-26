<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>GLOBAL��������ϵͳ��̨����---�鿴�������͵�</title>

		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="this is my page">
		<meta http-equiv="Content-Type" content="text/html; charset=gbk" />

		<!--<link rel="stylesheet" type="text/css" href="./styles.css">-->
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/style/wuliu_back.css" />
		<script type="text/javascript">
				function del(){
					var result = false;
					var f = document.forms[0];
					for( i=0 ; i<f.elements.length ; i++) {
						if (f.elements[i].name=='dsids') {
							if(f.elements[i].checked){
								result = true;
								break;
							}		
						}
					}
					
					if(!result){
						alert("��ѡ��Ҫɾ���ļ�¼��");
						return;
					}else{
						if(confirm("ȷ��Ҫɾ����¼��?")){
							f.action = "<%=path%>/check/deliverySpot.do?methodName=deletePeiSongDian";
							f.submit();
						}else{
							return;
						}
					}
				}
		
		
				function selectAll() {
					var f = document.forms[0];
					if(f.sb.value=="ȫѡ"){
						for( i=0 ; i<f.elements.length ; i++) {
							if (f.elements[i].name=='dsids') {
								f.elements[i].checked=true;
							}
						}
						f.sb.value = "��ѡ";
					}else{
						for( i=0 ; i<f.elements.length ; i++) {
							if (f.elements[i].name=='dsids') {
								f.elements[i].checked=false;
							}
						}
						f.sb.value = "ȫѡ";
					}
				}

		</script>

	</head>

	<body>
	<c:if test="${UserSession.power.powerid==1}">
		<center>
			<h1>
				�鿴���͵�
			</h1>
			<hr>
			<form action="#" method="post">
				<table cellpadding="0" cellspacing="0" class="t2" align="center">
					<tr>
						<th>
							&nbsp;
						</th>
						<th>
							վ������
						</th>
						<th>
							���ڵ�ַ
						</th>
						<th>
							��ϵ�绰
						</th>
						<th>
							�޸�
						</th>
						<th>
							ɾ��
						</th>
					</tr>

					<tbody>
						<pg:pager items="${count}" isOffset="true"
							url="${path}/check/deliverySpot.do" maxPageItems="10"
							export="currentPageNumber=pageNumber">
							<pg:param name="methodName" value="listAllDeliveryspot" />
							<c:forEach var="adsl" items="${AllDeliveryspotList}"
								varStatus="s">
								<pg:item>
									<tr>
										<td>
											<b>${s.count }</b>
										</td>
										<td>
											<a
												href="<%=path%>/check/deliverySpot.do?methodName=viewPeiSongDian&id=${adsl.deliveryspotid }">${adsl.name
												}</a>
										</td>
										<td>
											${adsl.province.name }--${adsl.city.name }
										</td>
										<td>
											${adsl.tel }
										</td>
										<td>
											<a
												href="<%=path%>/check/deliverySpot.do?methodName=modifyPeiSongDian&id=${adsl.deliveryspotid }">�޸�</a>
										</td>
										<td>
											<input type="checkbox" name="dsids"
												value="${adsl.deliveryspotid }">
										</td>
									</tr>
								</pg:item>
							</c:forEach>
							<div id="p">
								<font color="red" size="3">${count}����¼</font>
								<pg:index>

									<pg:first>
										<a href="<%=path%><%=pageUrl%>">��ҳ</a>
									</pg:first>
									<pg:prev>
										<a href="<%=path%><%=pageUrl%>">��һҳ</a>
									</pg:prev>
									<pg:pages>
										<%
										if (pageNumber.intValue() < 10) {
										%>&nbsp;<%
												}
												if (pageNumber == currentPageNumber) {
										%>
										<b>&nbsp;<%=pageNumber%>
										</b>
										<%
										} else {
										%> &nbsp;<a href="<%=path%><%=pageUrl%>"><%=pageNumber%>
										</a>
										<%
										}
										%>
									</pg:pages>
									<pg:next>
										<a href="<%=path%><%=pageUrl%>">��һҳ</a>
									</pg:next>
									<pg:last>
										<a href="<%=path%><%=pageUrl%>">ĩҳ</a>
									</pg:last>

								</pg:index>
							</div>
						</pg:pager>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="2" align="right">
								<input type="button" onClick="selectAll()" value="ȫѡ" name="sb">
							</td>
							<td colspan="3" align="center">
								<input type="button" onClick="del()" value="ɾ��">
							</td>
						</tr>
					</tfoot>
				</table>
			</form>
		</center>
		<script language="javascript">
			var rows = document.getElementsByTagName('tr');
				for (var i=0;i<rows.length;i++){
					rows[i].onmouseover = function(){		
						this.className = 'hover';
					}
					rows[i].onmouseout = function(){		
						this.className = '';
					}
			}
	 </script>
	 
	 </c:if>
	 	<c:if test="${UserSession.power.powerid!=1}">
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
