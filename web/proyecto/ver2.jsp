<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/f90d3bf50d.js" crossorigin="anonymous"></script>
        <link href="../css/estilo.css" rel="stylesheet" type="text/css"/>
        <link href="../css/estilos.css" rel="stylesheet" type="text/css"/>
        <title>Proyecto</title>
    </head>
    <header style="padding-top: 40px">
        <jsp:include page="../WEB-INF/paginas/encabezado2.jsp"/>

    </header>
    <body style="margin-top: -40px">
        <div class="col">
            <div class="container col-md-12" style="margin-top: -30px">
                <div class="card mt-5 border-3 pt-2 active pb-0 px-3 colorTajeta${proyecto.color}" style="height: 200px">
                    <div class="container col-md-8 "style="height: 200px; background-color:#fffff ">
                        <p class="card-title text-white pt-2 fs-6" style="text-shadow: 1px 1px 2px black"><b>Proyecto tipo:</b></p>
                        <h4 class="card-title text-white pt-2 fs-5" style="margin-top: -15px; text-shadow: 1px 1px 2px black;"><b>${proyecto.getTipoProyecto1()}</b></h4>

                    </div>
                </div>
            </div>
            <div class="container col-md-7 " style="margin-top: -170px">

                <div class="card mt-5 border-3 pt-2 active pb-0 px-3">
                    <div class="card-body ">
                        <div class="row">
                            <div class="col-6 ">
                                <h4 class="card-title "><b>${proyecto.nombre}</b></h4>
                            </div>
                            <div class="col-6 d-flex align-content-end justify-content-end">
                                <h4 class="card-title fs-4 fw-lighter"><b>Inversión: $ ${proyecto.inversion}</b></h4>
                            </div>
                            <div class="col-12">
                                <h6 class="card-subtitle mb-2 text-muted">
                                    <p class="card-text text-muted small "> <img src="https://img.icons8.com/color/26/000000/christmas-star.png" class="mr-1 " width="19" height="19" id="star"> <span class="vl mr-2 ml-0"></span> Creado por <span class="font-weight-bold"> ${proyecto.idEmprendedor}</span></p>
                                </h6>
                            </div>
                            <hr>
                            <br>
                            <div class="col-12">
                                <h6 class="card-subtitle mb-2 text-muted fw-light lh-base">
                                    ${proyecto.descripcion}
                                </h6>
                            </div>
                            <br>
                            <br>
                            <div class="col-12">
                                <h6 class="card-subtitle mb-2 text-muted fw-light lh-base">
                                    ${proyecto.justificacion}
                                </h6>
                            </div>
                            <br>
                            <hr>
                            <div class="col-12">
                                <h6 class="card-subtitle mb-2 text-muted fw-light lh-base">
                                    <div class="pb-2"><i class="fas fa-crosshairs"></i> Tipo ${proyecto.getTipoProyecto1()}</div>
                                    <div class="pb-2"><i class="far fa-handshake"></i> Liderado por ${proyecto.getTipoProyecto2()}</div>
                                    <div class="pb-2"><i class="fas fa-file-pdf"></i> <a href="${proyecto.pdf}" target="_blank" class="text-decoration-none" style="color: blue"> Descargar Proyecto PDF</a></div>
                                </h6>
                            </div>

                        </div>
                    </div>

                    <div class="card-footer bg-white px-0 ">
                        <div class="row">
                            <div class=" col-md-auto px-4"> <h5>Apoyar este proyecto:</h5> </div>
                            <div class="col-md-auto ">
                                <ul class="list-inline">
                                    <li class="list-inline-item" > <a type="button" href="https://wa.me/57" target="_blank" class="btn btn-outline-primary"><i class="fab fa-whatsapp"></i> Whatsapp</a> </li>
                                    <li class="list-inline-item" > <a type="button" href="mailto:hemirmg@hotmail.com" target="_blank" class="btn btn-outline-primary"><i class="far fa-envelope"></i> Correo Electrónico</a> </li>
                                    <li class="list-inline-item" > <a type="button" href="tel:3177298560" target="_blank" class="btn btn-outline-primary "><i class="fas fa-phone-volume"></i> Llamar</a>  </li>

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    </body>
</html>
    <jsp:include page="../emprendedor/nuevo.jsp"/>
    <jsp:include page="../proyecto/nuevo.jsp"/>