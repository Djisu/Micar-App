using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Net;

using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace MiCar
{
    public partial class login3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtUserName.Focus();
        }

        protected void cmdLogin_Click(object sender, EventArgs e)
        {
            if (Membership.ValidateUser(txtUserName.Text, txtPassword.Text))
            {
                // Create the cookie object.
                HttpCookie cookie = new HttpCookie("UserName");
                // Set a value in it.
                cookie["varUserName"] = txtUserName.Text;
                Response.Cookies.Add(cookie);

                Response.Redirect("Default.aspx");
            }
            else
            {
                lblStatus.Text = "Invalid username or password.";
                int counter;

                if (ViewState["Counter"] == null)
                {
                    counter = 1;
                }
                else
                {
                    counter = (int)ViewState["Counter"] + 1;
                }

                ViewState["Counter"] = counter;
                if (counter == 3)
                {
                    txtUserName.Visible = false;
                    txtPassword.Visible = false;
                    lblStatus.Text = "Login aborted, See the administrator!!!.";
                }
            }
        }
    }
}