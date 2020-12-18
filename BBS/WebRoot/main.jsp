<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
  <head>
    <title>BBS主页面</title>
   
  </head>
  <body >
	<div id="container" style="width:1800px; height:600px; margin:0;auto;margin-left:300px;">
		<div id="header" style="float:center;width:600px; height:185px;positon:absolute;"><img src="bbs.jpg"></img></div>
		<div class="nav" style="width:1020px; height:50px; line-height:50px; margin:0 ;auto; clear:both; background:#ade;"><iframe width=1000px  height=40px src="menu.jsp"> </iframe></div>
		<div class="left" style="margin:0px;float:left;wifth:180px;height:600px;background:grey;"> <iframe width=180px  height=600px src="left_main.jsp"> </iframe></div>
		<div class="right" style="margin:0px;float:left;wifth:1620px;height:600px;clear:right;"><iframe width=830px  height=600px src="right_main.jsp"></iframe></div>
	</div>
	
  </body>
 </html>