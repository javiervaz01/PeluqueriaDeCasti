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
            
            Añadir especialidad a ${vet.firstName} &nbsp${vet.lastName} 
            
        </h2>
        <form:form modelAttribute="specialty" class="form-horizontal" id="add-owner-form">
            <div class="form-group has-feedback">
                <div class="control-group">
                    <petclinic:selectField name="name" label="Specialty" names="${specialties}" size="5"/>
                </div>
                
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button class="btn btn-default" type="submit">Añadir especialidad</button>
                </div>
            </div>


        </form:form>
    
</petclinic:layout>