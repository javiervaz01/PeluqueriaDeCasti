<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!-- %@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %-->  
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<petclinic:layout pageName="changelog">
    <h2>Control de versiones</h2>
    <div class="row">
        <div class="col-md-12">
<ul style="margin-top:0;margin-bottom:0;padding-inline-start:48px;">
    <h3>Versión 1.0.0</h3>
    <li aria-level="1" dir="ltr" >
        <p dir="ltr" style="line-height:1.7999999999999998;text-align: justify;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Versión final del Sprint 2. Creadas funcionalidades de reserva de habitaciones para mascotas, cambios en la interfaz de la página.</span></p>
    </li>
    
    <h3>Versión 1.1.0</h3>
    <li aria-level="1" dir="ltr" >
        <p dir="ltr" style="line-height:1.7999999999999998;text-align: justify;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Añadidas distintas funcionalidades como la creación de causas, la posibilidad de hacer donaciones, implementadas restricciones para la hora de hacer reservas de tus mascotas en las habitaciones de petHotel.</span></p>
    </li>

    <h3>Versión 1.1.1</h3>
    <li aria-level="1" dir="ltr" >
        <p dir="ltr" style="line-height:1.7999999999999998;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:10pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">Solucionados muchos bugs de la versión anterior, y refactorización de mucho código, con el fin de aumentar la eficacia y legibilidad del sistema.</span></p>
    </li>
</petclinic:layout>
