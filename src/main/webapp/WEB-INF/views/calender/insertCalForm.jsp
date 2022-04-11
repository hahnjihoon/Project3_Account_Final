<%@page import="java.util.Calendar" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	int year=Integer.parseInt(request.getParameter("year"));
	int month=Integer.parseInt(request.getParameter("month"));
	int date=Integer.parseInt(request.getParameter("date"));
	
	//현재시간
	Calendar cal = Calendar.getInstance();
	int hour = cal.get(Calendar.HOUR_OF_DAY);
	int min = cal.get(Calendar.MINUTE);
%>
<script type="text/javascript">
	function calendar(){
		location.href="calendar.do?year=<%=year%>&month=<%=month%>&date=<%=date%>";
	}
</script>
</head>
<body>


<h1 align="center">합계추가</h1>
<form action="insertCalBoard.do" method="post">
	<table border="1" align="center">
		<tr>
			<th>작성자</th>
			<td><input type="text" name="id" value="${ loginMember.userid }" readonly /></td>
		</tr>
		<tr>
			<th>일시</th>
			<td>
				<select name="year">
					<%
						for(int i=year-5;i<year+5;i++){
							%>
							<option <%=year==i?"selected":""%> value="<%=i%>"><%=i%></option>
							
							<%							
						}
					%>
					
				</select>년
				<select name="month">
					<%
						for(int i=1;i<=12;i++){
							%>
							<option <%=month==i?"selected":""%> value="<%=i%>"><%=i%></option>
							
							<%							
						}
					%>
				</select>월
				<select name="date">
					<%
						for(int i=1;i<=31;i++){
							%>
							<option <%=date==i?"selected":""%> value="<%=i%>"><%=i%></option>
							
							<%							
						}
					%>
				</select>일
				<select name="hour">
					<%
						for(int i=0;i<24;i++){
							%>
							<option <%=hour==i?"selected":""%> value="<%=i%>"><%=i%></option>
							
							<%							
						}
					%>
				</select>시
				<select name="min">
					<%
						for(int i=0;i<60;i++){
							%>
							<option <%=min==i?"selected":""%> value="<%=i%>"><%=i%></option>
							
							<%							
						}
					%>
				</select>분
			</td>
		</tr>
		<tr>
			<th>상호명</th>
			<td><input type="text" name="title" /></td>
		</tr>
		<tr>
			<th>합계</th>
			<td><textarea rows="10" cals="60" name="content"></textarea></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="작성완료" />
				<input type="button" value="돌아가기" onclick="calendar()" />
			</td>
		</tr>
	</table>
</form>
</body>
</html>