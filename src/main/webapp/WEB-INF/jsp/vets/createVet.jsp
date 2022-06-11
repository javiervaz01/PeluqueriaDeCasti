<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags" %>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<petclinic:layout pageName="veterinarians">
        <h2>
            
            <c:if test="${vet['new']}">Nuevo </c:if> Veterinario
            
        </h2>
        <form:form modelAttribute="vet" class="form-horizontal" id="add-owner-form">
            <div class="form-group has-feedback">
                <input type="hidden" name="id" value="${vet.id}" />
                <petclinic:inputField label="Nombre" name="firstName" />
                <petclinic:inputField label="Apellidos" name="lastName"/>
                <label class="col-sm-2 control-label">Clínica:</label>
                <div class="col-sm-10">
                    <form:select class="form-control" path="clinic">
                        <c:forEach items="${clinics}" var="clinic">
                            <form:option value="${clinic}" label="${clinic}"/>
                        </c:forEach>
                    </form:select>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <c:choose>
                        <c:when test="${vet['new']}">
                            <button class="btn btn-default" type="submit">Añadir Veterinario</button>
                        </c:when>
                        <c:otherwise>
                            <a href="/vets/${vet.id}/specialties/edit">
                            <div class="btn btn-default">Añadir especialidad</div>
                            </a>
                            <button class="btn btn-default" type="submit">Actualizar Veterinario</button>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>


        </form:form>
    
</petclinic:layout>