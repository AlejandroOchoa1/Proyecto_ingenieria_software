using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proyecto_ingenieria_software.BE;

namespace Proyecto_ingenieria_software
{
    public partial class frmUsuarios : System.Web.UI.Page
    {
        clsGeneral _General = new clsGeneral();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["usuario"] == null)
                    Response.Redirect("Login.aspx");
                else
                {
                    llenaDllSexo();
                    llenaDllRol();
                    limpiaCampos();
                }
            }
        }
        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Session["usuario"] = null;
            Response.Redirect("Login.aspx");
        }
        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                String respuesta = validaCampos();
                if (String.IsNullOrEmpty(respuesta))
                {
                    DataTable dtID = _General.insertaEmpleado
                        (
                        txtNombre.Text.Trim(), txtApellido.Text.Trim(), txtFechaNacimiento.Text.Trim(),
                        txtDireccion.Text.Trim(), txtDpi.Text.Trim(), ddlSexo.SelectedIndex
                        );
                    if (dtID.Rows.Count > 0)
                    {
                        int idRol = ddlRol.SelectedIndex;
                        int registros = _General.insertaUsuario(txtUsuario.Text.Trim(), txtContrasenia.Text.Trim(), idRol, ddlSexo.SelectedIndex);
                        limpiaCampos();
                        lblMensaje.Text = "Usuario creado con éxito.";
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "verModal()", true);
                    }
                }
                else
                {
                    lblMensaje.Text = respuesta;
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "verModal()", true);
                }
            }
            catch (Exception ex)
            {

            }
        }
        private String validaCampos()
        {
            if (String.IsNullOrEmpty(txtUsuario.Text)) return "Debe ingresar un nombre de usuario.";
            if (String.IsNullOrEmpty(txtContrasenia.Text)) return "Debe ingresar una contraseña.";
            if (String.IsNullOrEmpty(txtNombre.Text)) return "Debe ingresar su nombre propio.";
            if (String.IsNullOrEmpty(txtFechaNacimiento.Text)) return "Debe ingresar su apellido.";
            if (String.IsNullOrEmpty(txtDireccion.Text)) return "Debe ingresar una dirección.";
            if (String.IsNullOrEmpty(txtDpi.Text)) return "Debe ingresar su DPI.";
            if (ddlSexo.SelectedIndex == 0) return "Debe seleccionar un sexo.";
            if (ddlRol.SelectedIndex == 0) return "Debe seleccionar un rol.";
            return String.Empty;
        }
        private void llenaDllSexo()
        {
            DataTable dtSexo = _General.consultaSexo();
            ListItem item = new ListItem("Seleccione un registro", "0");
            ddlSexo.Items.Add(item);
            foreach (DataRow rowSexo in dtSexo.Rows)
            {
                item = new ListItem(rowSexo["Descripcion"].ToString().Trim(), rowSexo["IdSexo"].ToString().Trim());
                ddlSexo.Items.Add(item);
            }
        }
        private void llenaDllRol()
        {
            DataTable dtRol = _General.consultaRol();
            ListItem item = new ListItem("Seleccione un registro", "0");
            ddlRol.Items.Add(item);
            foreach (DataRow rowRol in dtRol.Rows)
            {
                item = new ListItem(rowRol["Descripcion"].ToString().Trim(), rowRol["IdRol"].ToString().Trim());
                ddlRol.Items.Add(item);
            }
        }
        private void limpiaCampos()
        {
            txtUsuario.Text = String.Empty;
            txtContrasenia.Text = String.Empty;
            txtNombre.Text = String.Empty;
            txtApellido.Text = String.Empty;
            txtFechaNacimiento.Text = String.Empty;
            txtDpi.Text = String.Empty;
            txtDireccion.Text = String.Empty;
            ddlSexo.SelectedIndex = 0;
        }
    }
}