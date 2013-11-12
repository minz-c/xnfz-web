<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>啤酒发酵工艺仿真系统</title>
<style type="text/css">
<!--
.STYLE1 {font-size: 12px}
-->
</style>
<script type="text/javascript">

function wlogin() {
	alert("用户名或密码错误！");
}

function wclose() {
	if (confirm("您是否要关闭？")==true)
    {
       window.close();
       return true;
    } else {
	   return false;
	}
}

</script>

</head>

<body>
<form id="form1" name="form1" method="post" action="">
<div align="center"> 
	<table width="500" height="399" border="0" background="Images/bg.jpg">
	  <tr>
		<td width="128" height="51">&nbsp;</td>
		<td width="136">&nbsp;</td>
		<td width="222">&nbsp;</td>
	  </tr>
	  <tr>
		<td height="220">&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	  </tr>
	  <tr>
		<td height="29">&nbsp;</td>
		<td>&nbsp;</td>
		<td><span class="STYLE1">用户名:</span>
	      <input type="text" name="user" width="100" />	    </td>
	  </tr>
	  <tr>
	    <td height="31">&nbsp;</td>
	    <td>&nbsp;</td>
	    <td><span class="STYLE1">密&nbsp;&nbsp;码:</span>
		  <input type="password" name="pwd" width="100" />		</td>
      </tr>
	  <tr>
	    <td height="26">&nbsp;</td>
	    <td>&nbsp;</td>
	    <td> &nbsp;&nbsp;&nbsp;
		  <input type="button" name="login" value="登录" onclick="wlogin()"  />&nbsp;&nbsp;
          <input type="button" name="close" value="关闭" onclick="wclose()"/>
		</td>
      </tr>
	  <tr>
	    <td height="26">&nbsp;</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
      </tr>
  </table>
</div>
</form>	
</body>

</html>
