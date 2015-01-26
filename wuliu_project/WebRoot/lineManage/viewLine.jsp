<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>GLOBAL��������ϵͳ��̨����---�鿴��·</title>
    <link rel="stylesheet" type="text/css" href="<%=path %>/style/wuliu_back.css" />
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="../style/wuliu_back.css" />
    <script type="text/javascript">
				function del(){
					var result = false;
					var f = document.forms[0];
					for( i=0 ; i<f.elements.length ; i++) {
						if (f.elements[i].name=='lineids') {
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
						if(confirm("���Ҫɾ����¼��?")){
							f.action = "<%=path %>/check/line.do?methodName=deleteLine";
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
							if (f.elements[i].name=='lineids') {
								f.elements[i].checked=true;
							}
						}
						f.sb.value = "��ѡ";
					}else{
						for( i=0 ; i<f.elements.length ; i++) {
							if (f.elements[i].name=='lineids') {
								f.elements[i].checked=false;
							}
						}
						f.sb.value = "ȫѡ";
					}
				}

		</script>
  </head>
  
  <body>
    <center>
			<h1>
				�鿴��·
			</h1>
			<hr>
			<form action="#" method="post">
				<table cellpadding="0" cellspacing="0" class="t2" align="center">
					<tr>
						<th>&nbsp;</th>
						<th>
							��·���
						</th>
						<th>
							��·����
						</th>
						<th>
							��·���
						</th>
					<c:if test="${UserSession.power.powerid == 1}">
						<th>
							ɾ��
						</th>
				    </c:if>
					</tr>
					 <tbody>
				 <pg:pager items="${count}" isOffset="true"
			   url="${path}/check/line.do" maxPageItems="10" export="currentPageNumber=pageNumber">
			   <pg:param name="methodName" value="listAllLine"/>  
					<c:forEach var="all" items="${allLineList}"  varStatus="s">
					  <pg:item>
					<tr>
					     <td><b>${s.count }</b></td>
						<td>
			             <a href="<%=path %>/check/line.do?methodName=viewLineInfo&id=${all.lineid }&s=${UserSession.power.powerid}">${all.lineno }</a>
						</td>
						<td>
			            ${all.linename }
						</td>
						<td>
						${all.length }
						</td>
					<c:if test="${UserSession.power.powerid == 1}">
						<td>
						     <input type="checkbox" name="lineids" value="${all.lineid }">
						</td>
					</c:if>
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
				  </tbody>
				   <tfoot>
				  	<c:if test="${UserSession.power.powerid == 1}">
					    
							<tr>
								<td colspan="2" align="right"><input type="button" onClick="selectAll()" value="ȫѡ" name="sb"></td>
						        <td align="center" colspan="3"><input type="button" onClick="del()" value="ɾ��"></td>
							</tr>
					</c:if>	
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
  </body>
</html>
