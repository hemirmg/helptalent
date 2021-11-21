<div class="modal fade" id="nuevoEmprendedorModal"> <!-- id viene desde atributo data-target="#nuevoEmprendedorModal" en el boton nuevo-->
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header text-white" style="background-color: #165261">
                <h5 class="modal-title"><i class="fas fa-user-astronaut"></i> Nuevo Emprendedor</h5>
                <button class="close" data-dismiss="modal">
                    <span>&times;</span>
                </button>
            </div>
            <br>
            <!-- Formulario Nuevo-->
            <form action="${pageContext.request.contextPath}/Emprendedor?accion=nuevo" method="POST" class="was-validated">
                <section id="details">
                    <div class="container">
                        <div class="row">
                            <div class="col">
                                <div class="card">
                                    <div class="card-body">
                                        <label for="txtNombre"><b>Nombre:</b></label>
                                        <input type="text" name="txtNombre" class="form-control" autocomplete="off" required>
                                        <label for="txtTelefono"><b>Teléfono</b></label>
                                        <input type="text" name="txtTelefono" class="form-control" autocomplete="off" required>
                                        <label for="txtWhatsapp"><b>Whatsapp:</b></label>
                                        <input type="text" name="txtWhatsapp" class="form-control" autocomplete="off" required>
                                        <label for="txtEmail"><b>Correo Electrónico:</b></label>
                                        <input type="email" name="txtEmail" class="form-control" autocomplete="off" required>
                                        <label for="txtUser"><b>Usuario:</b></label>
                                        <input type="text" name="txtUser" class="form-control" autocomplete="off" required>
                                        <label for="txtPassword"><b>Contraseña:</b></label>
                                        <input type="password" name="txtPassword" class="form-control" autocomplete="off" required>
                                        <br>
                                        <div class="checkbox" required>
                                            <label><input type="checkbox" value="" required> Acepto el Tratamiento de mis Datos</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>


                <!-- Botones Navegación-->
                <section id="actions" class="py-4 mb-4 bg-light">
                    <div class="container">
                        <div class="d-flex">
                            <div class="col-sm-3">
                                <div class="card-body">
                                    <a class="btn btn-light btn-block close" data-dismiss="modal">
                                        <i class="fas fa-arrow-left"></i> Regresar
                                    </a>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="card-body">
                                    <button type="submit" class="btn btn-block text-white" style="background-color: #165261">
                                        <i class="fas fa-check"></i> Guardar
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

            </form>
        </div>
    </div>
</div>