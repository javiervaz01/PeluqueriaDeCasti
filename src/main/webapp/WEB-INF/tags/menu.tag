<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!--  >%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%-->
<%@ attribute name="name" required="true" rtexprvalue="true"
	description="Name of the active menu: home, owners, vets or error"%>
<%@ attribute name="plan" required="false" rtexprvalue="true" description="Current clinic plan"%>


<nav class="navbar navbar-default" role="navigation">
	<div class="container">
		
		<div class="navbar-collapse collapse" id="main-navbar">
			<ul class="nav navbar-nav navbar-margin">

				<li >
					<a class="navbar-brand"
						href="<spring:url value="/" htmlEscape="true" />"></a>
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#main-navbar">
						<span class="sr-only"><os-p>Toggle navigation</os-p></span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</li>

				<petclinic:menuItem active="${name eq 'home'}" url="/"
					title="home page">
					<span class="glyphicon glyphicon-home" aria-hidden="true"></span>
					<span>Inicio</span>
				</petclinic:menuItem>

				<petclinic:menuItem active="${name eq 'owners'}" url="/owners/find"
					title="find owners">
					<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
					<span>Buscar propietarios</span>
				</petclinic:menuItem>

				<petclinic:menuItem active="${name eq 'vets'}" url="/vets"
					title="veterinarians">
					<span class="glyphicon glyphicon-th-list" aria-hidden="true"></span>
					<span>Veterinarios</span>
				</petclinic:menuItem>

				<petclinic:menuItem active="${name eq 'causes'}" url="/causes"
					title="causes">
					<span class="glyphicon glyphicon-th-list" aria-hidden="true"></span>
					<span>Causas</span>
				</petclinic:menuItem>

				<c:if test="${plan == 'Avanzado' or plan =='Pro'}">
					<petclinic:menuItem active="${name eq 'reservations'}" url="/reservations"
						title="reservations">
						<span class="glyphicon glyphicon-th-list" aria-hidden="true"></span>
						<span>Reservas</span>
				</petclinic:menuItem>
				</c:if>
				
				<petclinic:menuItem active="${name eq 'support'}" url="/support"
					title="support page">
					<span class="glyphicon glyphicon-wrench" aria-hidden="true"></span>
					<span>Soporte</span>
				</petclinic:menuItem>

				<sec:authorize access="isAuthenticated()">
					<petclinic:menuItem active="${name eq 'adoptions'}" url="/adoptions"
						title="adoptions">
						<span class="glyphicon glyphicon-th-list" aria-hidden="true"></span>
						<span>Adopciones</span>
					</petclinic:menuItem>
				</sec:authorize>

				<sec:authorize access="hasAnyAuthority('clinicOwner')">
					<petclinic:menuItem active="${name eq 'Plan'}" url="/plan"
						title="plan">
						<span class="glyphicon glyphicon-euro" aria-hidden="true"></span>
						<span>Plan</span>
					</petclinic:menuItem>
				</sec:authorize>
				
				<petclinic:menuItem active="${name eq 'reservations'}" url="/CA"
					title="reservations">
					<span class="glyphicon glyphicon-th-list" aria-hidden="true"></span>
					<span>Acuerdo con el cliente</span>
				</petclinic:menuItem>

				
				<petclinic:menuItem active="${name eq 'changelog'}" url="/changelog"
					title="changelog">
					<span class="glyphicon glyphicon-inbox" aria-hidden="true"></span>
					<span>Control de versiones</span>
				</petclinic:menuItem>

				<sec:authorize access="hasAnyAuthority('clinicOwner')">
					<petclinic:menuItem active="${name eq 'Clinics'}" url="/clinics"
						title="clinic">
						<span class="glyphicon glyphicon-home" aria-hidden="true"></span>
						<span>Clinicas</span>
					</petclinic:menuItem>
				</sec:authorize>

				<petclinic:menuItem active="${name eq 'error'}" url="/oups"
					title="trigger a RuntimeException to see how it is handled">
					<span class="glyphicon glyphicon-warning-sign" aria-hidden="true"></span>
					<span>Error</span>
				</petclinic:menuItem>


				<sec:authorize access="!isAuthenticated()">
					<li><a href="<c:url value="/login" />">Iniciar sesion</a></li>
					<li><a href="<c:url value="/users/new" />">Registrarse</a></li>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"> <span class="glyphicon glyphicon-user"></span>
							<strong><sec:authentication property="name" /></strong> <span
							class="glyphicon glyphicon-chevron-down"></span>
					</a>
						<ul class="dropdown-menu">
							<li>
								<div class="navbar-login">
									<div class="row">
										<div class="col-lg-4">
											<p class="text-center">
												<span class="glyphicon glyphicon-user icon-size"></span>
											</p>
										</div>
										<div class="col-lg-8">
											<p class="text-left">
												<strong><sec:authentication property="name" /></strong>
											</p>
											<p class="text-left">
												<a href="<c:url value="/logout" />"
													class="btn btn-primary btn-block btn-sm">Cerrar sesión</a>
											</p>
										</div>
									</div>
								</div>
							</li>
							<li class="divider"></li>
                            <li> 
								<div class="navbar-login navbar-login-session">
									<div class="row">
										<div class="col-lg-12">
											<p>
												<a href="<c:url value="/phonenumber" />" class="btn btn-primary btn-block">Número de telefono</a>
												
											</p>
										</div>
									</div>
								</div>
							</li>
						</ul></li>
				</sec:authorize>
			</ul>





		</div>



	</div>
</nav>
