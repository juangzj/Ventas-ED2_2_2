
package mundo;

import Conexion.Conectar;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Usuario 1
 */
public class GestionarInicioSesion {

    //Meotodo constructor vacio
    public GestionarInicioSesion() {
    }
    
    
    /**
     * Metodo para registrar un nuevo usuario.
     * Este metodo verifica si el id o el correo ya esta en uso, en caso de que ya este en uso, no se podrá registrar el usuario
     * @param nombre
     * @param email
     * @param contrasenia
     * @param rol
     * @return 
     */
     public boolean registrarUsuario(String nombre, String email, String contrasenia, String rol) {
        boolean usuarioRegistrado = false;

        Connection conexion = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            // Obtener la conexión a la base de datos
            conexion = Conectar.getConexion();

            // Verificar si el correo ya está registrado
            String queryVerificarEmail = "SELECT COUNT(*) FROM usuarios WHERE email = ?";
            pstmt = conexion.prepareStatement(queryVerificarEmail);
            pstmt.setString(1, email);
            rs = pstmt.executeQuery();

            if (rs.next() && rs.getInt(1) > 0) {
                System.out.println("El correo ya está registrado.");
                return usuarioRegistrado; // Salir si el correo ya existe
            }

            // Aquí puedes agregar más validaciones, como verificar el ID si es necesario

            // Insertar el nuevo usuario
            String queryInsertarUsuario = "INSERT INTO usuarios (nombre, email, contrasenia, rol) VALUES (?, ?, ?, ?)";
            pstmt = conexion.prepareStatement(queryInsertarUsuario);
            pstmt.setString(1, nombre);
            pstmt.setString(2, email);
            pstmt.setString(3, contrasenia); // Asegúrate de encriptar la contraseña aquí
            pstmt.setString(4, rol);
            int filasInsertadas = pstmt.executeUpdate();

            if (filasInsertadas > 0) {
                usuarioRegistrado = true; // Registro exitoso
                System.out.println("Usuario registrado exitosamente.");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Cerrar recursos
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conexion != null) conexion.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return usuarioRegistrado;
    }

    // Método para iniciar sesión
    public String ingresar(String correo, String contrasenia) {
        String rolUsuario = null; // Variable para almacenar el rol del usuario
        Connection conexion = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            conexion = Conectar.getConexion(); // Método para obtener la conexión

            // Consulta SQL para verificar el usuario
            String sql = "SELECT rol, contrasenia FROM usuarios WHERE email = ? AND contrasenia = ?"; 
            preparedStatement = conexion.prepareStatement(sql);
            preparedStatement.setString(1, correo);
            preparedStatement.setString(2, contrasenia); 

            // Ejecutar la consulta
            resultSet = preparedStatement.executeQuery();

            // Verificar si hay resultados
            if (resultSet.next()) {
                rolUsuario = resultSet.getString("rol"); // Obtener el rol del usuario
            } else {
                System.out.println("Usuario no encontrado o contraseña incorrecta.");
            }
        } catch (SQLException e) {
            System.out.println("Error en la consulta: " + e.getMessage());
        } finally {
            // Cerrar recursos
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (preparedStatement != null) {
                    preparedStatement.close();
                }
                if (conexion != null) {
                    conexion.close();
                }
            } catch (SQLException e) {
                System.out.println("Error al cerrar recursos: " + e.getMessage());
            }
        }

        return rolUsuario; // Devuelve el rol del usuario o null si no se encontró
    }

}
