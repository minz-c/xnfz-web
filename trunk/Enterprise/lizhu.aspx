<%@ Page Title="" Language="C#" MasterPageFile="~/Master/ETC.Master" AutoEventWireup="true" CodeBehind="lizhu.aspx.cs" Inherits="ETC.Enterprise.lizhu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
    <link href="../CSS/CSSLeft.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
 <table width="1092" border="0" align="center" cellpadding="0" cellspacing="0" style=" margin-top:5px">
        <tr align="left">
            <td width="250" align="left" valign="top">
                <div id="lmenu">
                    <dl id="gallery">
                        <dt>合作企业
                            <dd>
                                <a href="lizhu.html" target="ifrRight">丽珠集团福兴医药有限公司</a></dd>
                        </dt>
                    </dl>
                </div>
            </td>
            <td width="842">
               <iframe id="ifrRight" name="ifrRight"  target="_self"  height="600" 
                    style="border-style: none; border-width: 0px; margin: 0px; padding: 0px;" 
                    width="842" src="lizhu.html"></iframe>
            </td>
        </tr>
    </table>
</asp:Content>
