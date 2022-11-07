<%@ page language="java" isELIgnored="false"%>
<%@ page import="com.bootcamp.webshoppe.bean.LoginFormBean" %>
<%
LoginFormBean loginFormBean = (LoginFormBean) request.getAttribute("loginFormBean");
%>
<html>
<head>
<title>Welcome to WebShoppe</title>
<style type="text/css">
body {
    margin: 75px;
}
</style>
</head>
<body>
    <h2>Webshoppe E-Commerce</h2>
    <hr/>
    <br/>
    <!-- Welcome, <b><%= loginFormBean.getUsername() %></b><br/>   -->
    Welcome,  <b>${loginFormBean.getUsername()}</b><br/>
    Your password is ${loginFormBean.getPassword()}<br/>
    Request Scope Header: <b>${requestScope.headerValue}</b><br/>
    Application Scope Header: <b>${applicationScope.headerValue}</b>
</body>
</html>