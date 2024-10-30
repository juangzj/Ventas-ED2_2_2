<%@include file="libs/header.jsp" %>

<%@include file="libs/navbar-vista-principal.jsp" %>

<div class="container-fluid p-0">
    <img src="imagenes/electrodomesticos.png" class="img-fluid w-100" style="height: 400px; object-fit: cover;" alt="Imagen de ancho completo">
</div>

<div class="container py-5">
    <h1 class="text-center mb-5">Catálogo de Electrodomésticos</h1>

    <table class="table custom-table table-striped table-bordered">
        <thead class="table-dark">
            <tr>
                <th scope="col">#</th>
                <th scope="col">Nombre del Producto</th>
                <th scope="col">Descripción</th>
                <th scope="col">Precio</th>
                <th scope="col">Acciones</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th scope="row">3</th>
                <td>Producto C</td>
                <td>Descripción breve del producto C, destacando sus principales características.</td>
                <td class="text-success">$15.00</td>
                <td>
                    <a href="index.jsp" class="btn custom-btn btn-sm">Ingresar y comprar</a>
                </td>
            </tr>
        </tbody>
    </table>
</div>

<footer class="text-center mt-5 p-4 bg-dark text-light">
    <p>© 2024 Electrodomésticos. Todos los derechos reservados.</p>
    <div>
        <a href="#" class="text-light me-2">Facebook</a>
        <a href="#" class="text-light">Twitter</a>
    </div>
</footer>
<%@include file="libs/foother.jsp" %>