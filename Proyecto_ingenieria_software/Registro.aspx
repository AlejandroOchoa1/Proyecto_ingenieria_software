<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Proyecto_ingenieria_software.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>:: Registro de usuario ::</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="Content/bootstrap.min.css" rel="stylesheet">
    <link href="Content/bootstrap-datepicker3.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.js"></script>
    <script src="Scripts/bootstrap.bundle.min.js"></script>
    <script src="Scripts/umd/popper.min.js"></script>
    <script src="Scripts/bootstrap-datepicker.js"></script>
    <script src="Scripts/bootstrap-datepicker.es.min.js"></script>
    <script>
        function verModal() {
            console.log("entre");
            //var myModal = new bootstrap.Modal(document.getElementById('myModal'), {
            //    keyboard: false
            //});
            $('#modal1').modal('show');
            console.log("termine");
        }
        function cerrarModal() {
            $('#modal1').modal('hide');
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class=" panel panel-default" style="margin-bottom: 10px; margin-top: 10px; margin-left: 10px; margin-right: 10px;">
            <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <div class="row" style="margin-top: 10px;">
                        <div class="col-sm-12">
                            <label for="txtUsuario" class="form-label">Usuario</label>
                            <asp:TextBox class="form-control" ID="txtUsuario" runat="server" AutoCompleteType="None"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 10px;">
                        <div class="col-sm-12">
                            <label for="txtContrasenia" class="form-label">Contraseña</label>
                            <asp:TextBox runat="server" type="password" class="form-control" ID="txtContrasenia" AutoCompleteType="None"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 10px;">
                        <div class="col-sm-12">
                            <label for="txtNombre" class="form-label">Nombre</label>
                            <asp:TextBox runat="server" class="form-control" ID="txtNombre" AutoCompleteType="None"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 10px;">
                        <div class="col-sm-12">
                            <label for="txtApellido" class="form-label">Apellido</label>
                            <asp:TextBox runat="server" class="form-control" ID="txtApellido" AutoCompleteType="None"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 10px;">
                        <div class="col-sm-12">
                            <label for="txtFechaNacimiento" class="form-label">Fecha nacimiento</label>
                            <div class="input-group date">
                                <asp:TextBox runat="server" class="form-control" ID="txtFechaNacimiento" AutoCompleteType="None"></asp:TextBox>
                                <span class="input-group-addon"><i class="calendar-minus"></i></span>
                            </div>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 10px;">
                        <div class="col-sm-12">
                            <label for="txtDireccion" class="form-label">Dirección</label>
                            <asp:TextBox runat="server" class="form-control" ID="txtDireccion" AutoCompleteType="None"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 10px;">
                        <div class="col-sm-12">
                            <label for="txtDpi" class="form-label">Documento de identificacion personal</label>
                            <asp:TextBox runat="server" class="form-control" ID="txtDpi" AutoCompleteType="None"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 10px;">
                        <div class="col-sm-12">
                            <label for="ddlSexo" class="form-label">Sexo</label>
                            <asp:DropDownList runat="server" ID="ddlSexo" CssClass="form-control"></asp:DropDownList>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 50px;">
                        <div class="col-sm-12">
                            <asp:Button runat="server" id="btnGuardar" class="btn btn-block btn-outline-success" Text="Guardar" OnClick="btnGuardar_Click"></asp:Button>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 50px;">
                        <div class="col-sm-12">
                            <asp:Button runat="server" id="btnCancelar" class="btn btn-block btn-outline-danger" Text="Regresar" OnClick="btnCancelar_Click"></asp:Button>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3"></div>
            </div>
        </div>

        <div id="modal1" class="modal fade" tabindex="-1" aria-hidden="true" data-backdrop="static" data-keyboard="false">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Mensaje</h5>
                <button type="button" class="btn-close" aria-label="Close" onclick="cerrarModal()"><span aria-hidden="true">&times;</span></button>
              </div>
              <div class="modal-body">
                <asp:Label ID="lblMensaje" runat="server"></asp:Label>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-danger" onclick="cerrarModal()">Cerrar</button>
              </div>
            </div>
          </div>
        </div>
    </form>
    <script type="text/javascript">
        $(document).ready(function () {
            $('.input-group.date').datepicker({
                format: "yyyy-mm-dd",
                todayBtn: "linked",
                clearBtn: true,
                language: "es",
                orientation: "top",
                autoclose: true,
                todayHighlight: true,
                toggleActive: true
            });
        });

        var prm = Sys.WebForms.PageRequestManager.getInstance();
        prm.add_endRequest(function () {
            $('.input-group.date').datepicker({
                format: "yyy-mm-dd",
                todayBtn: "linked",
                clearBtn: true,
                language: "es",
                orientation: "top",
                autoclose: true,
                todayHighlight: true,
                toggleActive: true
            });
        });
    </script>
</body>
</html>
