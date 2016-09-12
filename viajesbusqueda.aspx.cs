using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class viajesbusqueda : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Calendar1.Visible = false;
            Calendar2.Visible = false;
                }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        if (Calendar2.Visible)
        {
            Calendar2.Visible = false;
        }
        else
        {
            Calendar2.Visible = true;
        }

    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtida.Text = Calendar1.SelectedDate.ToLongDateString();
        Calendar1.Visible = false;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Calendar1.Visible)
        {
            Calendar1.Visible = false;
        }
        else
        {
            Calendar1.Visible = true;
        }

    }

    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        txtregreso.Text = Calendar1.SelectedDate.ToLongDateString();
        Calendar2.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("resultadoviaje.aspx");
    }
}
