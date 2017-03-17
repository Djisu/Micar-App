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

namespace MiCar
{
    public partial class frmTypes1 : System.Web.UI.Page
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
                txtUserlabel.Text  = varName;
            }
            else
            {
                txtUserlabel.Text  = "No cookies found";
            }


            varPageName = "Machine Types";
            //**********************************************************
            // Create the Command.
            string insertSQL = "select * from tb_RoleUser where userid=@userid";

            SqlCommand cmd = new SqlCommand(insertSQL, con);
            cmd.Parameters.AddWithValue("@userid", txtUserlabel.Text );
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
                    lblResults.Text = "No permissions found for role " + varRole;
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

                    if ((string)readerPermissions["deleteflag"] == "false")
                    {
                        cmdDelete.Visible = false;
                    }
                    else
                    {
                        cmdDelete.Visible = true;
                    }
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
            clsTypes DB = new clsTypes();

            try
            {

                if (txtTypesId.Text == null)  //cboitem, lblUnitcost,txtquantity,txtregno,dtdate,txtAmount
                {
                    lblResults.Text = "Enter the manufacturer";
                }
                if (txtTypesId.GetType() != typeof(String))
                {
                    lblResults.Text = "Enter the manufacturer";
                }


                if (txtName.Text == null)
                {
                    lblResults.Text = "The Manufacturer cannot be empty";
                }
                if (txtName.GetType() != typeof(string))
                {
                    lblResults.Text = "Enter the Manufacturer";
                }



                string varResponse = DB.Add_rec(txtTypesId.Text, txtName.Text);
                // Fill the DataSet.
                DataSet ds = new DataSet();
                ds = DB.FindTable();
                //adapter.Fill(ds, "tb_Customer");
                // Perform the binding.
                GridView1.DataSource = ds;
                GridView1.DataBind();

                lblResults.Text = "Operation successful";
                return;
            }
            catch (FormatException err)
            {
                EventLog log = new EventLog();
                log.Source = "Milorry Frontend";
                log.WriteEntry(err.Message, EventLogEntryType.Error);
            }
        }

        protected void cmdEdit_Click(object sender, EventArgs e)
        {
            clsTypes DB = new clsTypes();

            try
            {

                if (txtTypesId.Text == null)  //cboitem, lblUnitcost,txtquantity,txtregno,dtdate,txtAmount
                {
                    lblResults.Text = "Enter the manufacturer";
                }
                if (txtTypesId.GetType() != typeof(String))
                {
                    lblResults.Text = "Enter the manufacturer";
                }


                if (txtName.Text == null)
                {
                    lblResults.Text = "The Manufacturer cannot be empty";
                }
                if (txtName.GetType() != typeof(string))
                {
                    lblResults.Text = "Enter the Manufacturer";
                }



                string varResponse = DB.Delete_rec(txtTypesId.Text);
                // Fill the DataSet.
                DataSet ds = new DataSet();
                ds = DB.FindTable();
                //adapter.Fill(ds, "tb_Customer");
                // Perform the binding.
                GridView1.DataSource = ds;
                GridView1.DataBind();

                lblResults.Text = "Operation successful";
                return;
            }
            catch (FormatException err)
            {
                EventLog log = new EventLog();
                log.Source = "Milorry Frontend";
                log.WriteEntry(err.Message, EventLogEntryType.Error);
            }
        }
    }
}
   