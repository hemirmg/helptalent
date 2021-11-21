<!--#### Inicio Tarjeta ####-->
<div class="container mt-4">
    <div class="row">
        <div class="col-md-4 border border-2 rounded-3">

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
