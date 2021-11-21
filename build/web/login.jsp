<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
            <script src="https://kit.fontawesome.com/f90d3bf50d.js" crossorigin="anonymous"></script>
        <link href="css/estiloLogin.css" rel="stylesheet" type="text/css"/>
        <title>Login</title>
    </head>
    <body>
        <section class="vh-100">
            <div class="container-fluid h-custom">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-md-9 col-lg-6 col-xl-5">
                        <img src="https://mdbootstrap.com/img/Photos/new-templates/bootstrap-login-form/draw2.png" class="img-fluid"
                             alt="">
                    </div>
                    <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
                        <form action = "${pageContext.request.contextPath}/Login" method = "POST">
                            <div class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
                                <p class="lead fw-normal mb-0 me-3">Iniciar con</p>
                                <button type="button" class="btn btn-primary btn-floating mx-1">
                                    <i class="fab fa-facebook-f"></i>
                                </button>

                                <button type="button" class="btn btn-primary btn-floating mx-1">
                                    <i class="fab fa-twitter"></i>
                                </button>

                                <button type="button" class="btn btn-primary btn-floating mx-1">
                                    <i class="fab fa-linkedin-in"></i>
                                </button>
                            </div>

                            <div class="divider d-flex align-items-center my-4">
                                <p class="text-center fw-bold mx-3 mb-0"></p>
                            </div>


                            <div class="form-outline mb-4">
                                <input type="text" id="txtUser" name="txtUser" class="form-control form-control-lg"
                                       placeholder="Ingresa Usuario" />
                                <label class="form-label" for="txtUser">Usuario</label>
                            </div>


                            <div class="form-outline mb-3">
                                <input type="password" id="txtPasword" name="txtPasword" class="form-control form-control-lg"
                                       placeholder="Contraseña" />
                                <label class="form-label" for="txtPasword">Contraseña</label>
                            </div>

                            <div class="d-flex justify-content-between align-items-center">
                                <!-- Checkbox -->
                                <div class="form-check mb-0">
                                    <input class="form-check-input me-2" type="checkbox" value="" id="" />
                                    <label class="form-check-label" for="">
                                        Recuedame
                                    </label>
                                </div>
                                <a href="#" class="text-body">Olvidaste tu contraseña?</a>
                            </div>

                            <div class="text-center text-lg-start mt-4 pt-2">
                                <button type="submit" class="btn btn-primary btn-lg"
                                        style="padding-left: 2.5rem; padding-right: 2.5rem;">Iniciar</button>
                  
                            </div>

                        </form>
                    </div>
                </div>
            </div>
            <div class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary">
                <!-- Copyright -->
                <div class="text-white mb-3 mb-md-0">
                    <i class="fab fa-hive"></i> HelpTalent © 2020. Todos los derechos reservados.
                </div>

                <div>
                    <a href="#" class="text-white me-4">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a href="#" class="text-white me-4">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a href="#" class="text-white me-4">
                        <i class="fab fa-google"></i>
                    </a>
                    <a href="#" class="text-white">
                        <i class="fab fa-linkedin-in"></i>
                    </a>
                </div>

            </div>
        </section>
    </body>
</html>