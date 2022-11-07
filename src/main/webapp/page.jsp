<%@ page language="java" isELIgnored="false"%>
<%@page import="com.bootcamp.webshoppe.bean.PersonBean"%>
<%@page import="com.bootcamp.webshoppe.bean.AddressBean"%>
<%@page import="com.bootcamp.webshoppe.bean.FullNameBean"%>
<%@page import="com.bootcamp.webshoppe.bean.PageBean"%>

<!-- HTML Comment -->
<%--JSP comment --%>
<jsp:useBean id="pageBean" class="com.bootcamp.webshoppe.bean.PageBean" scope="page"/>
<jsp:setProperty name="pageBean" property="backgroundColor" value="black" />
<jsp:setProperty name="pageBean" property="foregroundColor" value="white" />
<%
//PageBean pageBean = new PageBean();
//pageBean.setBackgroundColor("black");
//pageBean.setForegroundColor("white");
//pageContext.setAttribute("pageBean", pageBean);

FullNameBean fullNameBean = new FullNameBean();
fullNameBean.setFirstName("John");
fullNameBean.setLastName("Doe");
fullNameBean.setMiddleInitial("M");

AddressBean addressBean = new AddressBean();
addressBean.setStreetName("123 Baker St.");
addressBean.setZipCode("RMN123");
addressBean.setCountry("United Kingdom");

PersonBean personBean = new PersonBean();
personBean.setFullName(fullNameBean);
personBean.setAddress(addressBean);
personBean.setAge(25);
pageContext.setAttribute("person", personBean);

%>
<html>
    <head>
        <title>Page</title>
    </head>
    <body style="background-color: ${pageBean.backgroundColor}; color: ${pageBean.foregroundColor} ">
    Background color: ${pageBean.backgroundColor} <br /> 
    Foreground color: ${pageBean.foregroundColor} <br />
    <body>
        Background Color: ${pageBean.backgroundColor }<br/>
        Foreground Color: ${pageBean.foregroundColor }<br/>
        
        <h2>Expression Language Demo</h2>
        <br/>
        First Name: ${person.fullName.firstName} <br/>
        Last Name: ${person.fullName.lastName} <br/>
        Middle Initial: ${person.fullName.middleInitial} <br/>
        Street: ${person.address.streetName}<br/>
        Zip Code: ${person.address.zipCode}<br/>
        Country: ${person.address.country}<br/>
        Age: ${person.age}
    </body>
</html>