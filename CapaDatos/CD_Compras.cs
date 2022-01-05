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
    public class CD_Compras
    {
        public static CD_Compras _instancia = null;

        private CD_Compras()
        {

        }

        public static CD_Compras Instancia
        {
            get
            {
                if (_instancia == null)
                {
                    _instancia = new CD_Compras();
                }
                return _instancia;
            }
        }


        public List<Carrito> ObtenerCompras(Usuario oRol)
        {
            List<Carrito> rptListaCarrito = new List<Carrito>();
            using (SqlConnection oConexion = new SqlConnection(Conexion.CN))
            {
                SqlCommand cmd = new SqlCommand("usp_ObtenerCompras", oConexion);
                cmd.Parameters.AddWithValue("IdUsuario", oRol.IdUsuario);
                cmd.CommandType = CommandType.StoredProcedure;

                try
                {
                    oConexion.Open();
                    SqlDataReader dr = cmd.ExecuteReader();

                    while (dr.Read())
                    {
                        rptListaCarrito.Add(new Carrito()
                        {
                            Nombre = dr["Nombre"].ToString(),
                            Precio = Convert.ToDecimal(dr["Precio"].ToString()),
                            Cantidad = Convert.ToInt32(dr["Cantidad"].ToString()),
                            Total = Convert.ToDecimal(dr["Total"].ToString()),
                            //Fecha = DateTime.Parse(dr["Fecha"].ToString()),
                            Imagen = dr["Imagen"].ToString()

                        });
                    }
                    dr.Close();

                    return rptListaCarrito;

                }
                catch (Exception ex)
                {
                    rptListaCarrito = null;
                    return rptListaCarrito;
                }
            }
        }


    }
}
