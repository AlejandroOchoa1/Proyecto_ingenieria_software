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
    public partial class Registro : System.Web.UI.Page
    {
        clsGeneral _General = new clsGeneral();
        protected void Page_Load(object sender, EventArgs e)
        {
            llenaDllSexo();
            limpiaCampos();
        }
        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
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
                    if(dtID.Rows.Count > 0)
                    {
                        int idRol = 2;
                        int registros = _General.insertaUsuario(txtUsuario.Text.Trim(), txtContrasenia.Text.Trim(), idRol, ddlSexo.SelectedIndex);
                        limpiaCampos();
                        lblMensaje.Text = "Usuario registrado con éxito.";
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "verModal()", true);
                    }
                }
                else
                {
                    lblMensaje.Text = respuesta;
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "verModal()", true);
                }
            }
            catch(Exception ex)
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
            return String.Empty;
        }
        private void llenaDllSexo()
        {
            DataTable dtSexo = _General.consultaSexo();
            ListItem item = new ListItem("Seleccione un registro", "0");
            ddlSexo.Items.Add(item);
            foreach(DataRow rowSexo in dtSexo.Rows)
            {
                item = new ListItem(rowSexo["Descripcion"].ToString().Trim(), rowSexo["IdSexo"].ToString().Trim());
                ddlSexo.Items.Add(item);
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