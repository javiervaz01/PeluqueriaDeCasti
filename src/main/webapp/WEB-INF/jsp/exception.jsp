<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags" %>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<petclinic:layout pageName="error">

    <spring:url value="/resources/images/error.png" var="petsImage"/>
    <img src="${petsImage}"/>


    <p>${exception.message}</p>

</petclinic:layout>
