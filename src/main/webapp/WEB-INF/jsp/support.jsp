<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags" %>
<!-- %@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %-->  
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<petclinic:layout pageName="support">
    
    <div class="row">
        <h1>Soporte</h1>
    </div>
    
    <div class="row">
        <div class="col-md-6">
            <h4 style="color: rgb(212, 130, 30);">Periodo del año</h4>
            <h4 style="color: rgb(0, 0, 0);">Lunes a Viernes</h4>
            <h4 style="color: rgb(0, 0, 0);">Sábados</h4>
            <h4 style="color: rgb(0, 0, 0);">Semana Santa, Feria y Navidad</h4>
            
            <div class="row-12">
   
            </div>
        </div>
        <div class="col-md-6">
            <h4 style="color: rgb(212, 130, 30);">Horario</h4>
            <h4 style="color: rgb(0, 0, 0);">9 a 20h</h4>
            <h4 style="color: rgb(0, 0, 0);">9 a 14h</h4>
            <h4 style="color: rgb(0, 0, 0);">10 a 13h</h4>
            
        </div>
       

    </div>
    <br>
    <br>
    <div class="row">
        <h1>Puedes contactarnos en...</h1>
    </div>
    <div class="row">
        <div>
            <a style="color: rgb(82, 23, 16); font-size: large; font-weight: bolder;" href="https://accounts.google.com/AccountChooser/signinchooser?service=mail&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&flowName=GlifWebSignIn&flowEntry=AccountChooser"> garciadelavegafrancisco@gmail.com</a>
        </div>
        <div>
            <a style="color: rgb(82, 23, 16); font-size: large; font-weight: bolder;" href="https://accounts.google.com/AccountChooser/signinchooser?service=mail&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&flowName=GlifWebSignIn&flowEntry=AccountChooser"> inmamayo00@gmail.com</a>
        </div>
        <div>
            <a style="color: rgb(82, 23, 16); font-size: large; font-weight: bolder;" href="https://accounts.google.com/AccountChooser/signinchooser?service=mail&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&flowName=GlifWebSignIn&flowEntry=AccountChooser">jesuspaezpaez@gmail.com</a>
        </div>
        <div>
            <a style="color: rgb(82, 23, 16); font-size: large; font-weight: bolder;" href="https://accounts.google.com/AccountChooser/signinchooser?service=mail&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&flowName=GlifWebSignIn&flowEntry=AccountChooser"> javivaz2001@gmail.com</a>
        </div>
        <div>
            <a style="color: rgb(82, 23, 16); font-size: large; font-weight: bolder;" href="https://accounts.google.com/AccountChooser/signinchooser?service=mail&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&flowName=GlifWebSignIn&flowEntry=AccountChooser"> aalvarovazquez@gmail.com</a>
        </div>

        
       
    </div>
    <div class="row">
        <div class="col-md-12">
            <img class="img-responsive" style="height: 300px;" src="${petsImage}"/>
        </div>

    </div>
    
    

</petclinic:layout>




 
