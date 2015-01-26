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
		<title>GLOBAL��������ϵͳ��̨����---�鿴���ӵ�</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
   
   <link rel="stylesheet" type="text/css" href="<%=path%>/style/wuliu_back.css" />
   <script type="text/javascript">
   			function getAllDeliverySpot(){
				//RegionDemo.getList(callback);
				DeliverySpotDaoJS.queryAllDeliverySpotOfAddLine(callback);
			}
		
			function callback(list){
				//alert(msg);
				//document.getElementById("s").innerHTML = msg;
				//var sel = dwr.util.getValue("r");
				dwr.util.removeAllOptions("r");
				dwr.util.addOptions("psd",list,"deliveryspotid","name");
				
			}
   </script>
   
   <script type="text/javascript">
   		function selectByReceiptNo(){
   			var ReceiptNo = document.f1.RID.value;
   			f1.action = "<%=path%>/check/order.do?methodName=selectByReceiptNo&ReceiptNo=" + ReceiptNo;
   			f1.submit();
   		}
   		
   		function selectByDeliverySpot(){
   			var DeliverySpotID = document.f1.psd.value;
   			f1.action = "<%=path%>/check/order.do?methodName=selectByDeliverySpot&DeliverySpotID=" + DeliverySpotID;
   			f1.submit();
   		}
   </script>

		<script src='/wuliu_project/dwr/interface/DeliverySpotDaoJS.js'></script>
		<script src='/wuliu_project/dwr/engine.js'></script>
		<script src='/wuliu_project/dwr/util.js'></script>
	</head>
	<body onload="getAllDeliverySpot()">
	<c:if test="${UserSession.power.powerid==3}">
		<center>
		<h1> 
				��ѯ���ӵ�
			</h1>
			<form name="f1" id="f1" method="post">
			
			 <table border="0" class="t1" width="250" higth="50">
           <tr>
			<td>&nbsp;<font color="red">${ErrorMsg }</font></td>
			</tr>
			</table>
				<table  class="t1" >
					<tr>
						<td>
							���ӵ��ţ�
						</td>
						<td>
							<input type="text" name="RID"/>
						</td>
						<td align="center">
							<input type="button" onclick="selectByReceiptNo()" value=" ��  ѯ " />
						</td>
					</tr>
					<tr>
						<td>
							���͵㣺
						</td>
						<td align="center">
							<select name="psd" id="psd">
								
							</select>
						</td>
						<td align="center">
							<input type="button" onclick="selectByDeliverySpot()" value=" ��  ѯ " />
						</td>
					</tr>
				</table>
			</form>
			<hr>
			<form name="f2" id="f2" method="post">
				 <table cellpadding="0" cellspacing="0" class="t2" align="center">
					<tr>
						<th>
							���ӵ���
						</th>
						<th>
							�������
						</th>
						<th>
							����ʱ��
						</th>
						<th>
							���ӵ�
						</th>
					</tr>
					<c:if test="${flag == '1'}">
						<tr>
							<td>
								<a href="<%=path%>/check/order.do?methodName=getReceiptDetaile&ReceiptID=${Receipt.receiptid}&receiptno=${Receipt.receiptno}">${Receipt.receiptno}</a>
							</td>
							<td>
								${Receipt.carno}
							</td>
							<td>
								${Receipt.createtime}
							</td>
							<td>
								${Receipt.deliveryspot.name}
							</td>
						</tr>
					</c:if>
					
					
					<c:if test="${flag == '2'}">
					 <pg:pager items="${count}" isOffset="true" url="${path}/order.do" maxPageItems="10" export="currentPageNumber=pageNumber">
			  			 <pg:param name="methodName" value="selectByDeliverySpot"/>  
			  			 <pg:param name="DeliverySpotID" value="${DeliverySpotID}"/>  
						<c:forEach var="rl"  items="${ReceiptList}">
						<pg:item>
							<tr>
								<td>
									<a href="<%=path%>/check/order.do?methodName=getReceiptDetaile&ReceiptID=${rl.receiptid}&receiptno=${rl.receiptno}">${rl.receiptno}</a>
								</td>
								<td>
									${rl.carno}
								</td>
								<td>
									${rl.createtime}
								</td>
								<td>
									${rl.deliveryspot.name}
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
					</c:if>
		
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

