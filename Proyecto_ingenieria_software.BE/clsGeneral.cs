using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Proyecto_ingenieria_software.BE
{
    public class clsGeneral
    {
        clsConexion conexion = new clsConexion();
        #region Consultas
        public Boolean validaUsuario(String usuario, String contrasenia)
        {
            String consulta = String.Format(SQLConsultas.validaUsuario, usuario, contrasenia);
            DataTable dtUsuario = conexion.realizaConsulta(consulta);
            if (dtUsuario.Rows.Count == 0) return false;
            return true;
        }
        public DataTable consultaNombreDeRol(String usuario)
        {
            String consulta = String.Format(SQLConsultas.consultaNombreRol, usuario);
            return conexion.realizaConsulta(consulta);
        }
        public DataTable consultaID()
        {
            String consulta = String.Format(SQLConsultas.consultaIDInsertado);
            return conexion.realizaConsulta(consulta);
        }
        public DataTable consultaSexo()
        {
            String consulta = String.Format(SQLConsultas.consultaSexo);
            return conexion.realizaConsulta(consulta);
        }
        public DataTable consultaRol()
        {
            String consulta = String.Format(SQLConsultas.consultaRol);
            return conexion.realizaConsulta(consulta);
        }
        #endregion
        #region Actualiza
        #endregion
        #region Agregar
        public DataTable insertaEmpleado(String nombre, String apellido, String fechaNacimiento, String direccion, String dpi, int sexo)
        {
            String sentencia = String.Format(SQLConsultas.insertaEmpleado, nombre, apellido, fechaNacimiento, direccion, dpi, sexo);
            return conexion.realizaConsulta(sentencia);
        }
        public int insertaUsuario(String usuario, String contrasenia, int idRol, int idEmpleado)
        {
            String sentencia = String.Format(SQLConsultas.insertaUsuario, usuario, contrasenia, idRol, idEmpleado);
            return conexion.realizaDML(sentencia);
        }
        #endregion
        #region Eliminar
        #endregion
    }
}
