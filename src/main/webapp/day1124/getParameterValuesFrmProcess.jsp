<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//POST방식일 때의 한글 처리. ( GET방식에는 영향을 주지 않는다. )
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
<strong><%= request.getMethod() %></strong>방식 요청.<br>
<%
//web parameter의 이름이 같다면 배열로 처리된다.
String[] lang=request.getParameterValues("language");
//Form Control이 하나 일지라도 getParameterValues로 받을 수 있다.
String[] license=request.getParameterValues("license");

%>
<strong>선택 언어</strong>
<%
//try{
if( lang != null) {
for(int i=0; i<lang.length; i++){
	%>
	<%= lang[i] %> 
	<%
}//end for
} else{
//} catch(NullPointerException npe) {
%>관심 언어가 없군요 에구구궁 쯧쯧<%
//}//end catch
}//end else
%>
<br>
<strong>자격증</strong>
<%
//자격증이 없습니다. : 정처기, SQLD, 리눅스마스터
if( license.length == 1 && license[0].trim().isEmpty()) {
%> 자격증이 없으면 어떡하니 에구구궁 쯧쯔르쯧쯔 <%
}//end if
for(int i=0; i<license.length; i++) {
%>
<%= license[i] %>
<%
}//end for
%>

</div>
</body>
</html>

