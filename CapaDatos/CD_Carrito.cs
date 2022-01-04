using CapaModelo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class CD_Carrito
    {
        public static CD_Carrito _instancia = null;

        private CD_Carrito()
        {

        }
        public static CD_Carrito Instancia
        {
            get
            {
                if (_instancia == null)
                {
                    _instancia = new CD_Carrito();
                }
                return _instancia;
            }
        }

        public bool Carrito(Carrito oRol)
        {
            bool respuesta = true;
            using (SqlConnection oConexion = new SqlConnection(Conexion.CN))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("usp_Carrito", oConexion);
                    cmd.Parameters.AddWithValue("idProducto", oRol.idProducto);
                    cmd.Parameters.AddWithValue("idUsuario", oRol.idUsuario);
                    cmd.Parameters.AddWithValue("precio", oRol.Precio);
                    cmd.Parameters.AddWithValue("cantidad", oRol.Cantidad);
                    cmd.Parameters.AddWithValue("total", oRol.Total);
                    cmd.Parameters.AddWithValue("estado", "COMPRADO");

                    cmd.Parameters.Add("Resultado", SqlDbType.Bit).Direction = ParameterDirection.Output;

                    cmd.CommandType = CommandType.StoredProcedure;

                    oConexion.Open();

                    cmd.ExecuteNonQuery();

                    respuesta = Convert.ToBoolean(cmd.Parameters["Resultado"].Value);

                }
                catch (Exception ex)
                {
                    respuesta = false;
                }

            }

            return respuesta;

        }

    }
     
}
