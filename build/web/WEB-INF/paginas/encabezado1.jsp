<nav id="main_nav" class="navbar navbar-expand-lg navbar-light bg-white shadow">



    <div class="container d-flex justify-content-between align-items-center">
        <a class="navbar-brand h1" href="${pageContext.request.contextPath}"">
            <i class='bx bx-buildings bx-sm text-dark'></i>
            <span class="text-dark h4"><i class="fab fa-hive"></i> Help</span><span class="text-primary h4">Talent</span>
        </a>
        <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-toggler-success" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="navbar-toggler-success">
            <div class="flex-fill mx-xl-5 mb-2">
                <ul class="nav navbar-nav d-flex justify-content-between mx-xl-5 text-center text-dark">
                    <li class="nav-item">
                        <a class="nav-link rounded-pill px-3" href="${pageContext.request.contextPath}">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link rounded-pill px-3" href="${pageContext.request.contextPath}/Proyecto?accion=explorar"><b>Explorador de Proyectos</b> <i class="fas fa-search-dollar"></i></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link rounded-pill px-3" href="${pageContext.request.contextPath}/emprendedor/nuevo.jsp" data-toggle="modal" data-target="#nuevoEmprendedorModal">Nuevo Emprendedor</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link rounded-pill px-3" href="${pageContext.request.contextPath}/proyecto/nuevo.jsp"  data-toggle="modal" data-target="#nuevoProyectoModal">Agregar Proyecto</a>
                    </li>
                    <!--<li class="nav-item">
                        <a class="nav-link rounded-pill px-3" href="${pageContext.request.contextPath}/proyecto/ver.jsp">Contacto</a>
                    </li>-->
                </ul>
                        <input type="hidden" id="txtIdEmprendedor" value="${emprendedor.idEmprendedor}">
            </div>
            <div class="navbar align-self-center d-flex">
                <a class="nav-link" href="${pageContext.request.contextPath}/CerrarSesion"><i class='bx bx-bell bx-sm bx-tada-hover text-primary'></i>Cerrar Sesión</a>

                <a class="nav-link" href="#"><i class='bx bx-cog bx-sm text-primary'></i></a>
                <a class="nav-link" href="#"><i class='bx bx-user-circle bx-sm text-primary'></i></a>
            </div>
        </div>
    </div>

</nav>