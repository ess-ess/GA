<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="row">
			<div class="col-md-6 col-md-offset-2">
				<div class="row">
					<div class="col-md-offset-2 col-md-10">
						<g:if test="${flash.message}">
							<div class="alert alert-success" role="status">${flash.message}</div>
						</g:if>
						<g:hasErrors bean="${usuarioInstance}">

							<div class="alert alert-danger">
								<g:eachError bean="${usuarioInstance}" var="error">
									<p><g:message error="${error}"/></p>
								</g:eachError>
							</div>
						</g:hasErrors>
					</div>
				</div>
				<div class="row">
					<g:form class="form-horizontal" url="[resource:usuarioInstance, action:'save']" >
						<g:render template="form"/>
						<div class="form-group">
							<div class="col-md-offset-2 col-md-10">
								<g:submitButton name="create" class="btn btn-success btn-raised" value="${message(code: 'default.button.create.label', default: 'Create')}" />
							</div>
						</div>
					</g:form>
				</div>
			</div>
		</div>
		%{--</div>--}%
	</body>
</html>
