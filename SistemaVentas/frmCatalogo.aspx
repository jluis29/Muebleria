<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaster.Master" AutoEventWireup="true" CodeBehind="frmCatalogo.aspx.cs" Inherits="SistemaVentas.frmCatalogo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
            <div class="col-sm-12">
               <div class="card">
                  <div class="card-header">
                    Catologo Casa Grande
                  </div>

                
                   <table id="tbProducto" class="table table-striped table-bordered nowrap compact" style="width:100%">                               
                            
                       <thead>
                                        <tr>       
                                            <th>Nombre</th>
                                            <th>Descripcion</th>                                           
                                            <th>Precio</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                       <tbody>




                             </tbody>
                    </table>


             
    </div>
     <script src="Controlador/frmCatalogo/frmCatalogo.js"></script>

</asp:Content>
