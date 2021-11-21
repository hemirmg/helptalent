<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!--Importado de la librería JSTL 1.2.1 para evirar incrustar tantos scriptles -->
<!DOCTYPE html>
<html lang="es">
    <html>
        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
            <script src="https://kit.fontawesome.com/f90d3bf50d.js" crossorigin="anonymous"></script>
            <link href="../css/principalEstilos.css" rel="stylesheet" type="text/css"/>
            <link href="../css/styles.css" rel="stylesheet" />
            <!--<link href="${pageContext.request.contextPath}/image/favicon.ico" rel="icon" type="image/x-icon" />-->
            <title>Módulo Usuarios | Mi Factura</title>
        </head>
        <body style="background-color: white">

            <!--Header / Cabecero -->
            <header id="main-header" class="py-1 mt-1 bg-primary text-white">
                <div class="container">
                    <div class="row">
                        <div class="col-md">
                            <h2>
                                <i class="fas fa-users"></i> Control de Usuarios</h2>
                        </div>
                    </div>
                </div>
            </header>

            <!-- Barra btnNuevo y Buscar -->

            <br>
            <br>
            <div class="container d-flex justify-content-between">
                <div class="col-4" id="actions">
                    <a href="${pageContext.request.contextPath}/emprendedor/nuevo.jsp" class="btn btn-primary btn-block" data-toggle="modal" data-target="#nuevoEmprendedorModal"> <i class="fas fa-plus"></i> Nuevo</a>
                </div>
                <form  action="${pageContext.request.contextPath}/Usuarios?accion=buscar" method="POST" class="form d-flex col-md-3">
                    <input class="form-control" type="search" name="txtBuscar" placeholder="Buscar usuario" autocomplete="off" required>
                    <button type="submit" class="btn btn-primary btn-block" data-toggle="modal" data-target="#buscarUsuario"><i class="fa fa-search"></i></button>
                </form>
            </div>
            <br>
            <!-- Resultado Consulta Usuarios -->
            <div class="container">
                <div class="table-responsive">
                    <table class="table table-striped table-bordered table-hover">
                        <thead>
                            <tr>
                                <th class="col-md-2 text-center">CÉDULA</th>
                                <th class="col-lg-5">NOMBRE</th>
                                <th class="col-md-3">E-MAIL</th>
                                <th class="col-md-2">USUARIO</th>
                                <th class="text-center">ACCIONES</th>

                            </tr>
                        </thead>

                        <tbody>

                            <c:forEach var="usuario" items="">

                                <tr>
                                    <td class="text-center" id="cedulaUsuario"><c:out value=""/></td>
                                    <td><c:out value=""/></td>
                                    <td><c:out value=""/></td>
                                    <td><c:out value=""/></td>
                                    <td class="text-center">
                                        <a href="${pageContext.request.contextPath}/Usuarios?accion=editar&cedulaUsuario=<c:out value=""/>" class="btn btn-primary btn-sm"> <i class="fa fa-pencil"></i></a>
                                        <a href="${pageContext.request.contextPath}/usuarios/eliminar.jsp?accion=eliminar&cedulaUsuario=<c:out value=""/>&nom=<c:out value=""/>" class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></a>
                                    </td>
                                </tr> 
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            <br>
            <br>
            <br>

            <!-- Scripts para JS-->

            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

        </body>
    </html>

    <!--Nuevo Usuario | MODAL-->
    <jsp:include page="nuevo.jsp"/>
