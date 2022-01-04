using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaModelo
{
    public class Carrito
    {
        public int idCarrito { get; set; }
        public int idProducto { get; set; }
        public int idUsuario { get; set; }
        public Decimal Precio { get; set; }
        public int Cantidad { get; set; }
        public Decimal Total { get; set; }
        public string Estado { get; set; }
    }
}
