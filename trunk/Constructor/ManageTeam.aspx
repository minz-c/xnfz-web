<%@ Page Title="福建师范大学虚拟仿真实验教学中心" Language="C#" MasterPageFile="~/Master/ETC.Master" AutoEventWireup="true"
    CodeBehind="ManageTeam.aspx.cs" Inherits="ETC.Constructor.ManageTeam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
    <link href="../CSS/CSSLeft.css" rel="stylesheet" type="text/css" />
    <script src="../JavaScript/jquery-1.10.2.js" type="text/javascript"></script>
    <script type="text/javascript">
        function AClick(i) {
            switch (i) {
                case 1: $('#ifrRight').height(800);
                    break;
                case 2: $('#ifrRight').height(550);
                    break;
                case 3: $('#ifrRight').height(700);
                    break;
                case 4: $('#ifrRight').height(900);
                    break;
                case 5: $('#ifrRight').height(700);
                    break;
                case 6: $('#ifrRight').height(1200);
                    break;
                case 7: $('#ifrRight').height(440);
                    break;
                case 8: $('#ifrRight').height(440);
                    break;
                case 9: $('#ifrRight').height(1100);
                    break;
                case 10: $('#ifrRight').height(500);
                    break;
                case 11: $('#ifrRight').height(400); break;
                case 12: $('#ifrRight').height(450); break;
                default: $('#ifrRight').height(900); break;
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
                        <%-- <dt>内容建设<dd><a href="2-5实验教学和管理队伍.htm" target="ifrRight">管理队伍</a></dd>--%>
                        <dt>管理队伍
                            <dd>
                                <a onclick="AClick(1);"  href="jsgldw.htm" target="ifrRight">教师水平和队伍结构</a></dd>
                            <dd>
                                <a onclick="AClick(2);"  href="zyd.htm" target="ifrRight">张彦定</a></dd>
                            <dd>
                                <a onclick="AClick(3);"  href="csz.htm" target="ifrRight">蔡声镇</a></dd>
                            <dd>
                                <a onclick="AClick(4);"  href="lm.htm" target="ifrRight">李敏</a></dd>
                            <dd>
                                <a onclick="AClick(5);"  href="hzy.htm" target="ifrRight">黄子洋</a></dd>
                            <dd>
                                <a onclick="AClick(6);"  href="wbf.htm" target="ifrRight">翁炳峰</a></dd>
                            <dd>
                                <a onclick="AClick(7);"  href="syp.htm" target="ifrRight">苏玉萍</a></dd>
                            <dd>
                                <a onclick="AClick(8);"  href="gsy.htm" target="ifrRight">甘水洋</a></dd>
                            <dd>
                                <a onclick="AClick(9);"  href="syjx.htm" target="ifrRight">实验教学团队</a></dd>
                            <dd>
                                <a onclick="AClick(10);"  href="rjsj.htm" target="ifrRight">软件设计团队</a></dd>
                            <dd>
                                <a onclick="AClick(11);"  href="dmsj.htm" target="ifrRight">动漫设计团队</a></dd>
                            <dd>
                                <a onclick="AClick(12);"  href="hzqy.html" target="ifrRight">合作企业团队</a></dd>
                            <%-- <dd>
                                <a href="fzsyjx.htm" target="ifrRight">虚拟仿真实验教学和研发水平</a></dd>--%>
                        </dt>
                    </dl>
                </div>
            </td>
            <td width="842">
                <iframe id="ifrRight" name="ifrRight" target="_self" height="1100" style="border-style: none;
                    border-width: 0px; margin: 0px; padding: 0px;" width="842" src="jsgldw.htm">
                </iframe>
            </td>
        </tr>
    </table>
</asp:Content>
