﻿<%@ Page Title="福建师范大学虚拟仿真实验教学中心" Language="C#" MasterPageFile="~/Master/ETC.Master" AutoEventWireup="true"
    CodeBehind="Teachers.aspx.cs" Inherits="ETC.BaseInfor.Teachers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
    <link href="../CSS/CSSLeft.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <table width="1092" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top: 5px">
        <tr align="left">
            <td width="250" align="left" valign="top">
                <div id="lmenu">
                    <dl id="gallery">
                        <dt>基本情况
                            <dd>
                                <a href="teacher.htm" target="ifrRight">中心主任</a></dd>
                        </dt>
                    </dl>
                </div>
            </td>
            <td width="842" align="center" valign="top">
                <iframe id="ifrRight" name="ifrRight" target="_self" height="850" style="border-style: none;
                    border-width: 0px; margin: 0px; padding: 0px;" width="842" src="teacher.htm"></iframe>
            </td>
            <%-- <td width="842" align="center">
             <iframe id="ifrRight" name="ifrRight"  target="_self"  height="1300" 
                    style="border-style: none; border-width: 0px; margin: 0px; padding: 0px;" 
                    width="842" src="teacher.htm"></iframe>
            </td>--%>
        </tr>
    </table>
</asp:Content>
