<%@ Page Title="" Language="C#" MasterPageFile="~/Master/ETC.Master" AutoEventWireup="true"
    CodeBehind="Index.aspx.cs" Inherits="ETC.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
    <script src="JavaScript/jquery-1.10.2.js" type="text/javascript"></script>
    <style type="text/css">
        #tip
        {
            position: absolute;
            color: #333;
            display: none;
        }
        #tip s
        {
            position: absolute;
            top: 40px;
            left: -20px;
            display: block;
            width: 0px;
            height: 0px;
            font-size: 0px;
            line-height: 0px;
            border-color: transparent #BBA transparent transparent;
            border-style: dashed solid dashed dashed;
            border-width: 10px;
        }
        #tip s i
        {
            position: absolute;
            top: -10px;
            left: -8px;
            display: block;
            width: 0px;
            height: 0px;
            font-size: 0px;
            line-height: 0px;
            border-color: transparent #fff transparent transparent;
            border-style: dashed solid dashed dashed;
            border-width: 10px;
        }
        #tip .t_box
        {
            position: relative;
            background-color: #CCC;
            filter: alpha(opacity=50);
            -moz-opacity: 0.5;
            bottom: -3px;
            right: -3px;
        }
        #tip .t_box div
        {
            position: relative;
            background-color: #FFF;
            border: 1px solid #ACA899;
            background: #FFF;
            padding: 1px;
            top: -3px;
            left: -3px;
        }
        
        .tip
        {
            width: 82px;
            height: 82px;
            border: 1px solid #DDD;
        }
    </style>
    <script type="text/javascript">

        $(function () {
            //        var arraytips = [];
            var $tip1 = $('<div id="tip"><div class="t_box"><div  style="width:107"><s><i></i></s>' +
                            '<table width="410" height="121" border="0" cellpadding="1" cellspacing="1"><tr>' +
                            '<th rowspan="2" scope="col"><img src="Images/top/1.jpg" width="107" height="121" /></th>' +
                            '<th scope="col" valign="middle"><strong>现代分子育种（企业级）虚拟仿真技术平台</strong></th></tr><tr>' +
                            '<td valign="top"><p style="padding-left:.5em; text-indent:2em; line-height:1.5em;">现代分子育种（企业级）虚拟仿真技术平台以生物制药企业技术研发部门为蓝本，拟建设以下具体虚拟仿真实验项目：DNA克隆、重组蛋白表达（大肠杆菌系统、毕赤酵母系统和CHO细胞系统）、Western blot鉴定表达产物和新型蛋白质药物分子的高通量筛选。</p></td>' +
                            '</tr></table></div></div></div>');
            var $tip2 = $('<div id="tip">'+
							'  <div class="t_box">'+
							'    <div><s><i></i></s> '+
							'      <table border="0" cellpadding="1" cellspacing="1">'+
							'	    <tr>'+
							'		  <th rowspan="2" align="center" valign="middle" scope="col"><img src="Images/top/2.jpg" height="92"/></th> '+
							'          <th scope="col"><strong>发酵过程工程虚拟仿真技术平台</strong></th>'+
							'		</tr>'+
							'		<tr>  '+
							'            <td>'+
							'			  <p style="padding-left:.5em; line-height:1.5em;">&nbsp;■&nbsp;发酵原材料制备流程 <br /> '+
							'			  &nbsp;■&nbsp;发酵原料高温连续灭菌流程 <br />'+
							'			  &nbsp;■&nbsp;大规模发酵用无菌空气制备流程 <br />'+
							'			  &nbsp;■&nbsp;发酵过程多参数优化控制流程 </p>'+
							'			</td> '+
							'        </tr>'+
							'      </table>'+
							'	</div>'+
							'  </div>'+
							'</div>');
            var $tip3 = $('<div id="tip">'+
							'  <div class="t_box">'+
							'    <div><s><i></i></s> '+
							'      <table width="340" border="0" cellpadding="1" cellspacing="1"> '+
							'	    <tr> '+
							'          <th rowspan="2" align="center" valign="middle" scope="col"><img src="Images/top/3.jpg" height="92"/></th> '+
							'          <th scope="col"><strong>生物分离虚拟仿真技术平台</strong></th>'+
							'		</tr> '+
							'		<tr>  '+
							'          <td align="center">'+
							'		    <p style="line-height:1.5em;">'+
							'			   ■&nbsp;发酵液的板框过滤&nbsp;&nbsp;■&nbsp;溶媒萃取技术 <br /> '+
							'              ■&nbsp;工业级膜分离技术&nbsp;&nbsp;■&nbsp;产品结晶技术 <br /> '+
							'			   ■&nbsp;大型离子交换技术&nbsp;&nbsp;■&nbsp;产品喷雾干燥<br />'+
							'			</p> '+
							'          </td> '+
							'		</tr>'+
							'      </table>'+
							'	</div>'+
							'  </div>'+
							' </div>');
            var $tip4 = $('<div id="tip">'+
							'  <div class="t_box"> '+
							'    <div><s><i></i></s> '+
							'      <table width="320" border="0" cellpadding="1" cellspacing="1">'+
							'	    <tr> '+
							'          <th rowspan="2" align="center" valign="middle" scope="col"><img src="Images/top/4.jpg" height="92"/></th> '+
							'          <th scope="col"><strong>“三废”处理技术虚拟仿真技术平台</strong></th>'+
							'		</tr>'+
							'		<tr>'+
							'		  <td> '+
							'            <p style="padding-left:.5em; line-height:1.5em;">'+
							'			   &nbsp;■&nbsp;燃煤废气除尘<br /> '+
							'               &nbsp;■&nbsp;发酵废水污染处理<br /> '+
							'               &nbsp;■&nbsp;发酵废渣资源化利用<br /> '+
							'            </p>'+
							'		  </td>'+
							'		</tr>'+
							'	  </table>'+
							'	</div>'+
							'  </div>'+
							'</div>');
            var $tip5 = $('<div id="tip">'+
							'  <div class="t_box">'+
							'    <div style="width:250;"><s><i></i></s>'+
							'	  <p style="padding-left:.5em; text-indent:1em; line-height:1.5em;">'+
							'	    <strong>虚拟仿真实验项目</strong><br />'+
							'	    &nbsp;&nbsp;1、啤酒虚拟仿真发酵生产工艺<br />'+
							'	    &nbsp;&nbsp;2、青霉素虚拟仿真发酵生产工艺<br />'+
							'		&nbsp;&nbsp;3、...'+
							'	  </p>'+
							'    </div>'+
							'  </div>'+
							'</div>');

            $('#area1').mouseover(function () {
                $('body').append($tip1);
                $('#tip').show('fast');
            }).mouseout(function () {
                $('#tip').remove();
            }).mousemove(function (e) {
                $('#tip').css({ "top": (e.pageY - 60) + "px", "left": (e.pageX + 30) + "px" })
            });
            $('#area2').mouseover(function () {
                $('body').append($tip2);
                $('#tip').show('fast');
            }).mouseout(function () {
                $('#tip').remove();
            }).mousemove(function (e) {
                $('#tip').css({ "top": (e.pageY - 60) + "px", "left": (e.pageX + 30) + "px" })
            });
            $('#area3').mouseover(function () {
                $('body').append($tip3);
                $('#tip').show('fast');
            }).mouseout(function () {
                $('#tip').remove();
            }).mousemove(function (e) {
                $('#tip').css({ "top": (e.pageY - 60) + "px", "left": (e.pageX + 30) + "px" })
            });
            $('#area4').mouseover(function () {
                $('body').append($tip4);
                $('#tip').show('fast');
            }).mouseout(function () {
                $('#tip').remove();
            }).mousemove(function (e) {
                $('#tip').css({ "top": (e.pageY - 60) + "px", "left": (e.pageX + 30) + "px" })
            });
            $('#area5').mouseover(function () {
                $('body').append($tip5);
                $('#tip').show('fast');
            }).mouseout(function () {
                $('#tip').remove();
            }).mousemove(function (e) {
                $('#tip').css({ "top": (e.pageY - 60) + "px", "left": (e.pageX + 30) + "px" })
            });
        })

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <div id="divTop" style="width: 1092px;" align="center">
        <table width="1092" border="0" cellspacing="1" cellpadding="1" align="center">
            <tr align="center">
                <th height="36" colspan="2" align="left" valign="middle" class="longpieces" scope="row">
                    <img src="Images/top/t1.jpg" width="178" height="35" />
                </th>
            </tr>
            <tr>
                <th width="740" height="300" align="left" class="longpieces" scope="row">
                    <img src="Images/虚拟发酵工厂.jpg" width="740" height="300" border="0" usemap="#Map" />
                </th>
                <td width="350" height="300">
                    <table width="100%" height="300" border="0" cellpadding="0" cellspacing="0">
                        <tbody>
                            <tr>
                                <td align="center" valign="middle">
                                    <!--酷播迷你 CuPlayerMiniV2.0 代码开始-->
                                    <script type="text/javascript" src="cuplayer/Images/swfobject.js"></script>
                                    <div id="CuPlayer">
                                        <strong>酷播迷你(CuPlayerMiniV2.2) 提示：您的Flash Player版本过低，请<a href="http://www.CuPlayer.com/">点此进行播放器升级</a>！</strong>
                                    </div>
                                    <script type="text/javascript">
                                        var so = new SWFObject("cuplayer/CuPlayerMiniV22_Black_S.swf", "CuPlayer", "350", "300", "9", "#000000");
                                        so.addParam("allowfullscreen", "true");
                                        so.addParam("allowscriptaccess", "always");
                                        so.addParam("wmode", "opaque");
                                        so.addParam("quality", "high");
                                        so.addParam("salign", "lt");
                                        so.addVariable("CuPlayerFile", "http://life.fjnu.edu.cn/flv/fjnuxnfz.flv");
                                        so.addVariable("CuPlayerImage", "cuplayer/Images/flashChangfa2.jpg");
                                        so.addVariable("CuPlayerShowImage", "flash");
                                        so.addVariable("CuPlayerWidth", "350");
                                        so.addVariable("CuPlayerHeight", "300");
                                        so.addVariable("CuPlayerAutoPlay", "true");
                                        so.addVariable("CuPlayerAutoRepeat", "false");
                                        so.addVariable("CuPlayerShowControl", "true");
                                        so.addVariable("CuPlayerAutoHideControl", "true");
                                        so.addVariable("CuPlayerAutoHideTime", "6");
                                        so.addVariable("CuPlayerVolume", "80");
                                        so.write("CuPlayer");
                                    </script>
                                    <!--酷播迷你 CuPlayerMiniV2.0 代码结束-->
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </table>
        <map name="Map" id="Map">
            <area id="area1" shape="poly" coords="54,127,59,158,109,211,163,195,159,156,104,116"
                href="#现代分子育种（企业级）虚拟仿真技术平台" />
            <area id="area2" shape="poly" coords="220,86,221,99,217,103,283,136,298,150,354,140,352,105,266,76"
                href="#发酵过程工程虚拟仿真技术平台" />
            <area id="area3" shape="poly" coords="155,106,157,140,216,174,255,161,259,131,195,98"
                href="#生物分离虚拟仿真技术平台" />
            <area id="area4" shape="poly" coords="412,50,401,55,403,67,429,76,459,91,478,87,450,59"
                href="#“三废”处理技术虚拟仿真技术平台" />
            <area id="area5" shape="poly" coords="247,164,253,195,383,287,408,289,473,247,466,212,455,202,432,190,385,211,324,176,335,171,325,161,310,166,277,153"
                href="#5" />
        </map>
    </div>
    <div  style="width: 1092px;" align="center">
	<table width="1092" border="0" cellspacing="1" cellpadding="3">
  <tr>
    <td align="left" width="276" height="36"><img src="Images/top/t2.jpg" height="35" /></td>
    <td align="left" height="36" colspan="2"><img src="Images/top/t3.jpg" height="35" /></td>
    <td align="left" height="36" ><img src="Images/top/t4.jpg"  height="35" /></td>
  </tr>
  <tr>
    <td width="276" height="140"><table width="276" border="0" cellpadding=".5" cellspacing=".5">
      <tr>
        <td width="90" align="center" valign="bottom" ><a href="ExistResource/xunifangzhen.aspx" target="_blank"><img src="Images/top/top1.jpg" width="90" height="132" /></a></td>
        <td width="3"  valign="top" ></td>
        <td width="90" valign="bottom" ><a href="ExistResource/xunifangzhen1.aspx" target="_blank"><img src="Images/top/top2.jpg" width="90" height="132" /></a> </td>
        <td width="3"  valign="top" ></td>
        <td width="90"  ><a href="http://life.fjnu.edu.cn/lifelab/index.html"  target="_blank"><img src="Images/top/top3.jpg" width="90" height="132" /></a> </td>
      </tr>
    </table></td>
    <td width="308" align="left" valign="center" >
	<table width="100%"  border="0" cellspacing="1" cellpadding="1" >
	  <tr><td  height="132"  bgcolor="#7C0606">
	  <table width="300" border="0" cellspacing="0" cellpadding="0">
                        <tbody>
                            <tr>
                                <td width="300" height="25">
                                    <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                        <tbody>
                                            <tr>
                                                <td align="left">
                                                    &nbsp;<a href="http://imece.fjnu.edu.cn" target="_blank" title="工业微生物发酵技术国家地方联合工程研究中心"><img src="Images/top/pc.png" width="11" height="11" /><font color="#FFFFFF"> 工业微生物发酵技术国家地方联合工程研究中心</font></a>                                                </td>
                                            </tr>
                                        </tbody>
                              </table>                                </td>
                            </tr>
                            <tr>
                                <td width="300" height="25">
                                    <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                        <tbody>
                                            <tr>
                                                <td align="left">
                                                    &nbsp;<a href="http://imece.fjnu.edu.cn" target="_blank" title="工业微生物教育部工程研究中心"><img src="Images/top/pc.png" width="11" height="11" /><font color="#FFFFFF"> 工业微生物教育部工程研究中心</font></a>                                                </td>
                                            </tr>
                                        </tbody>
                              </table>                                </td>
                            </tr>
                            <tr>
                                <td width="300" height="25">
                                    <table width="" cellpadding="0" cellspacing="0" border="0">
                                        <tbody>
                                            <tr>
                                                <td align="left">
                                                    &nbsp;<a href="ExistResource/shitipingtai2.htm" target="_blank" title="国家级生物学实验教学示范中心工程实训中心"><img src="Images/top/pc.png" width="11" height="11" /><font color="#FFFFFF"> 国家级生物学实验教学示范中心工程实训中心</font></a>                                                </td>
                                            </tr>
                                        </tbody>
                              </table>                                </td>
                            </tr>
                        </tbody>
      </table></td></tr></table>
	</td>
    <td width="336" align="left" valign="center" ><table><tr><td height="132"  bgcolor="#7C0606">
	
	
	<table  width="328"  border="0" cellspacing="1" cellpadding="1" ><tbody><tr>
                                <td height="25">
                                    <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                        <tbody>
                                            <tr>
                                                <td width="280" align="left">
                                                    &nbsp;<a href="http://www.tsingtao.com.cn/" target="_blank" title="青岛啤酒福州有限公司"><img src="Images/top/building.png" width="11" height="11" /><font color="#FFFFFF"> 青岛啤酒福州有限公司</font></a>                                                </td>
                                            </tr>
                                        </tbody>
                                  </table>                                </td>
                            </tr>
                            <tr>
                                <td height="25">
                                    <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                        <tbody>
                                            <tr>
                                                <td align="left">
                                                    &nbsp;<a href="http://www.wuyiwj.com" target="_blank" title="福建省建阳武夷味精有限公司"><img src="Images/top/building.png" width="11" height="11" /><font color="#FFFFFF"> 福建省建阳武夷味精有限公司</font></a>                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>                                </td>
                            </tr>
                            <tr>
                                <td height="25">
                                    <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                        <tbody>
                                            <tr>
                                                <td align="left">
                                                    &nbsp;<a href="http://www.fxpharm.com" target="_blank" title="丽珠集团福兴医药有限公司"><img src="Images/top/building.png" width="11" height="11" /><font color="#FFFFFF"> 丽珠集团福兴医药有限公司</font></a>                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>                                </td>
                            </tr>
                            <tr>
                                <td height="25">
                                    <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                        <tbody>
                                            <tr>
                                                <td align="left">
                                                    &nbsp;<a href="http://www.mscgame.com/" target="_blank" title="万城集团福建天趣网络技术有限公司"><img src="Images/top/building.png" width="11" height="11" /><font color="#FFFFFF"> 万城集团福建天趣网络技术有限公司</font></a>                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>                                </td>
      </tr></tbody></table>
	  
	  </td></tr></table></td>
    <td ><table width="100%" height="132"  border="0"  cellpadding="3"  cellspacing="0">
      <tr>
        <td width="50%" height="50%" style="border:thin; border-style:none"  align="right" valign="middle"><a href="ExistResource/jiaoxueziyuan.aspx" target="_blank"> <img src="Images/top/r1.jpg" /></a></td>
        <td width="50%" height="50%" style="border:thin; border-style:none" align="left" valign="middle" ><a href="http://life.fjnu.edu.cn/rcpy/jpkc/520.html" target="_blank"> <img src="Images/top/r2.jpg" /></a></td>
      </tr>
      <tr>
        <td width="50%" height="50%" style="border:thin; border-style:none"  align="right" valign="middle" ><a href="login.aspx" target="_blank"><img src="Images/top/r3.jpg" /></a></td>
        <td width="50%" height="50%" style="border:thin; border-style:none" align="left" valign="middle" ><a href="#" target="_blank"><img src="Images/top/r4.jpg" /></a></td>
      </tr>
    </table></td>
  </tr>
</table>

	
	</div>
    <div id="divBottom" style="width: 1092px;" align="center">
        <table width="1092" height="130" border="0" cellspacing="1" cellpadding="1">
            <tbody>
                <tr>
                    <td height="130" align="center" valign="top">
                        <table cellspacing="0" cellpadding="0" width="1090" align="center" border="0">
                            <tbody>
                                <tr>
                                    <td height="130" colspan="2" valign="top" style="padding-right: 3px; padding-left: 3px">
                                        <div id="deml" style="overflow: hidden; width: 1083px; height: 130px">
                                            <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                                <tbody>
                                                    <tr>
                                                        <td id="deml1" valign="top">
                                                            <table cellspacing="0" cellpadding="0" border="0">
                                                                <tbody>
                                                                    <tr>
                                                                        <td height="130">
                                                                            <table border="0" cellpadding="0" cellspacing="0">
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td height="124">
                                                                                        </td>
                                                                                        <td width="700" align="center" valign="top">
                                                                                            <table width="150" border="0" cellspacing="0" cellpadding="0">
                                                                                                <tbody>
                                                                                                    <tr>
                                                                                                        <td height="100" align="center">
                                                                                                            <table border="0" cellpadding="0" cellspacing="0" id="newproducts">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="102" align="center">
                                                                                                                            <img height="100" src="images/活动图标/1.jpg" width="120" style="padding: 2px; border: 1px #666666 solid">
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td height="2" align="center">
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td align="center">
                                                                                                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="18" align="center" style="font-size: 12px">
                                                                                                                            领导参观工程中心
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </tbody>
                                                                                            </table>
                                                                                        </td>
                                                                                        <td width="700" align="center" valign="top">
                                                                                            <table width="150" border="0" cellspacing="0" cellpadding="0">
                                                                                                <tbody>
                                                                                                    <tr>
                                                                                                        <td height="100" align="center">
                                                                                                            <table border="0" cellpadding="0" cellspacing="0" id="newproducts">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="102" align="center">
                                                                                                                            <img height="100" src="images/活动图标/2.jpg" width="120" style="padding: 2px; border: 1px #666666 solid">
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td height="2" align="center">
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td align="center">
                                                                                                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="18" align="center" style="font-size: 12px">
                                                                                                                            生物学一级博士点
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </tbody>
                                                                                            </table>
                                                                                        </td>
                                                                                        <td width="700" align="center" valign="top">
                                                                                            <table width="150" border="0" cellspacing="0" cellpadding="0">
                                                                                                <tbody>
                                                                                                    <tr>
                                                                                                        <td height="100" align="center">
                                                                                                            <table border="0" cellpadding="0" cellspacing="0" id="newproducts">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="102" align="center">
                                                                                                                            <img height="100" src="images/活动图标/3.jpg" width="120" style="padding: 2px; border: 1px #666666 solid">
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td height="2" align="center">
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td align="center">
                                                                                                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="18" align="center" style="font-size: 12px">
                                                                                                                            轻工技术与工程一级硕士点
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </tbody>
                                                                                            </table>
                                                                                        </td>
                                                                                        <td width="700" align="center" valign="top">
                                                                                            <table width="150" border="0" cellspacing="0" cellpadding="0">
                                                                                                <tbody>
                                                                                                    <tr>
                                                                                                        <td height="100" align="center">
                                                                                                            <table border="0" cellpadding="0" cellspacing="0" id="newproducts">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="102" align="center">
                                                                                                                            <img height="100" src="images/活动图标/4.jpg" width="120" style="padding: 2px; border: 1px #666666 solid">
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td height="2" align="center">
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td align="center">
                                                                                                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="18" align="center" style="font-size: 12px">
                                                                                                                            生物工程专业硕士点
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </tbody>
                                                                                            </table>
                                                                                        </td>
                                                                                        <td width="700" align="center" valign="top">
                                                                                            <table width="150" border="0" cellspacing="0" cellpadding="0">
                                                                                                <tbody>
                                                                                                    <tr>
                                                                                                        <td height="100" align="center">
                                                                                                            <table border="0" cellpadding="0" cellspacing="0" id="newproducts">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="102" align="center">
                                                                                                                            <img height="100" src="images/活动图标/5.jpg" width="120" style="padding: 2px; border: 1px #666666 solid">
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td height="2" align="center">
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td align="center">
                                                                                                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="18" align="center" style="font-size: 12px">
                                                                                                                            生物领域学会
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </tbody>
                                                                                            </table>
                                                                                        </td>
                                                                                        <td width="700" align="center" valign="top">
                                                                                            <table width="150" border="0" cellspacing="0" cellpadding="0">
                                                                                                <tbody>
                                                                                                    <tr>
                                                                                                        <td height="100" align="center">
                                                                                                            <table border="0" cellpadding="0" cellspacing="0" id="newproducts">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="102" align="center">
                                                                                                                            <img height="100" src="images/活动图标/6.jpg" width="120" style="padding: 2px; border: 1px #666666 solid">
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td height="2" align="center">
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td align="center">
                                                                                                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="18" align="center" style="font-size: 12px">
                                                                                                                            微生物发酵技术研究中心
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </tbody>
                                                                                            </table>
                                                                                        </td>
                                                                                        <td width="700" align="center" valign="top">
                                                                                            <table width="150" border="0" cellspacing="0" cellpadding="0">
                                                                                                <tbody>
                                                                                                    <tr>
                                                                                                        <td height="100" align="center">
                                                                                                            <table border="0" cellpadding="0" cellspacing="0" id="newproducts">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="102" align="center">
                                                                                                                            <img height="100" src="images/活动图标/7.jpg" width="120" style="padding: 2px; border: 1px #666666 solid">
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td height="2" align="center">
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td align="center">
                                                                                                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="18" align="center" style="font-size: 12px">
                                                                                                                            微生物研究中心
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </tbody>
                                                                                            </table>
                                                                                        </td>
                                                                                        <td width="700" align="center" valign="top">
                                                                                            <table width="150" border="0" cellspacing="0" cellpadding="0">
                                                                                                <tbody>
                                                                                                    <tr>
                                                                                                        <td height="100" align="center">
                                                                                                            <table border="0" cellpadding="0" cellspacing="0" id="newproducts">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="102" align="center">
                                                                                                                            <img height="100" src="images/活动图标/8.jpg" width="120" style="padding: 2px; border: 1px #666666 solid">
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td height="2" align="center">
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td align="center">
                                                                                                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="18" align="center" style="font-size: 12px">
                                                                                                                            发酵实验平台
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </tbody>
                                                                                            </table>
                                                                                        </td>
                                                                                        <td width="700" align="center" valign="top">
                                                                                            <table width="150" border="0" cellspacing="0" cellpadding="0">
                                                                                                <tbody>
                                                                                                    <tr>
                                                                                                        <td height="100" align="center">
                                                                                                            <table border="0" cellpadding="0" cellspacing="0" id="newproducts">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="102" align="center">
                                                                                                                            <img height="100" src="images/活动图标/9.jpg" width="120" style="padding: 2px; border: 1px #666666 solid">
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td height="2" align="center">
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td align="center">
                                                                                                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="18" align="center" style="font-size: 12px">
                                                                                                                            微生物育种平台
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </tbody>
                                                                                            </table>
                                                                                        </td>
                                                                                        <td width="700" align="center" valign="top">
                                                                                            <table width="150" border="0" cellspacing="0" cellpadding="0">
                                                                                                <tbody>
                                                                                                    <tr>
                                                                                                        <td height="100" align="center">
                                                                                                            <table border="0" cellpadding="0" cellspacing="0" id="newproducts">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="102" align="center">
                                                                                                                            <img height="100" src="images/活动图标/10.jpg" width="77" style="padding: 2px; border: 1px #666666 solid">
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td height="2" align="center">
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td align="center">
                                                                                                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="18" align="center" style="font-size: 12px">
                                                                                                                            生物工程设备
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </tbody>
                                                                                            </table>
                                                                                        </td>
                                                                                        <td width="700" align="center" valign="top">
                                                                                            <table width="150" border="0" cellspacing="0" cellpadding="0">
                                                                                                <tbody>
                                                                                                    <tr>
                                                                                                        <td height="100" align="center">
                                                                                                            <table border="0" cellpadding="0" cellspacing="0" id="newproducts">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="102" align="center">
                                                                                                                            <img height="100" src="images/活动图标/11.jpg" width="77" style="padding: 2px; border: 1px #666666 solid">
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td height="2" align="center">
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td align="center">
                                                                                                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="18" align="center" style="font-size: 12px">
                                                                                                                            工业微生物育种学
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </tbody>
                                                                                            </table>
                                                                                        </td>
                                                                                        <td width="700" align="center" valign="top">
                                                                                            <table width="150" border="0" cellspacing="0" cellpadding="0">
                                                                                                <tbody>
                                                                                                    <tr>
                                                                                                        <td height="100" align="center">
                                                                                                            <table border="0" cellpadding="0" cellspacing="0" id="newproducts">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="102" align="center">
                                                                                                                            <img height="100" src="images/活动图标/12.jpg" width="77" style="padding: 2px; border: 1px #666666 solid">
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td height="2" align="center">
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td align="center">
                                                                                                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="18" align="center" style="font-size: 12px">
                                                                                                                            微生物工程
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </tbody>
                                                                                            </table>
                                                                                        </td>
                                                                                        <td width="700" align="center" valign="top">
                                                                                            <table width="150" border="0" cellspacing="0" cellpadding="0">
                                                                                                <tbody>
                                                                                                    <tr>
                                                                                                        <td height="100" align="center">
                                                                                                            <table border="0" cellpadding="0" cellspacing="0" id="newproducts">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="102" align="center">
                                                                                                                            <img height="100" src="Images/活动图标/13.jpg" width="120" style="padding: 2px; border: 1px #666666 solid">
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td height="2" align="center">
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td align="center">
                                                                                                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="18" align="center" style="font-size: 12px">
                                                                                                                            企业实习
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </tbody>
                                                                                            </table>
                                                                                        </td>
                                                                                        <td width="700" align="center" valign="top">
                                                                                            <table width="150" border="0" cellspacing="0" cellpadding="0">
                                                                                                <tbody>
                                                                                                    <tr>
                                                                                                        <td height="100" align="center">
                                                                                                            <table border="0" cellpadding="0" cellspacing="0" id="newproducts">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="102" align="center">
                                                                                                                            <img height="100" src="images/活动图标/14.jpg" width="120" style="padding: 2px; border: 1px #666666 solid">
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td height="2" align="center">
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td align="center">
                                                                                                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="18" align="center" style="font-size: 12px">
                                                                                                                            企业实践考察
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </tbody>
                                                                                            </table>
                                                                                        </td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </td>
                                                        <td id="deml2" valign="top">
                                                            <table cellspacing="0" cellpadding="0" border="0">
                                                                <tbody>
                                                                    <tr>
                                                                        <td height="130">
                                                                            <table border="0" cellpadding="0" cellspacing="0">
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td height="124">
                                                                                        </td>
                                                                                        <td width="700" align="center" valign="top">
                                                                                            <table width="150" border="0" cellspacing="0" cellpadding="0">
                                                                                                <tbody>
                                                                                                    <tr>
                                                                                                        <td height="100" align="center">
                                                                                                            <table border="0" cellpadding="0" cellspacing="0" id="newproducts">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="102" align="center">
                                                                                                                            <img height="100" src="images/活动图标/1.jpg" width="120" style="padding: 2px; border: 1px #666666 solid">
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td height="2" align="center">
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td align="center">
                                                                                                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="18" align="center" style="font-size: 12px">
                                                                                                                            领导参观工程中心
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </tbody>
                                                                                            </table>
                                                                                        </td>
                                                                                        <td width="700" align="center" valign="top">
                                                                                            <table width="150" border="0" cellspacing="0" cellpadding="0">
                                                                                                <tbody>
                                                                                                    <tr>
                                                                                                        <td height="100" align="center">
                                                                                                            <table border="0" cellpadding="0" cellspacing="0" id="newproducts">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="102" align="center">
                                                                                                                            <img height="100" src="images/活动图标/2.jpg" width="120" style="padding: 2px; border: 1px #666666 solid">
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td height="2" align="center">
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td align="center">
                                                                                                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="18" align="center" style="font-size: 12px">
                                                                                                                            生物学一级博士点
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </tbody>
                                                                                            </table>
                                                                                        </td>
                                                                                        <td width="700" align="center" valign="top">
                                                                                            <table width="150" border="0" cellspacing="0" cellpadding="0">
                                                                                                <tbody>
                                                                                                    <tr>
                                                                                                        <td height="100" align="center">
                                                                                                            <table border="0" cellpadding="0" cellspacing="0" id="newproducts">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="102" align="center">
                                                                                                                            <img height="100" src="images/活动图标/3.jpg" width="120" style="padding: 2px; border: 1px #666666 solid">
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td height="2" align="center">
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td align="center">
                                                                                                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="18" align="center" style="font-size: 12px">
                                                                                                                            轻工技术与工程一级硕士点
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </tbody>
                                                                                            </table>
                                                                                        </td>
                                                                                        <td width="700" align="center" valign="top">
                                                                                            <table width="150" border="0" cellspacing="0" cellpadding="0">
                                                                                                <tbody>
                                                                                                    <tr>
                                                                                                        <td height="100" align="center">
                                                                                                            <table border="0" cellpadding="0" cellspacing="0" id="newproducts">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="102" align="center">
                                                                                                                            <img height="100" src="images/活动图标/4.jpg" width="120" style="padding: 2px; border: 1px #666666 solid">
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td height="2" align="center">
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td align="center">
                                                                                                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="18" align="center" style="font-size: 12px">
                                                                                                                            生物工程专业硕士点
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </tbody>
                                                                                            </table>
                                                                                        </td>
                                                                                        <td width="700" align="center" valign="top">
                                                                                            <table width="150" border="0" cellspacing="0" cellpadding="0">
                                                                                                <tbody>
                                                                                                    <tr>
                                                                                                        <td height="100" align="center">
                                                                                                            <table border="0" cellpadding="0" cellspacing="0" id="newproducts">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="102" align="center">
                                                                                                                            <img height="100" src="images/活动图标/5.jpg" width="120" style="padding: 2px; border: 1px #666666 solid">
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td height="2" align="center">
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td align="center">
                                                                                                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="18" align="center" style="font-size: 12px">
                                                                                                                            牌匾
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </tbody>
                                                                                            </table>
                                                                                        </td>
                                                                                        <td width="700" align="center" valign="top">
                                                                                            <table width="150" border="0" cellspacing="0" cellpadding="0">
                                                                                                <tbody>
                                                                                                    <tr>
                                                                                                        <td height="100" align="center">
                                                                                                            <table border="0" cellpadding="0" cellspacing="0" id="newproducts">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="102" align="center">
                                                                                                                            <img height="100" src="images/活动图标/6.jpg" width="120" style="padding: 2px; border: 1px #666666 solid">
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td height="2" align="center">
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td align="center">
                                                                                                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="18" align="center" style="font-size: 12px">
                                                                                                                            微生物发酵技术研究中心
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </tbody>
                                                                                            </table>
                                                                                        </td>
                                                                                        <td width="700" align="center" valign="top">
                                                                                            <table width="150" border="0" cellspacing="0" cellpadding="0">
                                                                                                <tbody>
                                                                                                    <tr>
                                                                                                        <td height="100" align="center">
                                                                                                            <table border="0" cellpadding="0" cellspacing="0" id="newproducts">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="102" align="center">
                                                                                                                            <img height="100" src="images/活动图标/7.jpg" width="120" style="padding: 2px; border: 1px #666666 solid">
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td height="2" align="center">
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td align="center">
                                                                                                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="18" align="center" style="font-size: 12px">
                                                                                                                            微生物研究中心
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </tbody>
                                                                                            </table>
                                                                                        </td>
                                                                                        <td width="700" align="center" valign="top">
                                                                                            <table width="150" border="0" cellspacing="0" cellpadding="0">
                                                                                                <tbody>
                                                                                                    <tr>
                                                                                                        <td height="100" align="center">
                                                                                                            <table border="0" cellpadding="0" cellspacing="0" id="newproducts">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="102" align="center">
                                                                                                                            <img height="100" src="images/活动图标/8.jpg" width="120" style="padding: 2px; border: 1px #666666 solid">
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td height="2" align="center">
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td align="center">
                                                                                                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="18" align="center" style="font-size: 12px">
                                                                                                                            平台
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </tbody>
                                                                                            </table>
                                                                                        </td>
                                                                                        <td width="700" align="center" valign="top">
                                                                                            <table width="150" border="0" cellspacing="0" cellpadding="0">
                                                                                                <tbody>
                                                                                                    <tr>
                                                                                                        <td height="100" align="center">
                                                                                                            <table border="0" cellpadding="0" cellspacing="0" id="newproducts">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="102" align="center">
                                                                                                                            <img height="100" src="images/活动图标/9.jpg" width="120" style="padding: 2px; border: 1px #666666 solid">
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td height="2" align="center">
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td align="center">
                                                                                                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="18" align="center" style="font-size: 12px">
                                                                                                                            平台
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </tbody>
                                                                                            </table>
                                                                                        </td>
                                                                                        <td width="700" align="center" valign="top">
                                                                                            <table width="150" border="0" cellspacing="0" cellpadding="0">
                                                                                                <tbody>
                                                                                                    <tr>
                                                                                                        <td height="100" align="center">
                                                                                                            <table border="0" cellpadding="0" cellspacing="0" id="newproducts">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="102" align="center">
                                                                                                                            <img height="100" src="images/活动图标/10.jpg" width="120" style="padding: 2px; border: 1px #666666 solid">
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td height="2" align="center">
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td align="center">
                                                                                                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="18" align="center" style="font-size: 12px">
                                                                                                                            教材
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </tbody>
                                                                                            </table>
                                                                                        </td>
                                                                                        <td width="700" align="center" valign="top">
                                                                                            <table width="150" border="0" cellspacing="0" cellpadding="0">
                                                                                                <tbody>
                                                                                                    <tr>
                                                                                                        <td height="100" align="center">
                                                                                                            <table border="0" cellpadding="0" cellspacing="0" id="newproducts">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="102" align="center">
                                                                                                                            <img height="100" src="images/活动图标/11.jpg" width="120" style="padding: 2px; border: 1px #666666 solid">
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td height="2" align="center">
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td align="center">
                                                                                                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="18" align="center" style="font-size: 12px">
                                                                                                                            教材
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </tbody>
                                                                                            </table>
                                                                                        </td>
                                                                                        <td width="700" align="center" valign="top">
                                                                                            <table width="150" border="0" cellspacing="0" cellpadding="0">
                                                                                                <tbody>
                                                                                                    <tr>
                                                                                                        <td height="100" align="center">
                                                                                                            <table border="0" cellpadding="0" cellspacing="0" id="newproducts">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="102" align="center">
                                                                                                                            <img height="100" src="images/活动图标/12.jpg" width="120" style="padding: 2px; border: 1px #666666 solid">
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td height="2" align="center">
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td align="center">
                                                                                                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="18" align="center" style="font-size: 12px">
                                                                                                                            教材
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </tbody>
                                                                                            </table>
                                                                                        </td>
                                                                                        <td width="700" align="center" valign="top">
                                                                                            <table width="150" border="0" cellspacing="0" cellpadding="0">
                                                                                                <tbody>
                                                                                                    <tr>
                                                                                                        <td height="100" align="center">
                                                                                                            <table border="0" cellpadding="0" cellspacing="0" id="newproducts">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="102" align="center">
                                                                                                                            <img height="100" src="Images/活动图标/13.jpg" width="120" style="padding: 2px; border: 1px #666666 solid">
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td height="2" align="center">
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td align="center">
                                                                                                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td height="18" align="center" style="font-size: 12px">
                                                                                                                            合作企业
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </tbody>
                                                                                            </table>
                                                                                        </td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <script>
                                            var speed20 = 30
                                            deml2.innerHTML = deml1.innerHTML
                                            function Marquee20() {
                                                if (deml2.offsetWidth - deml.scrollLeft <= 0)
                                                    deml.scrollLeft -= deml1.offsetWidth
                                                else {
                                                    deml.scrollLeft++
                                                }
                                            }
                                            var MyMar20 = setInterval(Marquee20, speed20)
                                            deml.onmouseover = function () { clearInterval(MyMar20) }
                                            deml.onmouseout = function () { MyMar20 = setInterval(Marquee20, speed20) } 
                                        </script>
                                    </td>
                                    <td width="10">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</asp:Content>
