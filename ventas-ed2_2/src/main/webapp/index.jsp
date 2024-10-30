<%@include file="libs/header.jsp" %>
<section class="vh-100" style="background-color: #1c1c1c;"> <!-- Fondo oscuro -->
    <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                <div class="card bg-dark text-light" style="border-radius: 1rem;"> <!-- Card en negro -->
                    <div class="card-body p-5 text-center">

                        <div class="mb-md-5 mt-md-4 pb-5">
                            <form action="SvSesion" method="POST">
                                <h2 class="fw-bold mb-2 text-uppercase">Incio de Sesion</h2>
                                <p class="text-light mb-5">Por favor ingresa tus credenciales!</p>

                                <div data-mdb-input-init class="form-outline form-light mb-4">
                                    <input type="email" name="correoIngresar" class="form-control form-control-lg" style="background-color: #343a40; border: none;"/>
                                    <label class="form-label" for="typeEmailX">Correo</label>
                                </div>

                                <div data-mdb-input-init class="form-outline form-light mb-4">
                                    <input type="password" name="contraseniaIngresar" class="form-control form-control-lg" style="background-color: #343a40; border: none;"/>
                                    <label class="form-label" for="typePasswordX">Contraseña</label>
                                </div>

                                <p class="small mb-5 pb-lg-2"><a class="text-light" href="#!">¿Olvidó su contraseña?</a></p>

                                <button data-mdb-button-init data-mdb-ripple-init class="btn btn-info btn-lg px-5" type="submit">Ingresar</button> 
                            </form>
                            <div class="d-flex justify-content-center text-center mt-4 pt-1">
                                <a href="#!" class="text-light"><i class="fab fa-facebook-f fa-lg"></i></a>
                                <a href="#!" class="text-light"><i class="fab fa-twitter fa-lg mx-4 px-2"></i></a>
                                <a href="#!" class="text-light"><i class="fab fa-google fa-lg"></i></a>
                            </div>

                        </div>

                        <div>
                            <p class="mb-0">¿No tiene cuenta? <button type="button" 
                                                                      data-bs-toggle="modal" 
                                                                      data-bs-target="#exampleModalRegistrar" 
                                                                      style="background-color: transparent; border: none; color: #FFF; cursor: pointer; padding: 0;">
                                    Registrarse
                                </button>
                            </p>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Modal para registrar un usuario -->
<div class="modal fade" id="exampleModalRegistrar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Registrar Usuario</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="registrarUsuario" method="POST">
                    <div class="mb-3">
                        <label for="nombre" class="form-label">Nombre</label>
                        <input type="text" class="form-control" id="nombre" name="nombreRegistrar" required>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Correo</label>
                        <input type="email" class="form-control" id="email" name="emailRegistrar" required>
                    </div>
                    <div class="mb-3">
                        <label for="contrasenia" class="form-label">Contraseña</label>
                        <input type="password" class="form-control" id="contrasenia" name="contraseniaRegistrar" required>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                        <button type="submit" class="btn btn-primary">Guardar cambios</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<%@include file="libs/foother.jsp" %>