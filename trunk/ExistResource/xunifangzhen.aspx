<%@ Page Title="" Language="C#" MasterPageFile="~/Master/ETC.Master" AutoEventWireup="true"
    CodeBehind="xunifangzhen.aspx.cs" Inherits="ETC.ExistResource.xunifangzhen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
    <link href="../CSS/CSSLeft.css" rel="stylesheet" type="text/css" />
    <script src="../JavaScript/QueryString.js" type="text/javascript"></script>
    <script src="../JavaScript/jquery-1.10.2.js" type="text/javascript"></script>
    <script type="text/javascript">
        function AClick(i) {
            switch (i) {
                case 1: $('#ifrRight').height(1500);
                    break;
                case 2: $('#ifrRight').height(5600);
                    break;
                case 3: $('#ifrRight').height(400);
                    break;
              
                default: $('#ifrRight').height(440); break;
            }
        }
        $(function () {
//            var Request = GetRequest();
//            alert(Request[type]);
//            if (Request[type] != undefined && Request[type]==2) {
//            AClick(2);
//            }
//            else{
            AClick(1);
//            }
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <table width="1092" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top: 5px">
        <tr align="left">
            <td width="250" align="left" valign="top">
                <div id="lmenu">
                    <dl id="gallery">
                        <dt>虚拟仿真资源
                            <dd>
                               <dd>
                                    <a onclick="AClick(1);"  href="pijiufajiao.html" target="ifrRight">啤酒发酵生产工艺仿真</a></dd>
                                <dd>
                                    <a onclick="AClick(2);"  href="qingmeisu.htm" target="ifrRight">青霉素发酵生产工艺仿真</a></dd>
                                <dd>
                                    <a onclick="AClick(3);"  href="xunishiyanketang.htm" target="ifrRight">虚拟实验课堂</a></dd>
                               
                                    
                        </dt>
                    </dl>
                </div>
            </td>
            <td width="842">
                <iframe id="ifrRight" name="ifrRight"  target="_self"  style="border-style: none; border-width: 0px;
                    margin: 0px; padding: 0px;" width="842" src="pijiufajiao.html"></iframe>
            </td>
        </tr>
    </table>
</asp:Content>
