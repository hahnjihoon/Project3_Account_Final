<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script type="text/javascript" src="${ pageContext.servletContext.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function(){
	showDiv();
	
	$("input[name=item]").on("change", function(){
		showDiv();
	});
});

function showDiv(){
	if($("input[name=item]").eq(0).is(":checked")){
		$("#titleDiv").css("display", "block");
		$("#writerDiv").css("display", "none");
		$("#dateDiv").css("display", "none");
	}
	
	if($("input[name=item]").eq(1).is(":checked")){
		$("#titleDiv").css("display", "none");
		$("#writerDiv").css("display", "block");
		$("#dateDiv").css("display", "none");
	}
	
	if($("input[name=item]").eq(2).is(":checked")){
		$("#titleDiv").css("display", "none");
		$("#writerDiv").css("display", "none");
		$("#dateDiv").css("display", "block");
	}
}


function movePage(){
	location.href="loginPage.do";
}
</script>
<!-- Custom fonts for this template-->
    <link href="${ pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${ pageContext.request.contextPath}/resources/css/sb-admin-2.min.css" rel="stylesheet">
	
</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">
    	
    	<!-- Sidebar -->
		<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="main.do">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">Smart Account <sup></sup></div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="main.do">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Providing Function
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <!-- 로그인안한경우 보여질 기본메뉴 -->
            <c:if test="${ empty loginMember }">
	            <li class="nav-item">
	                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
	                    <i class="fas fa-fw fa-cog"></i>
	                    <span>공지 및 게시판</span>
	                </a>
	                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
	                    <div class="bg-white py-2 collapse-inner rounded">
	                        <h6 class="collapse-header"></h6>
	                        <a class="collapse-item" href="/Accounts/nlist.do">공지사항</a>
	                        <a class="collapse-item" href="/Accounts/blist.do?page=1">게시판</a>
	                    </div>
	                </div>
	            </li>
            </c:if>
            <!-- 로그인한경우 : 관리자 -->
            <c:if test="${ !empty loginMember and loginMember.admin eq 'Y'}" >
            	<li class="nav-item">
	                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
	                    <i class="fas fa-fw fa-cog"></i>
	                    <span>공지 및 게시판</span>
	                </a>
	                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
	                    <div class="bg-white py-2 collapse-inner rounded">
	                        <h6 class="collapse-header"></h6>
	                        <a class="collapse-item" href="/Accounts/nlist.do">공지사항</a>
	                        <a class="collapse-item" href="/Accounts/blist.do?page=1">게시판</a>
	                    </div>
	                </div>
	            </li>
            </c:if>
            <!-- 로그인한경우 : 일반회원 -->
            <c:if test="${ !empty loginMember and loginMember.admin ne 'Y' }">
            	<li class="nav-item">
	                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
	                    <i class="fas fa-fw fa-cog"></i>
	                    <span>공지 및 게시판</span>
	                </a>
	                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
	                    <div class="bg-white py-2 collapse-inner rounded">
	                        <h6 class="collapse-header"></h6>
	                        <a class="collapse-item" href="/Accounts/nlist.do">공지사항</a>
	                        <a class="collapse-item" href="/Accounts/blist.do?page=1">게시판</a>
	                    </div>
	                </div>
	            </li>
			</c:if>
			
            <!-- Nav Item - Pages Collapse Menu -->
            <!-- 로그인안한경우 -->
            <c:if test="${ empty loginMember }">
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>로그인 및 회원가입</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header"></h6>
                        <a class="collapse-item" href="loginPage.do">로그인</a>
                        <a class="collapse-item" href="enrollPage.do">회원가입</a>
                        
                    </div>
                </div>
            </li>
			</c:if>
			
            <!-- Nav Item - Charts -->
            <c:if test="${ empty loginMember }">
            <li class="nav-item">
                <a class="nav-link" href="loginPage.do">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>영수증</span></a>
            </li>
			</c:if>
			
         
         <!-- 로그인:관리자 -->
         <c:if test="${ !empty loginMember and loginMember.admin eq 'Y'}" >
            <li class="nav-item">
                   <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo33" aria-expanded="true" aria-controls="collapseTwo33">
                       <i class="fas fa-fw fa-cog"></i>
                       <span>영수증</span>
                   </a>
                   <div id="collapseTwo33" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                       <div class="bg-white py-2 collapse-inner rounded">
                           <h6 class="collapse-header"></h6>
                           <a class="collapse-item" href="clist.do">영수증내역</a>
                           <a class="collapse-item" href="cupload.do">영수증등록</a>
                       </div>
                   </div>
               </li>
         </c:if>
         
         <!-- 로그인:일반회원 -->
            <c:if test="${ !empty loginMember and loginMember.admin ne 'Y' }">
               <li class="nav-item">
                   <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo33" aria-expanded="true" aria-controls="collapseTwo33">
                       <i class="fas fa-fw fa-cog"></i>
                       <span>영수증</span>
                   </a>
                   <div id="collapseTwo33" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                       <div class="bg-white py-2 collapse-inner rounded">
                           <h6 class="collapse-header"></h6>
                           <a class="collapse-item" href="clist.do">영수증내역</a>
                           <a class="collapse-item" href="cupload.do">영수증등록</a>
                       </div>
                   </div>
               </li>
               
         </c:if>
            <!-- Nav Item - Tables -->
            <!-- 로그인없음 -->
            <c:if test="${ empty loginMember }">
            <li class="nav-item">
                <a class="nav-link" href="loginPage.do">
                    <i class="fas fa-fw fa-table"></i>
                    <span>가계부</span></a>
            </li>
			</c:if>
			
			<!-- 로그인:관리자 -->
			<c:if test="${ !empty loginMember and loginMember.admin eq 'Y'}" >
			            
               <li class="nav-item">
                   <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo332" aria-expanded="true" aria-controls="collapseTwo33">
                       <i class="fas fa-fw fa-table"></i>
                       <span>가계부</span>
                   </a>
                   <div id="collapseTwo332" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                       <div class="bg-white py-2 collapse-inner rounded">
                           <h6 class="collapse-header"></h6>
                           <a class="collapse-item" href="calendar.do">달력보기</a>
                           <a class="collapse-item" href="accountbook.do">소비패턴분석</a>
                       </div>
                   </div>
               </li>
            </c:if>
            
            <!-- 로그인:일반회원 -->
            <c:if test="${ !empty loginMember and loginMember.admin ne 'Y' }">
            <li class="nav-item">
                   <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo332" aria-expanded="true" aria-controls="collapseTwo33">
                       <i class="fas fa-fw fa-table"></i>
                       <span>가계부</span>
                   </a>
                   <div id="collapseTwo332" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                       <div class="bg-white py-2 collapse-inner rounded">
                           <h6 class="collapse-header"></h6>
                           <a class="collapse-item" href="calendar.do">달력보기</a>
                           <a class="collapse-item" href="accountbook.do">소비패턴분석</a>
                       </div>
                   </div>
               </li>
            </c:if>
			
            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

            <!-- Sidebar Message -->
            <div class="sidebar-card d-none d-lg-flex">
                <img class="sidebar-card-illustration mb-2" src="/Accounts/resources/img/undraw_rocket.svg" alt="...">
                <p class="text-center mb-2"><strong>SB Admin Pro</strong> is packed with premium features, components, and more!</p>
                <a class="btn btn-success btn-sm" href="https://startbootstrap.com/theme/sb-admin-pro">Upgrade to Pro!</a>
            </div>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Search -->
                    <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            
                            <div class="input-group-append">
                                
                            </div>
                        </div>
                    </form>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                        <!-- Nav Item - Alerts -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                
                            </a>
                            <!-- Dropdown - Alerts -->
                            
                        </li>

                        <!-- Nav Item - Messages -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                
                            </a>
                            <!-- Dropdown - Messages -->
                            
                        </li>

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                        	<c:if test="${ empty loginMember }" >
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" onclick="movePage();"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Login</span>
                                
                            </a>
                            </c:if>
                            <!-- 로그인한경우 : 관리자 -->
							<c:if test="${ !empty loginMember and loginMember.admin eq 'Y' }">
							<a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">my menu</span>
                                
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <c:url var="callMyInfo" value="myinfo.do">
                                	<c:param name="userid" value="${ loginMember.userid }" />
                                </c:url>
                                <a class="dropdown-item" href="${ callMyInfo }">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Profile
                                </a>
                                <a class="dropdown-item" href="${ pageContext.servletContext.contextPath }/mlist.do">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Member Management
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Board Management
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                	
                                    <i role="button" onclick="javascript:href='logout.do';" class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                    
                                    
                                </a>
                            </div>
                            </c:if>
                            <!-- 로그인한경우 : 일반회원 -->
							<c:if test="${ !empty loginMember and loginMember.admin ne 'Y' }">
							<a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">my menu</span>
                                
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <c:url var="callMyInfo2" value="myinfo.do">
                                	<c:param name="userid" value="${ loginMember.userid }" />
                                </c:url>
                                <a class="dropdown-item" href="${ callMyInfo2 }">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Profile
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Settings
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Activity Log
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                	
                                    <i role="button" onclick="javascript:href='logout.do';" class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                    
                                    
                                </a>
                            </div>
                            </c:if>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

<hr>
<h1 align="center">공지 사항</h1>

<!-- 로그인한 회원이 관리자인 경우 공지사항 등록 버튼 보이게함 -->
<center>
<c:if test="${ loginMember.admin eq 'Y' }">
	<!-- jsp에서jsp로 이동은 반드시 컨트롤러로 이동해야됨 -->
	<%-- <button onclick="javascript:location.href='${ pageContext.servletContext.contextPath }/WEB-INF/views/notice/noticeWriterForm.jsp';">공지글등록</button> --%>
	<button onclick="javascript:location.href='movewrite.do';">새공지글등록</button>
</c:if>
</center>
<!-- 검색 항목 -->
<center>
<div>
	<h2>검색할 항목을 선택하시오</h2>
	<input type="radio" name="item" value="title" checked> 제목 &nbsp; &nbsp; &nbsp;
	<input type="radio" name="item" value="writer"> 작성자 &nbsp; &nbsp; &nbsp;
	<input type="radio" name="item" value="date"> 날짜 
</div>
<div id="titleDiv">
	<form action="nsearchTitle.do" method="post">
		<label>검색할 제목을 입력하시오 : <input type="search" name="keyword"></label>
		<input type="submit" value="검색">
	</form>
</div>
<div id="writerDiv">
	<form action="nsearchWriter.do" method="post">
		<label>검색할 작성자아이디를 입력하시오 : <input type="search" name="keyword"></label>
		<input type="submit" value="검색">
	</form>
</div>
<div id="dateDiv">
	<form action="nsearchDate.do" method="post">
		<label>검색할 등록날짜를 입력하시오 : 
		<input type="date" name="begin"> ~ <input type="date" name="end"></label>
		<input type="submit" value="검색">
	</form>
</div>
</center>

<!-- 목록 출력 -->
<br>
<center>
	<button onclick="javascript:location.href='nlist.do';">목록</button>
</center>
<br>
<table align="center" width="500" border="1" cellspacing="0" cellpadding="1">
	<tr><th>번호</th><th>제목</th><th>작성자</th><th>첨부파일</th><th>날짜</th></tr>
	<c:forEach items="${ requestScope.list }" var="n">
		<tr align="center">
			<td>${ n.noticeno }</td>
			<!-- 공지제목클릭시 상세보기로 넘어가게처리 -->
			<c:url var="ndt" value="/ndetail.do">
				<c:param name="noticeno" value="${ n.noticeno }" />
			</c:url>
			<td><a href="${ ndt }">${ n.noticetitle }</a></td>
			<td>${ n.noticewriter }</td>
			<td>
				<c:if test="${ !empty n.original_filepath }">◎</c:if>
				<c:if test="${ empty n.original_filepath }">&nbsp;</c:if>
			</td>
			<td><fmt:formatDate value="${ n.noticedate }" pattern="yyyy-MM-dd" /></td>
			
		</tr>
	</c:forEach>
</table>



                </div>
                <!-- /.container-fluid -->
            
            </div>
            <!-- End of Main Content -->

            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a role="button" class="btn btn-primary" onclick="javascript:location.href='logout.do';">Logout</a>
                    
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="${ pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
    <script src="${ pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="${ pageContext.request.contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="${ pageContext.request.contextPath}/resources/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="${ pageContext.request.contextPath}/resources/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="${ pageContext.request.contextPath}/resources/js/demo/chart-area-demo.js"></script>
    <script src="${ pageContext.request.contextPath}/resources/js/demo/chart-area-demo1.js"></script>
    <script src="${ pageContext.request.contextPath}/resources/js/demo/chart-pie-demo.js"></script>

<%-- <br>
<br>
<br>
<table align="center">
<td>
<a href="${ pageContext.servletContext.contextPath }/main.do">HOME</a>
</td>
</table> --%>
</body>
</html>