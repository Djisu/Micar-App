using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//using System.Web.UI;
using System.Web.UI.WebControls;
using Transport;
using System.Configuration.Assemblies;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Net;

using System.Web.Providers;
using System.Web.Security;

namespace MiCar
{
    public partial class frmRoleUser1 : System.Web.UI.Page
    {
        public string varPageName;
        public string connectionString = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            connectionString = WebConfigurationManager.ConnectionStrings["FleetConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);

            try
            {
                HttpCookie cookie = Request.Cookies["UserName"];

                string varName = "";
                if (cookie != null)
                {
                    varName = cookie["varUserName"];
                    txtUserLabel.Text = varName;
                }
                else
                {
                    txtUserLabel.Text = "No cookies found";
                }


                varPageName = "Add User to a Role";
                //**********************************************************
                // Create the Command.
                string insertSQL = "select * from tb_RoleUser where userid=@userid";

                SqlCommand cmd = new SqlCommand(insertSQL, con);
                cmd.Parameters.AddWithValue("@userid", txtUserLabel.Text);
                SqlDataReader reader;
                con.Open();
                reader = cmd.ExecuteReader();
                reader.Read();


                if (reader.HasRows)
                {
                    string varRole = (string)reader["role"];

                    string query = "SELECT * FROM operator_permission where role=@role and menus=@menus";
                    SqlConnection con1 = new SqlConnection(connectionString);
                    SqlCommand cmd1 = new SqlCommand(query, con1);
                    cmd1.Parameters.AddWithValue("@role", varRole);
                    cmd1.Parameters.AddWithValue("@menus", varPageName);
                    SqlDataReader readerPermissions;
                    con1.Open();
                    readerPermissions = cmd1.ExecuteReader();
                    readerPermissions.Read();

                    if (!readerPermissions.HasRows)
                    {
                        lblResults1.Text = "No permissions found for role " + varRole;
                    }
                    else
                    {
                        if ((string)readerPermissions["createflag"] == "false")
                        {
                            cmdAdd.Visible = false;
                        }
                        else
                        {
                            cmdAdd.Visible = true;
                        }

                        if ((string)readerPermissions["readflag"] == "false")
                        {
                            GridView1.Visible = false;
                        }
                        else
                        {
                            GridView1.Visible = true;
                        }

                        //if ((string)readerPermissions["deleteflag"] == "false")
                        //{
                        //    cmdDelete.Visible = false;
                        //}
                        //else
                        //{
                        //    cmdDelete.Visible = true;
                        //}

                    }
                }
            }
            catch (Exception err)
            {
                EventLog log = new EventLog();
                log.Source = "Stock Sales";
                log.WriteEntry(err.Message, EventLogEntryType.Error);

                return;
            }
            finally
            {
                con.Close();
            }
        }

        protected void cmdAdd_Click(object sender, EventArgs e)
        {
            if (cboOperatorId.Text == null)
            {
                lblResults1.Text = "User id  cannot be empty";
            }

            if (cboRole.Text == null)
            {
                lblResults1.Text = "Role cannot be empty";
            }

            RoleUser DB = new RoleUser();
            string varAddRole = DB.AddRoleUser(cboOperatorId.Text, cboRole.Text, txtUserLabel.Text);

            // Fill the DataSet.
            DataSet ds = new DataSet();
            ds = DB.FindTable();
            //adapter.Fill(ds, "tb_Customer");
            // Perform the binding.
            GridView1.DataSource = ds;
            GridView1.DataBind();


            lblResults1.Text = "Operation successful";
        }

        protected void cmdDelete_Click1(object sender, EventArgs e)
        {
            if (cboOperatorId.Text == null)
            {
                lblResults1.Text = "User id  cannot be empty";
            }

            if (cboRole.Text == null)
            {
                lblResults1.Text = "Role cannot be empty";
            }

            RoleUser DB = new RoleUser();
            string varDeleteRole = DB.DeleteRole(cboOperatorId.Text, cboRole.Text, txtUserLabel.Text);

            // Fill the DataSet.
            DataSet ds = new DataSet();
            ds = DB.FindTable();
            //adapter.Fill(ds, "tb_Customer");
            // Perform the binding.
            GridView1.DataSource = ds;
            GridView1.DataBind();

            lblResults1.Text = "Operation successful";
        }
        protected void cmdExit_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}