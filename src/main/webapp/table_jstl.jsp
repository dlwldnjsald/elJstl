<%@ page language="java" 
		contentType="text/html; charset=UTF-8"
    	pageEncoding="UTF-8"%>
    	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    	
<%-- Test URL
http://localhost:8080/elJstl/table.jsp?r=5&c=3
 --%>
 
<%--
<%
	String row = request.getParameter( "r" );
	String col = request.getParameter( "c" );
	
	int nRow;
	if( row == null ) { //r 파라미터가 전달되지 않은 경우
		nRow = 3;		//기본값
	} else {			//r 파라미터가 전달되면 
		nRow = Integer.parseInt( row ); //r파라미터 정수형으로 캐스팅
	}
	
	int nCol;
	if( col == null ) {
		nCol = 3;      //기본값
	} else {
		nCol = Integer.parseInt( col );
	}	
%>
 --%> 
 
 <!--  파라미터 r 체크 
 		비어있으면 기본값 3 설정,
 		비어있지 않으면 r파라미터를 행수로 지정
  -->
  <c:choose>
  	
	  	<c:when test="${empty param.r }"> 
	  		<c:set var="nRow" value="3" />
	  	</c:when>
	  	
	  	<c:otherwise>
	  		<c:set var="nRow" value="${param.r }" />
	  	</c:otherwise>
 
  </c:choose>
  
   <!--  파라미터 c 체크 
 		비어있으면 기본값 3 설정,
 		비어있지 않으면 r파라미터를 열수로 지정
  --> 	
  <c:choose>
  
	  	<c:when test="${empty param.c }">
	  		<c:set var="nCol" value="3" />
	  	</c:when>
	  	
	  	<c:otherwise>
	  		<c:set var="nCol" value="${param.c }" />
	  	</c:otherwise>
  	
  </c:choose>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border='1px' cellspacing='0' cellpadding='10px'>
		
		<%--
			<%
			for(int i = 0 ; i < nRow; i++ ) {	//행루프
			%>
		--%> 
		
		<c:forEach begin="0" end="${nRow -1 }" var="row">
		
			<tr>
				<%--
					<%
					for( int j = 0; j < nCol; j++ ) { //열루프
					%>
				--%>
				<c:forEach begin="0" end="${nCol -1 }" var="col">
					<td>cell(${row }, ${col })</td>
					<%--
						<%
						}
						%>
					--%>
				</c:forEach>
			</tr>
			<%--
				<%
				}
				%>
			--%> 
		</c:forEach>	
		
	</table>
</body>
</html>