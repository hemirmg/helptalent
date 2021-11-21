<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
    <html>
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
            <script src="https://kit.fontawesome.com/f90d3bf50d.js" crossorigin="anonymous"></script>
            <title>Proyectos | HelpTalent</title>

        </head>

        <body>

            <!--#### NavBar ####-->
            <jsp:include page="WEB-INF/paginas/encabezado1.jsp"/>
            <!--#### Fin NavBar ####-->


            <!--#### Inicio Tarjeta ####-->
            <div class="container mt-4">
                <div class="row">
                    <div class="col-md-4 border border-2 rounded-3">
                        <img src="img/banner3.jpg" class="img-fluid" alt="..." style="border-radius: 10px">
                    </div>
                    <div class="col-md-8">
                        <c:forEach var="p" items="${proyectos}">
                            <div class="tarjeta">
                                <input type="hidden" id="idPro" value="${p.idProyecto}">
                                <div class="tarjeta-preview colorTajeta${p.color}">
                                    <h6>Tipo:</h6>
                                    <h3>${p.getTipoProyecto1()}</h3>
                                    <!--<a href="#">Ver todos <i class="fas fa-chevron-right"></i></a>-->
                                </div>
                                <div class="tarjeta-info">
                                    <div class="inversion-container">
                                        <!--<div class="inversion"></div>-->
                                        Inversion:<br>
                                        <span class="inversion-text">
                                            <span>$ ${p.inversion}</span>
                                        </span>
                                    </div>
                                    <h6>Proyecto</h6>
                                    <br>
                                    <h2 style="font-size: 20px">${p.nombre}</h2>
                                    <p class="comentario">${p.descripcion}</p>
                                    <br>
                                    <br>
                                    <a href="${pageContext.request.contextPath}/Proyecto?accion=ver&id=<c:out value="${p.idProyecto}"/>" class="boton colorTajeta${p.color}" style="text-decoration: none">Detalles <i class="fas fa-chevron-right"></i></a>
                                   <!-- <button class="boton colorTajeta${p.color}">Detalles <i class="fas fa-chevron-right"></i></button>-->
                                </div>
                            </div>
                        </c:forEach>
                    </div>


                </div>
            </div>
            <!--#### Fin Tarjeta ####-->

            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

        </body>
    </html>
    <jsp:include page="emprendedor/nuevo.jsp"/>
    <jsp:include page="proyecto/nuevo.jsp"/>


