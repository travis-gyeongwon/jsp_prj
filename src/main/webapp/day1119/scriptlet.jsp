<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type= "text/javascript">
function result( num, num2, num3){
   alert( num + " x " + num2 + "= "+(num*num2)+" / "+num3 );
}
</script>
</head>
<body>
<% //scriptlet 
String name="남지우";
%>
안녕하세요?<span><%=name %></span>님
<ul>
<%
for(int i=0 ; i < 10 ; i++ ){
%>
<li><%= i %></li>
<% 
}
%>
</ul>
<!-- 테이블에 구구단 2단을 출력 -->
<table border = 1>
<tr>
<%
for(int i=1 ; i < 10 ; i++ ){
%>
<td onclick="result(2, <%=i %>, <%= 2*i %>)">2 x <%= i %></td>
<%
}
%>
</tr>
</table>
<div>
<%for(int i=1 ; i < 7 ; i++ ){ %>
<h<%=i %>>남지우</h<%=i  %>>
<%}//end for %>
</div>

<div>

<table border="1">
<%
for (int dan = 2; dan <= 9; dan++) {
%>
   <tr>
<%
for (int i = 1; i <= 9; i++) {
%>
<td style="padding: 5px;">
<%= dan %> x <%= i %> = <%= dan * i %>
</td>
<%}//end for%>
</tr>
<%}//end for%>
</table>


</div>


</body>
</html>