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
    public partial class frmFaultReporting : System.Web.UI.Page
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


            varPageName = "Fault Reporting Screen";
            //**********************************************************
            // Create the Command.
           AXcontrol DB = new AXcontrol();

            //**********************************************************
            // Create the Command.
            //string insertSQL = "select * from tb_RoleUser where userid=@userid";

            //SqlCommand cmd = new SqlCommand(insertSQL, con);
            //cmd.Parameters.AddWithValue("@userid", txtUserLabel.Text);
            //SqlDataReader reader;
            //con.Open();
            //reader = cmd.ExecuteReader();
            //reader.Read();
            string varUserPresence = DB.FindUserPresence(txtUserLabel.Text);

            if (varUserPresence.Length > 0)
            {
                string varRole = varUserPresence.ToString();  // (string)reader["role"];

                //string query = "SELECT * FROM operator_permission where role=@role and menus=@menus";
                //SqlConnection con1 = new SqlConnection(connectionString1);
                //SqlCommand cmd1 = new SqlCommand(query, con1);
                //cmd1.Parameters.AddWithValue("@role", varRole);
                //cmd1.Parameters.AddWithValue("@menus", varPageName1);
                //SqlDataReader readerPermissions;
                //con1.Open();
                //readerPermissions = cmd1.ExecuteReader();
                //readerPermissions.Read();


                DataSet ds = new DataSet();
                ds = DB.FindRoleMenus(varRole, varPageName);
                if (ds.Tables[0].Rows.Count == 0)
                {
                    lblResults.Text = "No permissions found for role " + varRole;
                }
                else
                {
                    string varMenu = DB.FindRoleMenusCreate(varRole, varPageName);
                    if (varMenu == "false")
                    {
                        cmdAdd.Visible = false;
                    }
                    else
                    {
                        cmdAdd.Visible = true;
                    }
                    varMenu = DB.FindRoleMenusRead(varRole, varPageName);
                    if (varMenu == "false")
                    {
                        GridView1.Visible = false;
                    }
                    else
                    {
                        GridView1.Visible = true;
                    }
                    varMenu = DB.FindRoleMenusUpdate(varRole, varPageName);
                    if (varMenu == "false")
                    {
                        cmdEdit.Visible = false;
                    }
                    else
                    {
                        cmdEdit.Visible = true;
                    }
                    varMenu = DB.FindRoleMenusDelete(varRole, varPageName);
                    if (varMenu == "false")
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
                log.Source = "Milorry System Frontend";
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
            clsFaultReporting DB = new clsFaultReporting();

            try
            {

                if (cboApprovedby == null)
                {
                    lblResults.Text = "The Approvedby cannot be empty";
                }
                if (cboApprovedby.GetType() != typeof(String))
                {
                    lblResults.Text = "Enter the Approvedby";
                }

                if (cboPreparedby == null)
                {
                    lblResults.Text = "The preparedby cannot be empty";
                }
                if (cboPreparedby.GetType() != typeof(String))
                {
                    lblResults.Text = "Enter the preparedby";
                }

                if (txtFault == null)
                {
                    lblResults.Text = "The fault no cannot be empty";
                }
                if (txtFault.GetType() != typeof(String))
                {
                    lblResults.Text = "Enter the fault";
                }
                if (txtCost == null)
                {
                    lblResults.Text = "The cost cannot be empty";
                }
                if (txtCost.GetType() != typeof(Decimal))
                {
                    lblResults.Text = "Enter the cost";
                }
                if (cboRegNo == null)
                {
                    lblResults.Text = "Registration no cannot be empty";
                }
                if (cboRegNo.GetType() != typeof(String))
                {
                    lblResults.Text = "Enter the Registration no";
                }

                if (cboDate == null)
                {
                    lblResults.Text = "date cannot be empty";
                }
                if (cboDate.GetType() != typeof(DateTime))
                {
                    lblResults.Text = "Enter the date";
                }


                if (txtPart == null)
                {
                    lblResults.Text = "Part cannot be empty";
                }
                if (txtPart.GetType() != typeof(Decimal))
                {
                    lblResults.Text = "Enter the part";
                }
                string varResponse = DB.Add_rec(cboRegNo.Text, DateTime.Parse(cboDate.Text), txtPart.Text, txtFault.Text, Decimal.Parse(txtCost.Text), cboPreparedby.Text, cboApprovedby.Text);
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
                log.Source = "Milorry Transport Management System";
                log.WriteEntry(err.Message, EventLogEntryType.Error);
            }
        }
        protected void cmdEdit_Click(object sender, EventArgs e)
        {
            clsFaultReporting DB = new clsFaultReporting();

            try
            {

                if (cboApprovedby == null)
                {
                    lblResults.Text = "The Approvedby cannot be empty";
                }
                if (cboApprovedby.GetType() != typeof(String))
                {
                    lblResults.Text = "Enter the Approvedby";
                }

                if (cboPreparedby == null)
                {
                    lblResults.Text = "The preparedby cannot be empty";
                }
                if (cboPreparedby.GetType() != typeof(String))
                {
                    lblResults.Text = "Enter the preparedby";
                }

                if (txtFault == null)
                {
                    lblResults.Text = "The fault no cannot be empty";
                }
                if (txtFault.GetType() != typeof(String))
                {
                    lblResults.Text = "Enter the fault";
                }
                if (txtCost == null)
                {
                    lblResults.Text = "The cost cannot be empty";
                }
                if (txtCost.GetType() != typeof(Decimal))
                {
                    lblResults.Text = "Enter the cost";
                }
                if (cboRegNo == null)
                {
                    lblResults.Text = "Registration no cannot be empty";
                }
                if (cboRegNo.GetType() != typeof(String))
                {
                    lblResults.Text = "Enter the Registration no";
                }

                if (cboDate == null)
                {
                    lblResults.Text = "date cannot be empty";
                }
                if (cboDate.GetType() != typeof(DateTime))
                {
                    lblResults.Text = "Enter the date";
                }


                if (txtPart == null)
                {
                    lblResults.Text = "Part cannot be empty";
                }
                if (txtPart.GetType() != typeof(Decimal))
                {
                    lblResults.Text = "Enter the part";
                }
                string varResponse = DB.Edit_rec(cboRegNo.Text, DateTime.Parse(cboDate.Text), txtPart.Text, txtFault.Text, Decimal.Parse(txtCost.Text), cboPreparedby.Text, cboApprovedby.Text);
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
                log.Source = "Milorry Transport Management System";
                log.WriteEntry(err.Message, EventLogEntryType.Error);
            }
        }
        protected void cmdDelete_Click(object sender, EventArgs e)
        {
            clsFaultReporting DB = new clsFaultReporting();

            try
            {

                if (cboApprovedby == null)
                {
                    lblResults.Text = "The Approvedby cannot be empty";
                }
                if (cboApprovedby.GetType() != typeof(String))
                {
                    lblResults.Text = "Enter the Approvedby";
                }

                if (cboPreparedby == null)
                {
                    lblResults.Text = "The preparedby cannot be empty";
                }
                if (cboPreparedby.GetType() != typeof(String))
                {
                    lblResults.Text = "Enter the preparedby";
                }

                if (txtFault == null)
                {
                    lblResults.Text = "The fault no cannot be empty";
                }
                if (txtFault.GetType() != typeof(String))
                {
                    lblResults.Text = "Enter the fault";
                }
                if (txtCost == null)
                {
                    lblResults.Text = "The cost cannot be empty";
                }
                if (txtCost.GetType() != typeof(Decimal))
                {
                    lblResults.Text = "Enter the cost";
                }
                if (cboRegNo == null)
                {
                    lblResults.Text = "Registration no cannot be empty";
                }
                if (cboRegNo.GetType() != typeof(String))
                {
                    lblResults.Text = "Enter the Registration no";
                }

                if (cboDate == null)
                {
                    lblResults.Text = "date cannot be empty";
                }
                if (cboDate.GetType() != typeof(DateTime))
                {
                    lblResults.Text = "Enter the date";
                }


                if (txtPart == null)
                {
                    lblResults.Text = "Part cannot be empty";
                }
                if (txtPart.GetType() != typeof(Decimal))
                {
                    lblResults.Text = "Enter the part";
                }
                string varResponse = DB.Delete_rec(cboRegNo.Text, DateTime.Parse(cboDate.Text), txtPart.Text);
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
                log.Source = "Milorry Transport Management System";
                log.WriteEntry(err.Message, EventLogEntryType.Error);
            }
        }
    }
}