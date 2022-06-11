<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<petclinic:layout pageName="vets">
    <h2>Veterinarios</h2>

    <table id="vetsTable" class="table table-striped">
        <thead>
        <tr>
            <th>Nombre</th>
            <th>Clínica</th>
            <th>Especialidades</th>
            <th>Acción</th>
            <th>Editar</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${vets.vetList}" var="vet">
            <tr>
                <td>
                    <c:out value="${vet.firstName} ${vet.lastName}"/>
                </td>
                <td>
                    <c:out value="${vet.clinic.name}"/>
                </td>
                <td>
                    <c:forEach var="specialty" items="${vet.specialties}">
                        <c:out value="${specialty.name} "/>
                    </c:forEach>
                    <c:if test="${vet.nrOfSpecialties == 0}">ninguno</c:if>
                </td>
                <td>
                    <c:choose>
                        <c:when test = "${isAdmin}">
                    <spring:url value="/vets/delete/{vetId}" var="vetUrl">
                        <spring:param name="vetId" value="${vet.id}"/>
                    </spring:url>
                    <a href="${fn:escapeXml(vetUrl)}">Eliminar</a>
                        </c:when>
                    </c:choose>
                </td>
                <td>
                    <spring:url value="/vets/edit/{vetId}" var="vet">
                        <spring:param name="vetId" value="${vet.id}"/>
                    </spring:url>
                    <a href="${fn:escapeXml(vet)}">Editar</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    
    <a class="btn btn-default" href="/vets/create">Añadir</a>

    <table class="table-buttons">
        <tr>
            <td>
                <a href="<spring:url value="/vets.xml" htmlEscape="true" />">Ver como XML</a>
            </td>            
        </tr>
    </table>
</petclinic:layout>
