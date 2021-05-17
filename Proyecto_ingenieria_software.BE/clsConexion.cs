using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace Proyecto_ingenieria_software.BE
{
    public class clsConexion
    {
        private SqlConnection conexion = new SqlConnection("server=ACDI04\\SQLEXPRESS ; database=PROYECTO ; integrated security = true");
        private SqlConnection getConexion()
        {
            if (conexion == null)
            {
                conexion = new SqlConnection("server=ACDI04\\SQLEXPRESS ; database=PROYECTO ; integrated security = true");
            }
            return conexion;
        }
        private void desconectar()
        {
            conexion.Close();
        }
        private void conectar()
        {
            conexion.Open();
        }
        public DataTable realizaConsulta(String consulta)
        {
            try
            {
                conexion = getConexion();
                conectar();
                SqlCommand comando = new SqlCommand(consulta, conexion);
                SqlDataReader dr = comando.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);
                desconectar();
                return dt;
            }
            catch (Exception ex)
            {
                return null;
            }
        }
        public int realizaDML(String sentencia)
        {
            try
            {
                conexion = getConexion();
                conectar();
                SqlCommand comando = new SqlCommand(sentencia, conexion);
                int registros = comando.ExecuteNonQuery();
                desconectar();
                return registros;
            }
            catch (Exception ex)
            {
                return 0;
            }
        }
    }
}
