<%@ Page Title="福建师范大学虚拟仿真实验教学中心" Language="C#" MasterPageFile="~/Master/ETC.Master" AutoEventWireup="true"
    CodeBehind="TeachPlat.aspx.cs" Inherits="ETC.Constructor.TeachPlat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
    <link href="../CSS/CSSLeft.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
       <table width="1092" border="0" align="center" cellpadding="0" cellspacing="0" style=" margin-top:5px">

        <tr align="left">
            <td width="250" align="left" valign="top">
                <div id="lmenu">
                    <dl id="gallery">
                        <dt>内容建设
                            <dd>
                                <a href="2-3教学平台.htm" target="ifrRight">教学平台</a></dd>
                        </dt>
                    </dl>
                </div>
            </td>
            <td width="842">
                <iframe id="ifrRight" name="ifrRight"  target="_self"  height="1930"
                    style="border-style: none; border-width: 0px; margin: 0px; padding: 0px;" 
                    width="842" src="2-3教学平台.htm"></iframe>
               
            </td>
        </tr>
    </table>
</asp:Content>
