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
		<title>GLOBAL��������ϵͳ��̨����---ǩ�ն���</title>
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="this is my page">
		<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/style/wuliu_back.css" />
		<script language="javascript">
	var xmlHttp;
	
	function addOption(){
		var theform = document.forms[0];
		var s = document.forms[0].vid.value;
		var i; 
	    for (i=0;i<theform.select_orders.length;i++){
	           if (theform.select_orders.options[i].text == s){
	              	document.getElementById("sp").innerHTML = "�ö����Ѿ�ͨ��ɨ�룡��";
					return;
	           }
	    }
		
		 theform.select_orders.options[theform.select_orders.length]=new Option(s,s);
	}
	
	function fun_select_dltany(){
	   var theform = document.forms[0];
	   var i; 
	    for (i=0;i<theform.select_orders.length;i++){
	        if (theform.select_orders.options[i].selected == true){
	           if (theform.select_orders.options[i].text !=""){
	              	theform.select_orders.options[i] =new Option("");
	           }
	       } 
	    }
	    for (i=0;i<theform.select_orders.length;i++){
	        if (theform.select_orders.options[i].text ==""){theform.select_orders.options.remove(i);i--;}
	    } 
	}
	
			function checkAll(){
				document.getElementById("sp").innerHTML = "";
				var theform = document.forms[0];
				var i;   
				if(theform.select_orders.length > 0){
					for (i=0;i<theform.select_orders.length;i++){
				     	if (theform.select_orders.options[i].text !=""){
				      		theform.select_orders.options[i].selected = true;
				      	}
				    }
				    theform.submit();
				} else{
					document.getElementById("sp").innerHTML = "û��ǩ�յĶ�����";
					return;
				}
			}

			function createXmlHttpRequest(){
				if(window.ActiveXObject){
					xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
				} else if(window.XMLHttpRequest){
					xmlHttp = new XMLHttpRequest();
				} else{
					alert("error!");
				}
			}
			
			
			function checkOrderNo(){
				var orderNo = document.getElementById("vid").value;
				if(orderNo == ""){
					var msg = "�����Ų���Ϊ�գ������룡";
					document.getElementById("sp").innerHTML = msg;
					return;
				}
				
				createXmlHttpRequest();
				
				var url = "<%=path%>/check/order.do?methodName=checkOrderNo&orderNo=" + orderNo;
				xmlHttp.onreadystatechange = handleStateChange;
				xmlHttp.open("GET",url,true);
				
				xmlHttp.send(null);
			}
			
			function handleStateChange(){
				if(xmlHttp.readyState == 4){
					if(xmlHttp.status == 200){
						var msg1 = xmlHttp.responseText;
						if(msg1 == ""){
							var msg = "";
							document.getElementById("sp").innerHTML = msg;
							addOption();
						}else{
							document.getElementById("sp").innerHTML = msg1;
						}
					}
				}
			}
		</script>

	</head>
	<body>
	<c:if test="${UserSession.power.powerid==3}">
		<center>
			<h1>
				����ǩ��
			</h1>
			<table border="0" class="t1" width="250" higth="50">
				<tr>
					<td>
						&nbsp;
						<font color="red"> <span id="sp"></span> </font>
					</td>
				</tr>

			</table>
			<form name="f1" action="<%=path%>/check/order.do?methodName=qianShouOrders"
				method="post">
				<table border="0" class="t1">
					<tr>
						<td>
							�����룺
						</td>
						<td>

							<input type="text" name="vid" size="20" />

						</td>
						<td>
							<input type="button" value="���" onclick="checkOrderNo()" />
						</td>
					</tr>

					<tr>
						<td>
							&nbsp;
						</td>
						<td>
							<select multiple="multiple" style="width:150px; height:200px"
								name="select_orders"></select>

						</td>

						<td>
							<input name="btn_select_dltany" type="button" title="delete any"
								onclick="fun_select_dltany()" value="ɾ��" />
						</td>
					</tr>

					<tr>
						<td colspan="3" align="center">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="button" value="ǩ�ն���" onclick="checkAll()">
						</td>

					</tr>
				</table>
			</form>

		</center>
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
