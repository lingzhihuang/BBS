<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'lttitle.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
   
  <body  bgcolor=#ade >
&nbsp;&nbsp;&nbsp;&nbsp;人工智能技术的飞速发展正在深刻改变人类经济、社会和生活的方方面面，也对教育提出了巨大挑战。如何培养专业人才应对人工智能的迅猛发展和激烈竞争，
如何利用智能技术赋能教育教学，如何通过教育让学生为全新的智能时代做好准备，是教育决策者、研究者和实践者面临的崭新课题。

<br><br>&nbsp;&nbsp;&nbsp;&nbsp;为了对这些问题展开研讨，2019年4月17日，中国教育科学研究院国际与比较教育研究所承办的“2019中国教育科学论坛”第四主题论坛聚焦于“智能时代的教育”，
邀请了人工智能、教育技术、教育理论等不同背景的专家学者同台对话，进行主题报告和交流研讨，来自全国各大高校、教科院所、科创企业和中小学校的100多名代
表参加了该论坛。
 <br>
 <br>
  <br>&nbsp;&nbsp;&nbsp;&nbsp;主旨报告环节由中国教科院国际与比较教育研究所秦琳博士主持。联想集团副总裁、联想研究院人工智能实验室负责人徐飞玉博士首先进行分享，
  她以《人工智能发展的机遇和挑战》为题，详细讲解了人工智能技术的含义及其影响，分析了当前国际和中国人工智能技术发展的现状及前景。她指出，
  中国具有世界最大的AI潜力市场，吸引了全球最多的AI资本，未来，人工智能技术对于我国经济的贡献和影响要远超其他国家和地区。而就人工智能的人才竞争而言，
  我国人工智能研究的质量和国际影响力还有待提升，在相关产业必须提前布局人才培养；在基础教育阶段，除了设立人工智能课程之外，还应充分理解和运用人
  工智能技术促进和帮助孩子的成长。最后，她也结合联想的研发案例介绍了当前人工智能技术应用的前沿进展。
  <br>
  <br>
  <br>&nbsp;&nbsp;&nbsp;&nbsp;北京师范大学教育技术学院的李玉顺副教授以《智能教育发展的当下趋势》为题进行报告。他首先从技术演化的角度，介绍了人工智能的历史发展和当前的研究方向；
  同时结合案例介绍了人工智能技术在教育中的前沿应用。李教授特别指出，当前国家各个层面都在努力推动人工智能教育的落地，但人工智能的知识体系高深复杂，
  在中小学推进人工智能教育，首要任务是结合各学段学生的认知特点，对课程目标与内容进行合理规划。小学阶段应当以计算思维培养为重点
初中阶段要以高级计算思维培养为重点，在高中阶段以专题性人工智能技术理解为重点。
<br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;上海市电教馆张治馆长以《智能时代学校教育的13个场景》
为题进行分享。他立足于学校这一教育的核心场域，从学校形态的历史演进出发，突出学校所具有的典型时代特征。同时，
他指出智能技术融入教育的过程将从作为概念和教育内容的初级阶段，发展到作为工具服务于传统教育模式的第二阶段，再到作为思维方式嵌入学习系统、
促进学习方式变革的第三阶段。最后，他描述了“每个学生都有一个数字画像”“每位教师都有一个人工智能助手”“每一门课程都有知识图谱”等智能时代学校教育的13个场景，
全景式地展望了未来学校变革的方向。
<br><br> &nbsp;&nbsp;&nbsp;&nbsp; 最后一位主旨报告人、北京大学教育学院汪琼教授的发言题目是《情境化：跨越技术与应用的鸿沟》。
她聚焦于人工智能技术在教育实践中的落地问题，强调智能技术成功应用于教育的最关键因素是“情境化”。她指出，人工智能技术在教育中的应用场景需要教育人士去发现，
去规划，去设计，并在应用中迭代发展；教育与人工智能的深度融合需要教育专家与人工智能专家合作；未来人工智能教育产品将越来越多是联合设计的成果。<br><br>
<form action="ly.jsp" method="post">
		<table  align="center" border="1"  bgcolor=#ade  width=1000 height=200>
		<tr>请写下你的评论：
		</tr>
			<tr >
		 		<td><textarea rows="5" cols="80" value="发表你的评论"></textarea></td>
				
			</tr>
			
		
			<tr align="center">
				<td colspan="2" ><input type="submit" name=register value="提交" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="reset" name=name value="取消" ></td>
			</tr>
		</table>
		</form>	
</body>
</html>
