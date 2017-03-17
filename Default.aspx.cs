using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiCar
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["ResponseCookie"];

            string responsex = "";
            if (cookie != null)
            {
                responsex = cookie["ResponseCookie"];
                lblResult.Text = responsex;
            }
            else
            {
                lblResult.Text = "";
            }
        }
    }
}