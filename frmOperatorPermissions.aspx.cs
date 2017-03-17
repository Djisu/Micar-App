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
    public partial class frmOperatorPermissions : System.Web.UI.Page
    {
        public string varPageName1;
        public string connectionString1 = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            //connectionString1 = WebConfigurationManager.ConnectionStrings["FleetConnectionString"].ConnectionString;
            //SqlConnection con = new SqlConnection(connectionString1);

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
                varPageName1 = "Setup Operator Permissions";

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
                    ds = DB.FindRoleMenus(varRole, varPageName1);
                    if (ds.Tables[0].Rows.Count == 0)
                    {
                        lblResults.Text = "No permissions found for role " + varRole;
                    }
                    else
                    {
                        string varMenu = DB.FindRoleMenusCreate(varRole, varPageName1);
                        if (varMenu == "false")
                        {
                            cmdAdd.Visible = false;
                        }
                        else
                        {
                            cmdAdd.Visible = true;
                        }
                        varMenu = DB.FindRoleMenusRead(varRole, varPageName1);
                        if (varMenu == "false")
                        {
                            GridView1.Visible = false;
                        }
                        else
                        {
                            GridView1.Visible = true;
                        }
                        varMenu = DB.FindRoleMenusUpdate(varRole, varPageName1);
                        if (varMenu == "false")
                        {
                            cmdEdit.Visible = false;
                        }
                        else
                        {
                            cmdEdit.Visible = true;
                        }
                        varMenu = DB.FindRoleMenusDelete(varRole, varPageName1);
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
                log.Source = "Micar System";
                log.WriteEntry(err.Message, EventLogEntryType.Error);
                return;
            }
            finally
            {
                //con.Close();
            }

        }

        protected void cmdAdd_Click(object sender, EventArgs e)
        {
            OperatorPermissions DB = new OperatorPermissions();
            try
            {

                if (cboOperatorId.Text == null)
                {
                    lblResults.Text = "Please enter the operator id";
                    return;
                }

                if (txtMenu.Text == null)
                {
                    lblResults.Text = "Select the menu item";
                    return;
                }
                if (cboUpdateFlag.Text == null)
                {
                    lblResults.Text = "Select the update flag";
                    return;
                }
                if (cboCreateFlag.Text == null)
                {
                    lblResults.Text = "Select the create flag";
                    return;
                }
                if (cboDeleteFlag.Text == null)
                {
                    lblResults.Text = "Select the delete flag";
                    return;
                }

                int reccount = 0;
                reccount = DB.FindRecKount(cboOperatorId.Text);

                if (reccount > 0)
                {
                    lblResults.Text = "Record already exists!!!";
                    return;
                }



                DB.AddOperatorPermissions(cboOperatorId.Text, txtMenu.Text, cboCreateFlag.Text, cboReadFlag.Text, cboUpdateFlag.Text, cboDeleteFlag.Text, txtUserLabel.Text);


                // Fill the DataSet.
                DataSet ds = new DataSet();
                ds = DB.FindTable();
                //adapter.Fill(ds, "tb_Customer");
                // Perform the binding.
                GridView1.DataSource = ds;
                GridView1.DataBind();

                lblResults.Text = "Operation successful";

                cboOperatorId.Text = "";
                txtMenu.Text = "";
                cboCreateFlag.Text = "";
                cboReadFlag.Text = "";
                cboUpdateFlag.Text = "";
                cboDeleteFlag.Text = "";
                

                return;
            }
            catch (FormatException err)
            {
                EventLog log = new EventLog();
                log.Source = "Milorry Transport Frontend";
                log.WriteEntry(err.Message, EventLogEntryType.Error);
            }

        }
        protected void cmdEdit_Click(object sender, EventArgs e)
        {
            OperatorPermissions DB = new OperatorPermissions();
            try
            {

                if (cboOperatorId.Text == null)
                {
                    lblResults.Text = "Please enter the operator id";
                    return;
                }

                if (txtMenu.Text == null)
                {
                    lblResults.Text = "Select the menu item";
                    return;
                }
                if (cboUpdateFlag.Text == null)
                {
                    lblResults.Text = "Select the update flag";
                    return;
                }
                if (cboCreateFlag.Text == null)
                {
                    lblResults.Text = "Select the create flag";
                    return;
                }
                if (cboDeleteFlag.Text == null)
                {
                    lblResults.Text = "Select the delete flag";
                    return;
                }

                int reccount = 0;
                reccount = DB.FindRecKount(cboOperatorId.Text);

                if (reccount > 0)
                {
                    lblResults.Text = "Record already exists!!!";
                    return;
                }



                DB.EditOperatorPermissions(cboOperatorId.Text, txtMenu.Text, cboCreateFlag.Text, cboReadFlag.Text, cboUpdateFlag.Text, cboDeleteFlag.Text);


                // Fill the DataSet.
                DataSet ds = new DataSet();
                ds = DB.FindTable();
                //adapter.Fill(ds, "tb_Customer");
                // Perform the binding.
                GridView1.DataSource = ds;
                GridView1.DataBind();

                lblResults.Text = "Operation successful";

                cboOperatorId.Text = "";
                txtMenu.Text = "";
                cboCreateFlag.Text = "";
                cboReadFlag.Text = "";
                cboUpdateFlag.Text = "";
                cboDeleteFlag.Text = "";


                return;
            }
            catch (FormatException err)
            {
                EventLog log = new EventLog();
                log.Source = "Milorry Transport Frontend";
                log.WriteEntry(err.Message, EventLogEntryType.Error);
            }
        }
        protected void cmdDelete_Click(object sender, EventArgs e)
        {
            OperatorPermissions DB = new OperatorPermissions();
            try
            {

                if (cboOperatorId.Text == null)
                {
                    lblResults.Text = "Please enter the operator id";
                    return;
                }

                if (txtMenu.Text == null)
                {
                    lblResults.Text = "Select the menu item";
                    return;
                }
               

                int reccount = 0;
                reccount = DB.FindRecKount(cboOperatorId.Text);

                if (reccount== 0)
                {
                    lblResults.Text = "Record does not exist!!!";
                    return;
                }



                DB.DeleteOperatorPermissions(cboOperatorId.Text, txtMenu.Text);


                // Fill the DataSet.
                DataSet ds = new DataSet();
                ds = DB.FindTable();
                //adapter.Fill(ds, "tb_Customer");
                // Perform the binding.
                GridView1.DataSource = ds;
                GridView1.DataBind();

                lblResults.Text = "Operation successful";

                cboOperatorId.Text = "";
                txtMenu.Text = "";
                cboCreateFlag.Text = "";
                cboReadFlag.Text = "";
                cboUpdateFlag.Text = "";
                cboDeleteFlag.Text = "";


                return;
            }
            catch (FormatException err)
            {
                EventLog log = new EventLog();
                log.Source = "Milorry Transport Frontend";
                log.WriteEntry(err.Message, EventLogEntryType.Error);
            }
        }
    }
}