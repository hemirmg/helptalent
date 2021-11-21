<div class="modal fade" id="nuevoProyectoModal"> <!-- id viene desde atributo data-target="#nuevoEmprendedorModal" en el boton nuevo-->
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header text-white" style="background-color: #0D9BFD">
                <h5 class="modal-title"><i class="fas fa-user-astronaut"></i> Nuevo Proyecto | Aquí comienza un Futuro.</h5>
                <button class="close" data-dismiss="modal">
                    <span>&times;</span>
                </button>
            </div>
            <br>
            <!-- Formulario Nuevo-->
            <form action="${pageContext.request.contextPath}/Proyecto?accion=nuevo" method="POST" enctype="multipart/form-data" class="was-validated">
                <section id="details">
                    <div class="container">
                        <div class="row">
                            <div class="col">
                                <div class="card">
                                    <div class="card-body">
                                        <label for="txtNombre"><b>Ponle un Nombre a tu Idea:</b></label>
                                        <input type="text" name="txtNombre" class="form-control" autocomplete="off" required>
                                        <br>
                                        <label for="txtDescripcion"><b>Haz una Descripción:</b></label>
                                        <textarea class="form-control" name="txtDescripcion" id="exampleFormControlTextarea1" rows="3" required></textarea>
                                        <br>
                                        <label for="txtRazon"><b>Por qué deberían confiar en tu Proyecto?:</b></label>
                                        <textarea class="form-control" name="txtRazon" id="exampleFormControlTextarea1" rows="3" required></textarea>
                                        <br>

                                        <label for="txtTipo1"><b>Selecciona Tipo de Proyecto:</b></label>
                                        <select class="form-select" name="txtTipo1" id="txtTipo1" onchange="cambio(this)" required>
                                            <option></option>
                                            <option value="1">Agricola</option>
                                            <option value="2">Artesanal</option>
                                            <option value="3">Desarrollo de Tecnologías</option>
                                            <option value="4">Educativo</option>
                                            <option value="5">Social</option>
                                            <option value="6">Inclusivo</option>
                                        </select>
                                        <input type="hidden" id="txtTipo11" name="txtTipo11" value="">

                                        <br>
                                        <label for="txtTipo2"><b>Proyecto Liderado por?:</b></label>
                                        <select class="form-select" name="txtTipo2" id="txtTipo2" required>
                                            <option></option>
                                            <option value="Jovenes">Jovenes</option>
                                            <option value="Mujeres">Mujeres</option>
                                            <option value="LGBT">LGBT</option>
                                            <option value="Comunidades Indígenas">Comunidades Indígenas</option>
                                            <option value="Negritudes">Negritudes</option>
                                            <option value="Campesinos">Campesinos</option>
                                            <option value="Otros">Otros</option>
                                        </select>
                                        <br>
                                        <label for="txtInversion"><b>Cuanto Dinero se Necesita? (sin separador de miles):</b></label>
                                        <input type="number" name="txtInversion" class="form-control" autocomplete="off" required>
                                        <br>
                                        <label for="txtPDF"><b>Carga tu Propuesta en PDF:</b></label>
                                        <input type="file" name="txtPDF" id="txtPDF" accept=".pdf" class="form-control" autocomplete="off" required>


                                        <br>
                                        <div class="checkbox">
                                            <label><input type="checkbox" value="" required> Todo lo expuesto anteriormente es de mi autoría y respetando los Derechos de Autor</label>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                    <script>
                function cambio(opcion) {
                    document.getElementById("txtTipo11").value = opcion.options[opcion.selectedIndex].text;
                }
            </script>

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
                                    <button type="submit" class="btn btn-block text-white" style="background-color: #0D9BFD">
                                        <i class="fas fa-check"></i> Guardar
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>


            </form>
            <form action="${pageContext.request.contextPath}/Proyecto?accion=pdf" method="POST" enctype="multipart/form-data">
                <div class="card-body">

                </div>
            </form>

        </div>
    </div>
</div>
