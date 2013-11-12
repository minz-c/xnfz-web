<%@ Page Title="" Language="C#" MasterPageFile="~/Master/ETC.Master" AutoEventWireup="true" CodeBehind="shitipingtai.aspx.cs" Inherits="ETC.ExistResource.shitipingtai" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
    <link href="../CSS/CSSLeft.css" rel="stylesheet" type="text/css" />
     <script src="../JavaScript/jquery-1.10.2.js" type="text/javascript"></script>
    <script type="text/javascript">
        function AClick(i) {
            switch (i) {
                case 1: $('#ifrRight').height(500);
                    break;
                case 2: $('#ifrRight').height(440);
                    break;
                case 3: $('#ifrRight').height(400);
                    break;
                case 4: $('#ifrRight').height(600);
                    break;
                case 5: $('#ifrRight').height(400);
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
                        <dt>实体平台资源
                            <dd>
                                <a onclick="AClick(1);"  href="shitipingtai.html" target="ifrRight">工业微生物发酵技术国家地方联合工程研究中心</a></dd>
                              <dd>  <a onclick="AClick(2);"  href="shitipingtai1.htm" target="ifrRight">工业微生物教育部工程研究中心</a></dd>
                             <dd>   <a onclick="AClick(3);"  href="shitipingtai2.htm" target="ifrRight">国家级生物学实验教学示范中心及工程实训基地</a></dd>
                              <dd>  <a onclick="AClick(4);"  href="../Enterprise/qingpi.htm" target="ifrRight">青啤</a></dd>
                             <dd>   <a onclick="AClick(5);"  href="../Enterprise/wuyiweijing.htm" target="ifrRight">武夷味精</a></dd>
                        </dt>
                    </dl>
                </div>
            </td>
            <td width="842">
               <iframe id="ifrRight" name="ifrRight"  target="_self"  height="500" 
                    style="border-style: none; border-width: 0px; margin: 0px; padding: 0px;" 
                    width="842" src="shitipingtai.html"></iframe>
            </td>
        </tr>
    </table>
</asp:Content>
