<%@ page language="java" pageEncoding="gbk"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean"
	prefix="bean"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html"
	prefix="html"%>
 <%String path = request.getContextPath(); %>
<html>
	<head>
		<title>GLOBAL��������ϵͳ��̨����---��ҳ</title>
		<link rel="stylesheet" type="text/css" href="<%=path %>/style/wuliu_back.css" />
		<script language="javascript"> defaultStatus = "��ӭ����GLOBAL��������ϵͳ��̨����";</script>
	</head>
	<body>
	<center>
		<div id="container2">
			<div id="index">
				<div id="globallink2">
					<ul>
						<li>
							&nbsp;&nbsp;&nbsp;&nbsp;
						</li>
						<li>
							&nbsp;&nbsp;&nbsp;&nbsp;
						</li>
						<li>
							&nbsp;&nbsp;&nbsp;&nbsp;
						</li>
						<li>
							&nbsp;&nbsp;&nbsp;&nbsp;
						</li>
						<li>
							&nbsp;&nbsp;&nbsp;&nbsp;
						</li>
						<li>
							&nbsp;&nbsp;&nbsp;&nbsp;
						</li>
						<li>
							<a href="index.jsp">�칫��ҳ</a>
						</li>
						<li>
							<a href="<%=path %>/company.do?methodName=initAllDeliverySpot">��˾��ҳ</a>
						</li>
					</ul>
				</div>
				<div id="login2">

					<html:form action="/login?methodName=login">
						<table class="t4">
						<tr>
						<td colspan="2">${Login_Error }${Error_Msg }</td>
						</tr>
							<tr>
								<td>
									�û�����
								</td>
								<td>
									<html:text property="username" size="14" />
								</td>
							</tr>
							<tr>
								<td>
									���룺
								</td>
								<td>
									<html:password property="password" size="14" />
								</td>
							</tr>
							<tr>
								<td>
									Ȩ�ޣ�
								</td>
								<td>
									<select name="powerID" id="powerID">
										<option value="3">���͵����Ա</option>
										<option value="2">���͵����Ա</option>
										<option value="1">��������Ա</option>
									</select>
								</td>
							</tr>
							<tr>
								<td colspan="2" align="center">
									<input type="submit" value="��¼" />
								</td>
							</tr>
						</table>
					</html:form>
				</div>
				<div id="foot2">
					<center>
						<pre>
               ��Ȩ����GLOBAL������˾ �������:��ICP��05039742��
              ҵ����ѯ�绰��0351-2720833 2720836 13805390912 ����ල�绰��13791568668 ���棺0351-2720899
             �ܹ�˾��ַ��ɽ��ʡ̫ԭ���������186�ţ�̫ԭ����ѧ����100�ף�
</pre>
					</center>
				</div>
			</div>
		</div>
		</center>
	</body>
</html>
