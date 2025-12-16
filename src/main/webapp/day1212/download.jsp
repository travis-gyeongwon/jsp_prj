<%@page import="java.io.File"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="application/octet-stream"
    pageEncoding="UTF-8"%>
<%
//응답 헤더를 변경( download.jsp에서 사용자가 선택한 파일명이 응답되도록 변경)
String fileName=request.getParameter("fileName");
String downFileName=fileName;
//한글은 URL형식으로 encoding해야한다.
if(downFileName != null){
	downFileName=URLEncoder.encode(downFileName,"UTF-8");
}//end if
response.setHeader("Content-Disposition", "attachement;fileName= " + downFileName);

//다운로드할 파일의 정보를 얻기 위해서 File 객체를 생성.
File file
	=new File("C:/dev/workspace/jsp_prj/src/main/webapp/upload/"+fileName);


%>
