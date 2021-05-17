<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Proyecto_ingenieria_software.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>:: Menú ::</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="Content/bootstrap.min.css" rel="stylesheet">
    <script src="Scripts/jquery-3.0.0.js"></script>
    <script src="Scripts/bootstrap.bundle.min.js"></script>
    <script src="Scripts/umd/popper.min.js"></script>
    <script>
        function onmouseoverusuario() {
            let pnlUsuario = document.getElementById("pnlUsuario");
            pnlUsuario.className = "card text-white bg-success mb-3";
        }
        function onmouseoutusuario() {
            let pnlUsuario = document.getElementById("pnlUsuario");
            pnlUsuario.className = "card text-black-50 border-success mb-3";
        }
        function onmouseoverrol() {
            let pnlRol = document.getElementById("pnlRol");
            pnlRol.className = "card text-white bg-primary mb-3";
        }
        function onmouseoutrol() {
            let pnlRol = document.getElementById("pnlRol");
            pnlRol.className = "card text-black-50 border-primary mb-3";
        }
        function onmouseoverempleado() {
            let pnlEmpleado = document.getElementById("pnlEmpleado");
            pnlEmpleado.className = "card text-white bg-warning mb-3";
        }
        function onmouseoutempleado() {
            let pnlEmpleado = document.getElementById("pnlEmpleado");
            pnlEmpleado.className = "card text-black-50 border-warning mb-3";
        }
        function onmouseovertecnico() {
            let pnlTecnico = document.getElementById("pnlTecnico");
            pnlTecnico.className = "card text-white bg-danger mb-3";
        }
        function onmouseouttecnico() {
            let pnlTecnico = document.getElementById("pnlTecnico");
            pnlTecnico.className = "card text-black-50 border-danger mb-3";
        }
        function onmouseovertipodegestion() {
            let pnlTipoDeGestion = document.getElementById("pnlTipoDeGestion");
            pnlTipoDeGestion.className = "card text-white bg-info mb-3";
        }
        function onmouseouttipodegestion() {
            let pnlTipoDeGestion = document.getElementById("pnlTipoDeGestion");
            pnlTipoDeGestion.className = "card text-black-50 border-info mb-3";
        }
        function onmouseoveractividad() {
            let pnlActividad = document.getElementById("pnlActividad");
            pnlActividad.className = "card text-white bg-dark mb-3";
        }
        function onmouseoutactividad() {
            let pnlActividad = document.getElementById("pnlActividad");
            pnlActividad.className = "card text-black-50 border-dark mb-3";
        }
        function onmouseoverestadodegestion() {
            let pnlEstadoDeGestion = document.getElementById("pnlEstadoDeGestion");
            pnlEstadoDeGestion.className = "card text-black-50 bg-light mb-3";
        }
        function onmouseoutestadodegestion() {
            let pnlEstadoDeGestion = document.getElementById("pnlEstadoDeGestion");
            pnlEstadoDeGestion.className = "card text-black-50 border-light mb-3";
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class=" panel panel-default" style="margin-bottom: 10px; margin-top: 10px; margin-left: 10px; margin-right: 10px;">
            <div class="row" style="margin-bottom: 10px; margin-left: 3px;">
                <div class="col-sm-2">
                    <div class="btn-group btn-breadcrumb">
                        <asp:Button runat="server" id="btnMenuPrincipals" class="btn btn-block btn-outline-info" Text="Menú principal"></asp:Button>
                        <asp:Label runat="server" ID="lblNombreDeRol"></asp:Label>
                    </div>
                </div>
                <div class="col-sm-8"></div>
                <div class="col-sm-2">
                    <asp:Button runat="server" id="btnCerrarSesion" class="btn btn-block btn-outline-danger" Text="Cerrar sesión" OnClick="btnCerrarSesion_Click"></asp:Button>
                </div>
            </div>
            <div class="row" style="margin-top: 10px; margin-top: 10px; margin-left: 10px; margin-right: 10px;">

                <div class="col-lg-2 col-md-2" runat="server" id="usuario"
                    style="" onmouseover="onmouseoverusuario()" onmouseout="onmouseoutusuario()">
                    <a href="frmUsuarios.aspx" style="text-decoration: none;">
                        <div class="card text-black-50 border-success mb-3" style="max-width: 18rem;" id="pnlUsuario">
                            <div class="card-header"></div>
                            <div class="card-body">
                                <h5 class="card-title">Usuarios</h5>
                                <p class="card-text">Mantenimiento de usuarios.</p>
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-lg-2 col-md-2" runat="server" id="Div1" style=""
                     onmouseover="onmouseoverrol()" onmouseout="onmouseoutrol()">
                    <a href="frmTipoFacturacion.aspx" style="text-decoration: none;">
                        <div class="card text-black-50 border-primary mb-3" style="max-width: 18rem;"  id="pnlRol">
                            <div class="card-header"></div>
                            <div class="card-body">
                                <h5 class="card-title">Roles</h5>
                                <p class="card-text">Mantenimiento de roles.</p>
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-lg-2 col-md-2" runat="server" id="Div2" style=""
                     onmouseover="onmouseoverempleado()" onmouseout="onmouseoutempleado()">
                    <a href="frmTipoFacturacion.aspx" style="text-decoration: none;">
                        <div class="card text-black-50 border-warning mb-3" style="max-width: 18rem;" id="pnlEmpleado">
                            <div class="card-header"></div>
                            <div class="card-body">
                                <h5 class="card-title">Empleados</h5>
                                <p class="card-text">Mantenimiento de empleados.</p>
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-lg-2 col-md-2" runat="server" id="Div3" style=""
                     onmouseover="onmouseovertecnico()" onmouseout="onmouseouttecnico()">
                    <a href="frmTipoFacturacion.aspx" style="text-decoration: none;">
                        <div class="card text-black-50 border-danger mb-3" style="max-width: 18rem;" id="pnlTecnico">
                            <div class="card-header"></div>
                            <div class="card-body">
                                <h5 class="card-title">Técnicos</h5>
                                <p class="card-text">Mantenimiento de tecnicos.</p>
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-lg-2 col-md-2" runat="server" id="Div4" style=""
                    onmouseover="onmouseovertipodegestion()" onmouseout="onmouseouttipodegestion()">
                    <a href="frmTipoFacturacion.aspx" style="text-decoration: none;">
                        <div class="card text-black-50 border-info mb-3" style="max-width: 18rem;" id="pnlTipoDeGestion">
                            <div class="card-header"></div>
                            <div class="card-body">
                                <h5 class="card-title">Tipo de gestión</h5>
                                <p class="card-text">Mantenimiento de tipo de gestión.</p>
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-lg-2 col-md-2" runat="server" id="Div5" style=""
                    onmouseover="onmouseoveractividad()" onmouseout="onmouseoutactividad()">
                    <a href="frmTipoFacturacion.aspx" style="text-decoration: none;">
                        <div class="card text-black-50 border-dark mb-3" style="max-width: 18rem;" id="pnlActividad">
                            <div class="card-header"></div>
                            <div class="card-body">
                                <h5 class="card-title">Actividad</h5>
                                <p class="card-text">Mantenimiento de actividades.</p>
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-lg-2 col-md-2" runat="server" id="Div6" style=""
                    onmouseover="onmouseoverestadodegestion()" onmouseout="onmouseoutestadodegestion()">
                    <a href="frmTipoFacturacion.aspx" style="text-decoration: none;">
                        <div class="card text-black-50 border-light mb-3" style="max-width: 18rem;" id="pnlEstadoDeGestion">
                            <div class="card-header"></div>
                            <div class="card-body">
                                <h5 class="card-title">Estado de gestión</h5>
                                <p class="card-text">Mantenimiento de estado de gestión.</p>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
