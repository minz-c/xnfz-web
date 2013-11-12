<%@ Page Title="" Language="C#" MasterPageFile="~/Master/ETC.Master" AutoEventWireup="true" CodeBehind="jiaoxueziyuan.aspx.cs" Inherits="ETC.ExistResource.jiaoxueziyuan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
    <link href="../CSS/CSSLeft.css" rel="stylesheet" type="text/css" /><script src="../JavaScript/jquery-1.10.2.js" type="text/javascript"></script>
    <script type="text/javascript">
        function AClick(i) {
            switch (i) {
                case 1: $('#ifrRight').height(440);
                    break;
                case 2: $('#ifrRight').height(500);
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
<table width="1092" border="0" align="center" cellpadding="0" cellspacing="0" style=" margin-top:5px">
        <tr align="left">
            <td width="250" align="left" valign="top">
                <div id="lmenu">
                    <dl id="gallery">
                        <dt>已有基础
                            <dd>
                                <a href="jiaoxueziyuan.html" target="ifrRight">教学资源</a></dd>
                                <dd>
                                <a href="jingpinkecheng.html" target="ifrRight">精品课程</a></dd>
                        </dt>
                    </dl>
                </div>
            </td>
            <td width="842">
               <iframe id="ifrRight" name="ifrRight"  target="_self"  height="450" 
                    style="border-style: none; border-width: 0px; margin: 0px; padding: 0px;" 
                    width="842" src="jiaoxueziyuan.html"></iframe>
            </td>
        </tr>
    </table>
</asp:Content>
