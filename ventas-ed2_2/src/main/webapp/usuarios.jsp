<%@include file="libs/header.jsp" %>
<%@include file="libs/navbar-admonistrador.jsp" %>

<div class="container my-5">
    <h1 class="text-center">Lista de Usuarios</h1>
    <table class="table table-striped table-bordered mt-4">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Correo</th>
                <th>Rol</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>1</td>
                <td>Juan Pérez</td>
                <td>juan.perez@gmail.com</td>
                <td>Administrador</td>
                <td>acciones</td>
            </tr>
    </table>
</div>

<%@include file="libs/foother.jsp" %>
