﻿ <%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
 <jsp:useBean id="code" scope="page" class="com.util.CheckCode" />
 <%
    if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")==""){
     %>
                         <form action="hsgloginyanzheng.jsp" method="post" name="userlog" id="userlog" >
 <table width='100%' height='302' border='0' cellpadding='0' cellspacing='0' bgcolor='#FFFFFF' class='newsline'>
                              <tr>
                                <td height='48' colspan='4' style='padding-left:30px; font-size:20px;'><strong>用户登陆</strong></td>
                              </tr>
                              <tr>
                                <td width='40' height='28'>&nbsp;</td>
                                <td width='240' height='28'>用户名:</td>
                                <td height='28' colspan='2'><input name='username' type='text' id='username' placeholder='请输入用户名' class="user"   /></td>
                              </tr>
                              <tr>
                                <td height='28'>&nbsp;</td>
                             <td height='28'>密码:</td>
                                <td height='28' colspan='2'><input name='pwd' type='password' id='pwd' placeholder='请输入密码' class="user" /></td>
                              </tr>
                              <tr >
                                <td height='28'>&nbsp;</td>
                                <td height='28'>权限:</td>
                                <td height='28' colspan='2'><select name='cx' id='cx' class="user" >
                                  <option value='管理员'>管理员</option>
<option value='买家'>买家</option>

                                </select></td>
                              </tr>
                             <%-- <tr >
                                <td height='28'>&nbsp;</td>
                                <td height='28'>验证码:</td>
                                <td width='67' height='28'><input name="pagerandom" type="text" id="pagerandom" class="password" /></td>
                                <td width='653'><a href="javascript:loadimage();"><img alt="看不清请点我！" name="randImage" id="randImage" src="image.jsp" width="60" height="20" border="1" align="absmiddle"> </a></td>
                              </tr>--%>
                              <tr>
                                <td height='38' align='center'>&nbsp;</td>
                                <td height='38' align='center'>&nbsp;</td>
                                <td height='38' colspan='2'><input type='submit' name='Submit' value='登陆'  onclick='return checklog();' class="content-form-signup" />
                                  <input type='reset' name='Submit2' value='重置' class="content-form-signup" /></td>
                              </tr>
                            </table>
							 </form>
							 <script type="text/javascript">

function checklog()
{
	if(document.userlog.username.value=="" || document.userlog.pwd.value=="" || document.userlog.pagerandom.value=="")
	{
		alert("请输入完整");
		return false;
	}
}
// function loadimage(){
// document.getElementById("randImage").src = "image.jsp?"+Math.random();
// }

                                  </script>

<%}else{ %>

<table width='100%' height='300' border='0' align='center' cellpadding='0' cellspacing='0' bgcolor='#FFFFFF'>
                            <tr>
                              <td height='28' align='left' style='padding-left:20px; font-size:20px;'>当前用户：<%=request.getSession().getAttribute("username")%></td>
                            </tr>
							 <tr>
                              <td height='28' align='left' style='padding-left:20px; font-size:20px;'>您的权限：<%=request.getSession().getAttribute("cx")%></td>
                            </tr>
                            <tr>
                              <td height='28' align='left' style='padding-left:20px; font-size:20px;'>欢迎您的到来!!!</td>
                            </tr>
                            <tr>
                              <td height='28' align='center'><input type='button' name='Submit3' value='退出' onclick="javascript:location.href='logout.jsp';" class="content-form-signup" />
                                  <input type='button' name='Submit22' value='个人后台' onclick="javascript:location.href='main.jsp';" class="content-form-signup" /></td>
                            </tr>
                          </table>
<%
}
%>
