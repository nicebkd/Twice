
<%@include file="../member/modal/login-modal.jsp" %>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="navbar-header">
      <a class="navbar-brand" href="${path }">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">Page 1</a></li>
      <li><a href="#">Page 2</a></li>
      <li><a href="#">Page 3</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
        <li><a href="${path}/member/joinView.do"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="#" data-toggle="modal" data-target="#login-modal"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
</nav>