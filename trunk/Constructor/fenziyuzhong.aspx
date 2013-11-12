<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fenziyuzhong.aspx.cs" Inherits="ETC.Constructor.fenziyuzhong"  MasterPageFile="~/Master/ETC.Master"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server" >
    <link href="../CSS/CSSLeft.css" rel="stylesheet" type="text/css" />
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
   <table width="1092" border="0" align="center" cellpadding="0" cellspacing="0" style=" margin-top:5px">
        <tr align="left">
            <td width="250" align="left" valign="top">
                <div id="lmenu">
                    <dl id="gallery">
                        <dt>建设内容
                            <dd>
                                <a href="fzswx.htm" target="ifrRight">分子育种平台</a></dd>
                            
                        </dt>
                    </dl>
                </div>
            </td>
            <td width="842">
             <iframe id="ifrRight" name="ifrRight"  target="_self"  height="400" 
                    style="border-style: none; border-width: 0px; margin: 0px; padding: 0px;" 
                    width="100%" src="fzswx.htm"></iframe>
            </td>
        </tr>
    </table>
</asp:Content>