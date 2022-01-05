<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaster.Master" AutoEventWireup="true" CodeBehind="frmCatalogo.aspx.cs" Inherits="SistemaVentas.frmCatalogo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row" style="margin-right: 0px;margin-left: 0px;">
            <div class="col-12">
               <div class="card">
                  <div class="card-header" style="font-weight: 600;text-align: center;vertical-align: middle;font-size:45px;
                font-family: 'Lato-Black';">
                    CASA GRANDE

                  </div>

                </div>


                <table id="tbProducto" class="table table-bordered" style="width:100%;">                               
                            
                       <thead>
                                        <tr>       
                                            <th style='text-align: center;vertical-align: middle;font-size: 20px;'>Nombre</th>
                                            <th style='text-align: center;vertical-align: middle;font-size: 20px;'>Descripcion</th>                                           
                                            <th style='text-align: center;vertical-align: middle;font-size: 20px;'>Precio</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                       <tbody>




                             </tbody>
                    </table>
                 </div>
                    
    </div>




<div class="modal fade" id="modalCompra" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
      <%--<div class="modal-dialog modal-dialog-centered" role="document">--%>
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">COMPRAR</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form>

              <img style='height: 200px; width: 300px;margin-left: 80px;' id="imagen" src="">


              <div class="row">

                   <div class="col-6">
                    <label for="txtNombre" class="col-form-label">Nombre:</label>
                    <input type="text" class="form-control form-control-sm model" id="txtNombre" name="Nombre" readonly>
                  </div>
                      <div class="col-6">
                    <label for="txtDescripcion" class="col-form-label">Descripcion:</label>
                    <input type="text" class="form-control form-control-sm model" id="txtDescripcion" name="Descripcion" readonly>
                  </div>
              </div>
              
                <div class="row">
                   <div class="col-4">
                    <label for="txtPrecio" class="col-form-label">Precio:</label>
                    <input type="text" class="form-control form-control-sm model" id="txtPrecio" name="Precio" readonly>
                  </div>
                      <div class="col-4">
                    <label for="txtCantidad" class="col-form-label">Cantidad:</label>
                    <input type="text"   class="search form-control form-control-sm model" id="txtCantidad" onkeydown="search(this)"" name="Cantidad">
                  </div>
                     <div class="col-4">
                    <label for="txtTotal" class="col-form-label">Total:</label>
                    <input type="text" class="form-control form-control-sm model" id="txtTotal" name="Total" readonly>
                  </div>
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-sm btn-secondary" data-dismiss="modal">Cancelar</button>
            <button id="btnGuardarCompra" type="button" class="btn btn-sm btn-primary">Comprar</button>
          </div>
        </div>
      </div>
    </div>











     <script src="Controlador/frmCatalogo/frmCatalogo.js"></script>

</asp:Content>
