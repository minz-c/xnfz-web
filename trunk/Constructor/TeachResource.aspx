<%@ Page Title="福建师范大学虚拟仿真实验教学中心" Language="C#" MasterPageFile="~/Master/ETC.Master" AutoEventWireup="true"
    CodeBehind="TeachResource.aspx.cs" Inherits="ETC.Constructor.TeachResource" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
    <link href="../CSS/CSSLeft.css" rel="stylesheet" type="text/css" />
    <script src="../JavaScript/jquery-1.10.2.js" type="text/javascript"></script>
    <script type="text/javascript">
    function AClick(i) {
    switch(i) {
    case 5:$('#ifrRight').height(1500);
    	break;
 case 2: $('#ifrRight').height(1150);
    	break;
 case 3: $('#ifrRight').height(1200);
    	break;
 case 4: $('#ifrRight').height(800);
     break;
 default: $('#ifrRight').height(440); break;
    }
    }
    $(function () {
        AClick(1);
    });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <table width="1092" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top: 5px">
        <tr align="left">
            <td width="250" align="left" valign="top">
                <div id="lmenu">
                    <dl id="gallery">
                        <dt>教学资源
                            <dd>
                               <dd>
                                    <a onclick="AClick(1);"  href="fzswx.htm" target="ifrRight">现代分子育种（企业级）虚拟仿真技术平台</a></dd>
                                <dd>
                                    <a onclick="AClick(2);"  href="fjgcgc.htm" target="ifrRight">发酵过程工程虚拟仿真技术平台</a></dd>
                                <dd>
                                    <a onclick="AClick(3);"  href="swfljs.htm" target="ifrRight">生物分离技术虚拟仿真平台</a></dd>
                                <dd>
                                    <a onclick="AClick(4);"  href="sjgcsfcl.htm" target="ifrRight">“三废”处理技术及清洁生产虚拟仿真技术平台</a></dd>
                                     <dd>
                                    <a onclick="AClick(5);"  href="function.htm" target="ifrRight">功能和效果</a></dd>
                        </dt>
                    </dl>
                </div>
            </td>
            <td width="842">
                <iframe id="ifrRight" name="ifrRight"  target="_self"  style="border-style: none; border-width: 0px;
                    margin: 0px; padding: 0px;" width="842" src="fzswx.htm"></iframe>
            </td>
        </tr>
    </table>
</asp:Content>
