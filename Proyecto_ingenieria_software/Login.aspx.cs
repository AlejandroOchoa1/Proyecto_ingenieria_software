using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proyecto_ingenieria_software.BE;

namespace Proyecto_ingenieria_software
{
    public partial class Login : System.Web.UI.Page
    {
        clsGeneral _General = new clsGeneral();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIniciarSesion_Click(object sender, EventArgs e)
        {
            if(_General.validaUsuario(txtUsuario.Text, txtContrasenia.Text))
            {
                Session["usuario"] = txtUsuario.Text;
                Response.Redirect("Menu.aspx");
            }
        }

        protected void btnRegistrarse_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro.aspx");
        }
    }
}