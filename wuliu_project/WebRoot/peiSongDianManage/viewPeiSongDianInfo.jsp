<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>GLOBAL��������ϵͳ��̨����---�鿴���͵������Ϣ</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="<%=path %>/style/wuliu_back.css" />
</head>
<body>
<center>
  <table width="632" border="0" class="t1">
    <tr>
      <td>վ�����ƣ� <font color="red">${Deliveryspot.name }</font> </td>
      <td align="right">TEL�� ${Deliveryspot.tel } </td>
    </tr>
    <tr>
      <td   colspan="2"><hr></td>
    </tr>
    <tr>
      <td colspan="2">վ���ַ�� ${Deliveryspot.province.name }--${Deliveryspot.city.name } </td>
    </tr>
     <tr>
      <td colspan="2"><hr></td>
    </tr>
    <tr>
      <td>�׹��ﷶΧ��${Deliveryspot.startscope }&nbsp;���� </td>
      <td >�׹���۸񣺣�${Deliveryspot.startprice }&nbsp;Ԫ</td>
    </tr>
    <tr>
      <td></td>
      <td>�ι���۸񣺣�${Deliveryspot.secondprice }&nbsp;Ԫ/���� </td>
    </tr>
     <tr>
      <td colspan="2"><hr></td>
    </tr>
    
    <tr>
      <td>�������Χ��${Deliveryspot.startvolumescope }&nbsp;������ </td>
      <td >������۸񣺣�${Deliveryspot.startvolumeprice }&nbsp;Ԫ</td>
    </tr>
    <tr>
      <td></td>
      <td>������۸񣺣�${Deliveryspot.secondvolumeprice }&nbsp;Ԫ/������ </td>
    </tr>
  </table>
</center>
</body>
</html>
