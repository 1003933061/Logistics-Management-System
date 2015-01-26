<%@ page language="java" pageEncoding="gbk"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%
 String path = request.getContextPath();
 %>
<html> 
	<head>
	<title>GLOBAL��������ϵͳ��̨����---�޸�Ա��</title>
<link rel="stylesheet" type="text/css" href="<%=path %>/style/wuliu_back.css"/>
	
    <SCRIPT language=javascript src="<%=path %>/js/calendar.js"></SCRIPT>
    <script type="text/javascript">
       
      function ckeckName(){
       var name = document.forms[0].name.value;
        if(name==""){
           var msgTel ="<font color=red><b>��</b></font>";
		   document.getElementById("n").innerHTML=msgTel;
          return false;
       }
       else if(!(/^\S{1,19}$/.test(name))){
           var msgTel ="<font color=red><b>��</b></font>";
		   document.getElementById("n").innerHTML=msgTel;
          return false;
       }
        else{
		    var msgTel ="<font color=green><b>��</b></font>";
		     document.getElementById("n").innerHTML=msgTel;
		    return true;
		 }
       }
       
       function ckeckCardID(){
       var cardID = document.forms[0].cardID.value;
       if(!(/^\d{15}((\d{2}[\dXx])|([\dXx]))$/.test(cardID))){
           var msgTel ="<font color=red><b>��</b></font>";
		   document.getElementById("card").innerHTML=msgTel;
          return false;
       }
        else{
		    var msgTel ="<font color=green><b>��</b></font>";
		     document.getElementById("card").innerHTML=msgTel;
		    return true;
		 }
       }
       
         
       function ckeckTel(){
       var tel = document.forms[0].tel.value;
       if(!(/^((\d{3}-\d{8})|(\d{4}-\d{7})|(\d{11}))$/.test(tel))){
           var msgTel ="<font color=red><b>��</b></font>";
		   document.getElementById("te").innerHTML=msgTel;
           return false;
       }
        else{
		    var msgTel ="<font color=green><b>��</b></font>";
		     document.getElementById("te").innerHTML=msgTel;
		    return true;
		 }
       }
    
     function ckeckSalary(){
       var salary = document.forms[0].salary.value;
       if(!(/^\d+(\.\d+)?$/.test(salary))){
           var msgTel ="<font color=red><b>��</b></font>";
		   document.getElementById("sy").innerHTML=msgTel;
          return false;
       }
        else if(salary<=0 || salary>9999999){
          var msgTel ="<font color=red><b>��</b></font>";
		   document.getElementById("sy").innerHTML=msgTel;
          return false;
        }
        else{
		    var msgTel ="<font color=green><b>��</b></font>";
		     document.getElementById("sy").innerHTML=msgTel;
		    return true;
		 }
       }
       
      function ckeckAddress(){
      var address = document.forms[0].address.value;
       if(address == ""){
           var msgTel ="<font color=red><b>��</b></font>";
		   document.getElementById("ad").innerHTML=msgTel;
          return false;
       }
       else if(address.length >200){
            var msgTel ="<font color=red><b>��</b></font>";
		   document.getElementById("ad").innerHTML=msgTel;
          return false;
       }
        else{
		    var msgTel ="<font color=green><b>��</b></font>";
		     document.getElementById("ad").innerHTML=msgTel;
		    return true;
		 }
       }
       
        function ckeckEmail(){
        var email = document.forms[0].email.value;
         if(!(/^[a-zA-Z0-9_\.]+@[a-zA-Z0-9-]+[\.a-zA-Z]+$/.test(email))){
           var msgTel ="<font color=red><b>��</b></font>";
		   document.getElementById("em").innerHTML=msgTel;
           return false;
       }
        else{
		    var msgTel ="<font color=green><b>��</b></font>";
		     document.getElementById("em").innerHTML=msgTel;
		    return true;
		 }
       }

     function test() {
          
	      result2 =ckeckName();
	      result5 =ckeckCardID();
	      result6 =ckeckTel();
	      result7 =ckeckSalary();
	      result8 =ckeckAddress();
	      result9 =ckeckEmail();

        if(result2&&result5&&result6&&result7&&result8&&result9){
	        document.forms[0].action = "<%=path %>/check/updataEmployee.do?method=updateEmployee&empid=${employeeList.empid}";
            document.forms[0].submit();    
	       }
	      else{
		    return false;
		  }
		}
</script>
 </head>
  
  <body>
  <c:if test="${UserSession.power.powerid!=3}">
  <center>
  ��<h1>�޸�Ա����Ϣ</h1>
   <form action=""  method="post">
    <table  class="t1" border="1" width="450">
    <tr><td> Ա����ţ�</td><td><input type="text" name="empno" value="${employeeList.empno }" readonly="true"/></td></tr>
    <tr><td> ������</td><td><input type="text" name="name" value="${employeeList.name }" onblur="ckeckName()"/><span id="n"></span></td></tr>
     <tr><td>�Ա�</td><td>
     <select name="gender">
             <c:if test="${employeeList.gender == '1' }">
               <option value="1" selected="selected">��</option>
               <option value="0">Ů</option>
             </c:if>
              <c:if test="${employeeList.gender == '0' }">
              <option value="1" >��</option>
               <option value="0" selected="selected">Ů</option>
             </c:if>    
     </select>
    </td>
     <tr><td>���֤�ţ�</td><td><input type="text" name="cardID" value="${employeeList.cardid }" onblur="ckeckCardID()"/><span id="card"></span></td></tr>
     <tr><td>�绰���룺</td><td><input type="text" name="tel" value="${employeeList.tel }" onblur="ckeckTel()"/>���ֻ�|�̻���<span id="te"></span></td></tr>
     <tr><td> ְλ��</td><td><select name="positionID">
                             <c:forEach var="pl" items="${positionList}">
                              <c:if test="${employeeList.position.positionid == pl.positionid}">
                               <option value="${pl.positionid}" selected="selected">${pl.name}</option>
                              </c:if>
                               <c:if test="${employeeList.position.positionid != pl.positionid}">
                               <option value="${pl.positionid}">${pl.name}</option>
                              </c:if>
                              </c:forEach>     
                  </select>
          </td></tr>
     <tr><td>нˮ��</td><td><input type="text" name="salary" value="${employeeList.salary }" onblur="ckeckSalary()"/><span id="sy"></span></td></tr>
     <tr><td>��ַ��</td><td><textarea  name="address" onblur="ckeckAddress()"  cols="30" rows="4" type="_moz">${employeeList.address }</textarea>(200��֮��)<span id="ad"></span></td></tr>
     <tr><td>���䣺</td><td><input type="text" name="email" value="${employeeList.email }" onblur="ckeckEmail()"/><span id="em"></span></td></tr>
     <tr><td>�������͵㣺</td><td>
                    <select name="deliverySpotID">
                       <c:forEach var="dl" items="${deliverySpotList}">
                          <c:if test="${employeeList.deliveryspot.deliveryspotid == dl.deliveryspotid}">
                          <option value="${dl.deliveryspotid}" selected="selected">${dl.name}</option>
                       </c:if>
                       <c:if test="${employeeList.deliveryspot.deliveryspotid != dl.deliveryspotid}">
                          <option value="${dl.deliveryspotid}">${dl.name}</option>
                       </c:if>
                       </c:forEach>
                  </select></td></tr>
     <tr><td>&nbsp;</td><td>
     <input type = "button" value="�޸�" onclick="test()">&nbsp;&nbsp;&nbsp;&nbsp;
     <input type="reset" value="����">
     </td>
    
     
     </table>
   </form>
    </center>
    </c:if>
	 	<c:if test="${UserSession.power.powerid==3}">
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

