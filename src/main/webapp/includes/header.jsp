<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%--
    Document   : header.jsp
    Created on : Feb 26, 2024, 9:06:13 PM
    Author     : duhai
--%>

<header>
  <!-- Fixed navbar -->
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Easy Home</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav me-auto mb-2 mb-md-0">
          <li class="nav-item">
            <a class="nav-link" href="index.jsp">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="about.jsp">About</a>
          </li>
        </ul>

        <%--Check if the user is logged--%>>
        <c:if test="${not empty sessionScope.user}">

          <span class="navbar-text me-auto">
            Hello, ${sessionScope.user}
          </span>

          <form class="d-flex">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Search</button>
          </form>


          <form action="logout" method="post" class="nav-link">
            <button type="submit" class="btn btn-outline-danger">Logout</button>
          </form>

        </c:if>

        <%--Check if the user is not logged in --%>
        <c:if test="${empty sessionScope.user}">
          <form class="d-flex">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Search</button>
          </form>

          <a href="login.jsp" class="btn btn-outline-primary ms-2">Login</a>
        </c:if>
        
      </div>
    </div>
  </nav>
</header>
