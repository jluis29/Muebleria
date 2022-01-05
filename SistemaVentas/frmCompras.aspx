<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaster.Master" AutoEventWireup="true" CodeBehind="frmCompras.aspx.cs" Inherits="SistemaVentas.frmCompras" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row" style="margin-right: 0px;margin-left: 0px;">
            <div class="col-sm-12">
               <div class="card">
                  <div class="card-header" style="font-weight: 600;font-size:45px;
                font-family: 'Lato-Black';">
                    Detalle de Compras
                  </div>
                  <div class="card-body">
                        <div class="row mt-3">
                            <div class="col-sm-12">


                                <table id="tbCompras" class="table table-striped table-bordered nowrap" style="width:100%">
                                    <thead>
                                        <tr>
                                            <th>Nombre</th>
                                            <th>Precio</th>
                                            <th>Cantidad</th>
                                            <th>Total</th>
                                            <th>Fecha</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                  </div>
                  <div class="card-footer">
                  </div>
                </div>
            </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="modalrol" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
      <%--<div class="modal-dialog modal-dialog-centered" role="document">--%>
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Rol</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form>
              <input id="txtIdRol" class="model" name="IdRol" value="0" type="hidden" />
              <div class="form-group">
                <label for="txtDescripcion" class="col-form-label">Descripcion:</label>
                <input type="text" class="form-control form-control-sm model" id="txtDescripcion" name="Descripcion">
              </div>
              <div class="form-group">
                <label for="cboEstado" class="col-form-label">Activo:</label>
                <select class="form-control form-control-sm model" id="cboEstado" name="Activo">
                    <option value="1">Activo</option>
                    <option value="0">No Activo</option>
                </select>
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-sm btn-secondary" data-dismiss="modal">Cerrar</button>
            <button id="btnGuardarCambios" type="button" class="btn btn-sm btn-primary">Guardar Cambios</button>
          </div>
        </div>
      </div>
    </div>

    <script src="Controlador/frmCompras/frmCompras.js"></script>
</asp:Content>
