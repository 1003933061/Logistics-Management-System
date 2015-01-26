<%@ page language="java" pageEncoding="gbk"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean"
	prefix="bean"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html"
	prefix="html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
%>
<html>
	<head>
		<title>GLOBAL��������ϵͳ��̨����---�޸ĳ�����Ϣ</title>
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/style/wuliu_back.css" />
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<script type="text/javascript">		
	   function checkCarSize(){
	      var carSize = document.getElementById("size").childNodes[0].value;
	      if(carSize!=""&&(carSize>0&&carSize<=9999999)){
	         var msgs = "<font color=green><b>��</b></font>";
	         document.getElementById("s").innerHTML=msgs;
	         return true;
	      }else{
	        var msgs= "<font color=red><b>��</b></font>";
	        document.getElementById("s").innerHTML=msgs;
	        return false;
	      }
	   }
	   function checkTonnage(){
	      var weight = document.getElementById("weight").childNodes[0].value;
	      if(weight!=""&&(weight>0&&weight<=9999999)){
	         var msgs = "<font color=green><b>��</b></font>";
	        document.getElementById("w").innerHTML=msgs;
	         return true;
	      }else{
	        var msgs= "<font color=red><b>��</b></font>";
	        document.getElementById("w").innerHTML=msgs;
	        return false;
	      }
	   }

	   
	   function checkRemark(){
	    var remark = document.forms[0].remark.value;
	    if(remark != "" && remark.length >200){
	         var msgs= "<font color=red><b>��</b></font>";
	         document.getElementById("r").innerHTML=msgs;
	         return false;
	      }else{
	         var msgs= "<font color=green><b>��</b></font>";
	         document.getElementById("r").innerHTML=msgs;
	        return true;
	      }
	     }
	   
	  function check(){
	   if(checkTonnage()&&checkCarSize()&&checkRemark()){
	      
	        var f = document.forms[0];
	        f.action = "<%=path%>/check/car.do?methodName=updateCarMessage";
	        f.submit();       
	   }else{
	      return;
	   }
	   }
	</script>
	</head>
	<SCRIPT language="javascript" src="<%=path%>/js/calendar.js"></SCRIPT>
	<body>
	<c:if test="${UserSession.power.powerid==1}">
		<center>
			<h1>
				�޸ĳ���
			</h1>
			
			<html:form action="/check/car?methodName=updateCarMessage">
				<table border="1" class="t1" width="450">
					<tr>
						<td>
							���ƺţ�
						</td>
						<td id="carno">
							<html:text property="carNO" readonly="true"/>
							<html:errors property="carNO" />
						</td>
					</tr>
					<tr>
						<td>
							Ӫ��֤�ţ�
						</td>
						<td id="workno">
							<html:text property="workNO" readonly="true" />
							<html:errors property="workNO" />
						</td>
					</tr>
					<tr>
						<td>
							���ͣ�
						</td>
						<td>
							<select name="carTypeID">
							   <c:if test="${carForm.carTypeID == 1 }">
								<option value="1" selected="selected">
									����
								</option>
								<option value="2">
									����
								</option>
								<option value="3">
									С��
								</option>
							 </c:if>
							  <c:if test="${carForm.carTypeID == 2 }">
								<option value="1" selected="selected">
									����
								</option>
								<option value="2" selected="selected">
									����
								</option>
								<option value="3">
									С��
								</option>
							 </c:if>
							  <c:if test="${carForm.carTypeID == 3 }">
								<option value="1" selected="selected">
									����
								</option>
								<option value="2">
									����
								</option>
								<option value="3" selected="selected">
									С��
								</option>
							 </c:if>
							</select>
						</td>
					</tr>
					<tr>
						<td>
							�ݻ�(m3)��
						</td>
						<td id="size">
							<html:text property="carSize" onblur="checkCarSize()" />
							<html:errors property="carSize" />
							<span id="s"></span>
						</td>
					</tr>
					<tr>
						<td>
							��λ��
						</td>
						<td id="weight">
							<html:text property="tonnage" onblur="checkTonnage()" />
							<html:errors property="tonnage" />(��)
							<span id="w"></span> 
						</td>
					</tr>
					<tr>
						<td>
							˾����
						</td>
						<td>
							<select name="empID">
								<c:forEach items="${driverList}" var="c">
								 <c:if test="${carForm.empID == c.empid }">
								 <option value="${c.empid }" selected="selected">
										${c.empno }
									</option>
								 </c:if>
								  <c:if test="${carForm.empID != c.empid }">
								 <option value="${c.empid }">
										${c.empno }
									</option>
								 </c:if>
								</c:forEach>
							</select>

						</td>
					</tr>
					<tr>
						<td>
							��ע��
						</td>
						<td>
							<html:textarea property="remark"  onblur="checkRemark()"  cols="30" rows="4"/>
							<html:errors property="remark" />(ѡ��|200)<span id="r"></span>
						</td>
					</tr>
					<tr>
					<td>
					&nbsp;
					</td>
						<td>
							<input type="button" value="�޸�" onclick="check()" />
							&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="reset" value="����">
						</td>
					</tr>
				</table>
			</html:form>
		</center>
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
