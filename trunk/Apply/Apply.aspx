<%@ Page Title="福建师范大学虚拟仿真实验教学中心" Language="C#" MasterPageFile="~/Master/ETC.Master" AutoEventWireup="true"
    CodeBehind="Apply.aspx.cs" Inherits="ETC.Apply.Apply" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
    <link href="../CSS/CSSLeft.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
      <table width="1092" border="0" align="center" cellpadding="0" cellspacing="0" style=" margin-top:5px">

        <tr  >
            <td width="250" align="left" valign="top" style="left: 0px">
                <div id="lmenu">
                    <dl id="gallery">
                        <dt>申报书
                            <dd>
                                <a href="1.htm" target="ifrRight">申报书封面</a></dd>
                                 <dd>
                                <a href="2.htm" target="ifrRight">&nbsp;1&nbsp; 基本情况</a></dd>
                                 <dd>
                                <a href="3.htm" target="ifrRight">&nbsp;2&nbsp; 建设内容</a></dd>
                                 <dd>
                                <a href="4.htm" target="ifrRight">&nbsp;3&nbsp; 资源共享</a></dd>
                                 <dd>
                                <a href="5.htm" target="ifrRight">&nbsp;4&nbsp; 条件保障</a></dd>
                                 <dd>
                                <a href="6.htm" target="ifrRight">&nbsp;5&nbsp; 学校和主管部门意见</a></dd>
                        </dt>
                    </dl>
                </div>
            </td>
            <td width="842" align="center" valign="top">
                <iframe id="ifrRight" name="ifrRight"  target="_self"  height="850" style="border-style: none; border-width: 0px;
                    margin: 0px; padding: 0px;" width="842" src="1.htm"></iframe>
            </td>
        </tr>
    </table>
</asp:Content>
