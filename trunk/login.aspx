<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>ơ�Ʒ��͹��շ���ϵͳ</title>
<style type="text/css">
<!--
.STYLE1 {font-size: 12px}
-->
</style>
<script type="text/javascript">

function wlogin() {
	alert("�û������������");
}

function wclose() {
	if (confirm("���Ƿ�Ҫ�رգ�")==true)
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
		<td><span class="STYLE1">�û���:</span>
	      <input type="text" name="user" width="100" />	    </td>
	  </tr>
	  <tr>
	    <td height="31">&nbsp;</td>
	    <td>&nbsp;</td>
	    <td><span class="STYLE1">��&nbsp;&nbsp;��:</span>
		  <input type="password" name="pwd" width="100" />		</td>
      </tr>
	  <tr>
	    <td height="26">&nbsp;</td>
	    <td>&nbsp;</td>
	    <td> &nbsp;&nbsp;&nbsp;
		  <input type="button" name="login" value="��¼" onclick="wlogin()"  />&nbsp;&nbsp;
          <input type="button" name="close" value="�ر�" onclick="wclose()"/>
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
