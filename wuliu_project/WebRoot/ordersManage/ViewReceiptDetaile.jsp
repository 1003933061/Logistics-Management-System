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
		<base href="<%=basePath%>">

		<title>GLOBAL��������ϵͳ��̨����---���ӵĶ���</title>

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
	<br>
	<br>
	<br>
	���ӵ��ţ�${receiptno }
		<table cellpadding="0" cellspacing="0" class="t2" align="center">
			<tr>
				<th>
					�������
				</th>
				<th>
					���͵�
				</th>
				<th>
					�ռ���
				</th>
				<th>
					�ļ���
				</th>
				<th>
					�ռ�������
				</th>
				<th>
					�ļ�������
				</th>
				<th>
					����״̬
				</th>
			</tr>
			
			<pg:pager items="${count}" isOffset="true" url="${path}/check/order.do" maxPageItems="10" export="currentPageNumber=pageNumber">
			  			 <pg:param name="methodName" value="getReceiptDetaile"/>  
			  			 <pg:param name="ReceiptID" value="${ReceiptID}"/>  
			  			 <pg:param name="receiptno" value="${receiptno}"/>  
			<c:forEach var="rd" items="${ReceiptDetaileList}">
				<pg:item>
				<tr>
					<td>
						<a href="<%=path%>/check/order.do?methodName=queryOrderByOrderID&id=${rd.oder.orderid }&orderno=${rd.oder.orderno }">${rd.oder.orderno }</a>
					</td>
					<td>
						${rd.oder.deliveryspot.name }
					</td>
					<td>
						${rd.oder.receiveaddress }
					</td>
					<td>
						${rd.oder.sendaddress }
					</td>
					<td>
						${rd.oder.receivename }
					</td>
					<td>
						${rd.oder.sendname }
					</td>
					<td>
						${rd.oder.orderstate.name }
					</td>
				</tr>
				</pg:item>
			</c:forEach>
						<div id="p">
		                    <font color="red" size="3">${count}����¼</font>
		                 	<pg:index>
		
						      <pg:first><a href="<%=path%><%=pageUrl %>">��ҳ</a></pg:first>
						      <pg:prev><a href="<%=path%><%=pageUrl %>">��һҳ</a></pg:prev>
						      <pg:pages>
						      <% 
						     if (pageNumber.intValue() < 10) { 
						      %>&nbsp;<%
						      }
						      if (pageNumber == currentPageNumber) { 
						        %><b>&nbsp;<%= pageNumber %></b><%
						      } else { 
						        %> &nbsp;<a href="<%=path%><%=pageUrl %>"><%=pageNumber%></a><%
						      }
						      %>
						      </pg:pages>
						      <pg:next><a href="<%=path%><%=pageUrl %>">��һҳ</a></pg:next>
						      <pg:last><a href="<%=path%><%=pageUrl %>">ĩҳ</a></pg:last>
					 	 </pg:index>
						</div>
					</pg:pager>

		</table>
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
	</body>
</html>
