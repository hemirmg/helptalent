<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/f90d3bf50d.js" crossorigin="anonymous"></script>
        <title>HelpTalent</title>

        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <!--#### NavBar ####-->
        <jsp:include page="WEB-INF/paginas/encabezado2.jsp"/>
        <!--#### Fin NavBar ####-->
        <header class="py-5 bg-image-full" style="background-image: url('img/banner2.jpg')">
            <div class="text-center my-5">
                <img class="img-fluid rounded-circle mb-4" src="img/logo.png" alt="..." width="150px" height="150"/>
                <h1 class="text-white fs-3 fw-bolder">Colombianos</h1>
                <p class="text-white-50 mb-0">Apoyando el progreso de los Colombianos</p>
            </div>
        </header>

        <section class="py-5">
            <div class="container my-5">
                <div class="row justify-content-center">
                    <div class="col-lg-6">
                        <h2>Para los Emprendedores</h2>
                        <p class="lead">Nuestras más sinceras felicitaciones: emprender es para valientes, es para los que no se conforman como están sino quieren transformar su vida y la de quienes lo rodean. Para que tengas éxito en tu emprendimiento, te daremos unos buenos consejos.</p>

                    </div>
                </div>
            </div>
        </section>

        <div class="py-5 bg-image-full" style="background-image: url('img/banner.jpg')">

            <div style="height: 20rem"></div>
        </div>

        <section class="py-5">
            <div class="container my-5">
                <div class="row justify-content-center">
                    <div class="col-lg-6">
                        <h2>Tips de Emprendimiento</h2>
                        <p class="lead"><b>1-</b> Sé realista en cuanto a tu emprendimiento, entiende que emprender toma tiempo, no puedes soñar una idea grande y que se haga realidad. Tendrás tus tropiezos, pero si persistes y aprendes de ellos, cada tropiezo será un paso para alcanzar el crecimiento personal y empresarial.</p>
                        <p class="lead"><b>2-</b> No todos los emprendedores son unos expertos en formulación de proyecto o finanzas, pero hay algunas cosas mínimas que debes saber: La inversión requerida, el capital de trabajo, que no es otra al dinero que necesitas para que tu iniciativa se pueda sostener antes de que empiece a recibir ingresos suficientes y el Tiempo de Retorno de la Inversión, es decir, el tiempo en que la empresa puede devolverle el dinero de la inversión inicial.</p>
                    </div>
                </div>
            </div>
        </section>

        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; HelpTalent 2021</p></div>
        </footer>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

        <script src="js/scripts.js"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

                    <script>
                function cambio(opcion) {
                    document.getElementById("txtTipo11").value = opcion.options[opcion.selectedIndex].text;
                }
            </script>
        
    </body>
</html>
<jsp:include page="emprendedor/nuevo.jsp"/>
<jsp:include page="proyecto/nuevo.jsp"/>