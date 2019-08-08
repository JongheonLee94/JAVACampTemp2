<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jc"%><%!MemberVO vo = null;%>
<%
	vo = (MemberVO) session.getAttribute("member");
	if (vo != null)
		System.out.println(vo.getEmail());

	pageContext.setAttribute("vo", vo);
%>
  <header>
    <nav class="navbar" style="border-width: 0px 0px 2px; border-color: rgb(149, 99, 0); border-style: solid;">
      <div class="container-fluid" style="margin-top: 10px; margin-bottom:15px; color: #0f0f0f;">
        <div class="row">
        </div>
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false" style="">
            <span class="sr-only"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
          </button>
          <div>
            <div>
            </div>
            <a class="navbar-brand" href="/JSP/index.jsp" style="margin-left:115px; padding-right:0;margin-top: 5;">����<img style="float:right;margin-top: -14px;"src="/JSP/images/logo2.png" width="35px"></a>
          </div>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav">
            <li><a href="/JSP/club/clubBoard.jsp" style="">������<span class="sr-only"></span></a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li class="dropdown" style="margin-right: 85px;"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="padding:0px">
                <div ><span class="caret"></span>
                  <img src="/JSP/images/icon_dolharubang.png" style="width:55px;padding: 0px; ">
                </div>
              </a>
              <ul  class="dropdown-menu" style="">
              <jc:choose>
							<jc:when test="${vo==null}">
              
              
                <li><a href="/JSP/login/login.jsp">�α���</a></li>
                <li><a href="/JSP/join/join.jsp">ȸ������</a></li>
            
              </jc:when>
              <jc:when test="${vo.getEmail()!=null}">
              
                <li><a href="/JSP/mypage/mypageMain.jsp">����������</a></li>
                <li><a href="/JSP/logout.do">�α׾ƿ�</a></li>
              
              
              			</jc:when>
              			</jc:choose>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>




