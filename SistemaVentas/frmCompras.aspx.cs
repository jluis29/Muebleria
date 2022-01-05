using CapaDatos;
using CapaModelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaVentas
{
    public partial class frmCompras : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }


 
        [WebMethod]
        public static Respuesta<List<Carrito>> Obtener(Usuario usuario)
        {
            List<Carrito> oListaCarrito = new List<Carrito>();
            oListaCarrito = CD_Compras.Instancia.ObtenerCompras(usuario);
            if (oListaCarrito != null)
            {
                return new Respuesta<List<Carrito>>() { estado = true, objeto = oListaCarrito };
            }
            else
            {
                return new Respuesta<List<Carrito>>() { estado = false, objeto = null };
            }
        }

    }
}