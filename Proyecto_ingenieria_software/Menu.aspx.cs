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
    public partial class Menu : System.Web.UI.Page
    {
        private clsGeneral _General = new clsGeneral();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["usuario"] == null)
                    Response.Redirect("Login.aspx");
                else
                {
                    DataTable dtNombreRol = _General.consultaNombreDeRol(Session["usuario"].ToString());
                    foreach (DataRow rowNRol in dtNombreRol.Rows)
                    {
                        lblNombreDeRol.Text = rowNRol["DESCRIPCION"].ToString();
                        Session["Rol"] = lblNombreDeRol.Text.Trim();
                    }
                }
            }
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Session["usuario"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}