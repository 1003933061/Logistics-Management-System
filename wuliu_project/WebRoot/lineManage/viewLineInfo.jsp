<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>GLOBAL��������ϵͳ��̨����---��·��ϸ��Ϣ</title>
<link rel="stylesheet" type="text/css" href="<%=path %>/style/wuliu_back.css" />
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>
<body>
<center>
    <table width="622" border="0" class="t1">
      <tr>
        <td>${line.lineno }-<font color="red">${line.linename }</font>��</td>
        <td align="right">${line.length }&nbsp;����</td>
      </tr>
      <tr>
        <td colspan="2"><hr></td>
      </tr>
      <tr>
        <td colspan="2">·�ߣ� <c:forEach var="ldl" items="${lineDetaileList}" varStatus="status"> ${ldl.deliveryspot.name }
            <c:if test="${!status.last}">��</c:if>
          </c:forEach>
        </td>
      </tr>
      <tr>
        <td colspan="2"><hr></td>
      </tr>
      <tr>
        <td  colspan="2">�䱸������</td>
      </tr>
      <tr>
      <td valign="top"></td>
        <td align="center">
        <table class="t1">
        <tr>
        <td colspan="2" align="left">(���ƺ�)</td>
        <td></td>
        <td align="left">(����ʱ��)</td>
        </tr>
        <c:forEach var="cll" items="${carOfLineList}" varStatus="status">
         <tr>
           <td><a href="<%=path%>/check/car.do?methodName=carDetail&&carid=${cll.carid}">${cll.carno}</a><td>
           <td>��������</td>
           <td>${cll.leavetime}</td>
         </tr>
          </c:forEach>
          </table>
        </td>
      </tr>
    </table>
</center>
</body>
</html>
