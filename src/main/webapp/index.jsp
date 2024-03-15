<%--
    Document   : index.jsp
    Created on : Feb 26, 2024, 9:04:22 PM
    Author     : duhai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%
    request.setAttribute("currentPage", "home");
%>

<!doctype html>
<html lang="en" class="h-100">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">

    <title>Easy Home Rental Management System</title>


    <!-- Bootstrap core CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
          crossorigin="anonymous">

    <meta name="theme-color" content="#7952b3">


    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>


    <!-- Custom styles for this template -->
    <link href="css/sticky-footer-navbar.css" rel="stylesheet">

</head>
<body class="d-flex flex-column h-100">

<%-- Include header --%>
<jsp:include page="includes/header.jsp"/>

<!-- Begin page content -->
<main class="flex-shrink-0">

    <div class="container">
        <!-- Display flash message if available -->
        <%
            String flashMessage = (String) request.getAttribute("flashMessage");
            if (flashMessage != null && !flashMessage.isEmpty()) {
        %>
        <div class="alert alert-info" role="alert">
            <%= flashMessage %>
        </div>


        <%
            }
        %>
        <h1 class="mt-5">Sticky footer with fixed navbar</h1>
        <p class="lead">Pin a footer to the bottom of the viewport in desktop browsers with this custom HTML and CSS. A fixed navbar has been added with <code class="small">padding-top: 60px;</code> on the <code class="small">main &gt; .container</code>.</p>
        <p>Back to <a href="https://google.com">the default sticky footer</a> minus the navbar.</p>
    </div>
</main>

<%-- Include footer --%>
<jsp:include page="includes/footer.jsp"/>
</body>
</html>