<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
 		<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Pais - Alterar Pais</title>

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">	
		
		<title>Atualizar Pais</title>
		
	</head>

	<body>
	
		<!-- Barra de Navegação -->
		<c:import url="Menu.jsp"/>		
		<div id="main" class="container">
                    <h3 class="page-header">Alterar Pais #${pais.id }</h3>
                    <!-- Formulario para alteração de clientes -->
                    <form action="ManterPais.do" method="post">
                        <input type="hidden" name="id" value="${pais.id }" />
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="nome">Nome</label>
                                <input type="text" class="form-control" name="nome" id="nome" required maxlength="100" placeholder="Nome Do Pais" value="${pais.nome }">
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="fone">Populacao</label>
                                <input type="tel" class="form-control" name="populacao" id="populacao" value="${pais.populacao}">
                            </div>

                            <div class="form-group col-md-6">
                                <label for="email">Area</label>
                                <input type="area" class="form-control" name="area" id="area" required maxlength="60" value="${pais.area}">
                            </div>
                        </div>
                        <hr />
                        <div id="actions" class="row">
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-primary" name="acao" value="Alterar">Salvar</button>
                                <a href="ListaPais.jsp" class="btn btn-default">Cancelar</a>
                            </div>
                        </div>
                    </form>
                </div>
				<script src="js/jquery.min.js"></script>
                <script src="js/bootstrap.min.js"></script>
	</body>
</html>