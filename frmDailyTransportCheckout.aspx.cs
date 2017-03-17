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
    public partial class frmDailyTransportCheckout : System.Web.UI.Page
    {
        public string varPageName;
        public string connectionString = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            //connectionString = WebConfigurationManager.ConnectionStrings["FleetConnectionString"].ConnectionString;
            //SqlConnection con = new SqlConnection(connectionString);

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


            varPageName = "Daily Transport Checkout";
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
                log.Source = "Stock Sales";
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
            clsDayTransCheck DB = new clsDayTransCheck();
            try
            {
                if (txtTimeIn.Text == null)
                {
                    lblResults.Text = "Please enter the time in";
                    return;
                }
                if (txtTimeOut.Text == null)
                {
                    lblResults.Text = "Please enter the time out";
                    return;
                }

                if (txtDriversName.Text == null)
                {
                    lblResults.Text = "Please select the driver";
                    return;
                }
                if (cboRegNo.Text == null)
                {
                    lblResults.Text = "Please select the vehicle registration number";
                    return;
                }
                if (txtAssignment.Text == null)
                {
                    lblResults.Text = "Enter the assignment";
                    return;
                }
                if (txtRemarks.Text == null)
                {
                    lblResults.Text = "Enter the remarks";
                    return;
                }
                int reccount = 0;
                reccount = DB.FindRecKount(cboRegNo.Text, Calendar1.TodaysDate);
                if (reccount > 0)
                {
                    lblResults.Text = "Record already exists!!!";
                    return;
                }

                DB.Add_rec(cboRegNo.Text, Calendar1.TodaysDate, DateTime.Parse(txtTimeOut.Text), DateTime.Parse(txtTimeIn.Text), txtDriversName.Text, txtAssignment.Text, txtRemarks.Text);

                ////public string Add_rec(txtTimeOut  txtTimeIn cboRegNo Calendar1 txtDriversName txtAssignment txtRemarks) Define the ADO.NET objects.
                //string connectionString =
                //connectionString = WebConfigurationManager.ConnectionStrings["FleetConnectionString"].ConnectionString;

                //string selectSQL = "SELECT * FROM tb_Customer ORDER BY convert(int,customerno)";
                //SqlConnection con = new SqlConnection(connectionString);
                //SqlCommand cmd = new SqlCommand(selectSQL, con);
                //SqlDataAdapter adapter = new SqlDataAdapter(cmd);

                // Fill the DataSet.
                DataSet ds = new DataSet();
                ds = DB.FindTable();
                //adapter.Fill(ds, "tb_Customer");
                // Perform the binding.
                GridView1.DataSource = ds;
                GridView1.DataBind();

                lblResults.Text = "Operation successful";

                cboRegNo.Text = "";
                txtTimeOut.Text = "1/1/1900";
                txtTimeIn.Text = "1/1/1900";
                txtDriversName.Text = ""; 
                txtAssignment.Text = ""; 
                txtRemarks.Text = "";
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
            clsDayTransCheck DB = new clsDayTransCheck();
            try
            {
                if (txtTimeIn.Text == null)
                {
                    lblResults.Text = "Please enter the time in";
                    return;
                }
                if (txtTimeOut.Text == null)
                {
                    lblResults.Text = "Please enter the time out";
                    return;
                }

                if (txtDriversName.Text == null)
                {
                    lblResults.Text = "Please select the driver";
                    return;
                }
                if (cboRegNo.Text == null)
                {
                    lblResults.Text = "Please select the vehicle registration number";
                    return;
                }
                if (txtAssignment.Text == null)
                {
                    lblResults.Text = "Enter the assignment";
                    return;
                }
                if (txtRemarks.Text == null)
                {
                    lblResults.Text = "Enter the remarks";
                    return;
                }
                int reccount = 0;
                reccount = DB.FindRecKount(cboRegNo.Text, Calendar1.TodaysDate);
                if (reccount > 0)
                {
                    lblResults.Text = "Record already exists!!!";
                    return;
                }

                DB.Edit_rec(cboRegNo.Text, Calendar1.TodaysDate, DateTime.Parse(txtTimeOut.Text), DateTime.Parse(txtTimeIn.Text), txtDriversName.Text, txtAssignment.Text, txtRemarks.Text);

                ////public string Add_rec(txtTimeOut  txtTimeIn cboRegNo Calendar1 txtDriversName txtAssignment txtRemarks) Define the ADO.NET objects.
                //string connectionString =
                //connectionString = WebConfigurationManager.ConnectionStrings["FleetConnectionString"].ConnectionString;

                //string selectSQL = "SELECT * FROM tb_Customer ORDER BY convert(int,customerno)";
                //SqlConnection con = new SqlConnection(connectionString);
                //SqlCommand cmd = new SqlCommand(selectSQL, con);
                //SqlDataAdapter adapter = new SqlDataAdapter(cmd);

                // Fill the DataSet.
                DataSet ds = new DataSet();
                ds = DB.FindTable();
                //adapter.Fill(ds, "tb_Customer");
                // Perform the binding.
                GridView1.DataSource = ds;
                GridView1.DataBind();

                lblResults.Text = "Operation successful";

                cboRegNo.Text = "";
                txtTimeOut.Text = "1/1/1900";
                txtTimeIn.Text = "1/1/1900";
                txtDriversName.Text = "";
                txtAssignment.Text = "";
                txtRemarks.Text = "";
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
            clsDayTransCheck DB = new clsDayTransCheck();
            try
            {
                if (txtTimeIn.Text == null)
                {
                    lblResults.Text = "Please enter the time in";
                    return;
                }
                if (txtTimeOut.Text == null)
                {
                    lblResults.Text = "Please enter the time out";
                    return;
                }

                if (txtDriversName.Text == null)
                {
                    lblResults.Text = "Please select the driver";
                    return;
                }
                if (cboRegNo.Text == null)
                {
                    lblResults.Text = "Please select the vehicle registration number";
                    return;
                }
                if (txtAssignment.Text == null)
                {
                    lblResults.Text = "Enter the assignment";
                    return;
                }
                if (txtRemarks.Text == null)
                {
                    lblResults.Text = "Enter the remarks";
                    return;
                }
                int reccount = 0;
                reccount = DB.FindRecKount(cboRegNo.Text, Calendar1.TodaysDate);
                if (reccount == 0)
                {
                    lblResults.Text = "Record does not exist!!!";
                    return;
                }

                DB.Delete_rec(cboRegNo.Text, Calendar1.TodaysDate, DateTime.Parse(txtTimeOut.Text), DateTime.Parse(txtTimeIn.Text), txtDriversName.Text, txtAssignment.Text, txtRemarks.Text);

                ////public string Add_rec(txtTimeOut  txtTimeIn cboRegNo Calendar1 txtDriversName txtAssignment txtRemarks) Define the ADO.NET objects.
                //string connectionString =
                //connectionString = WebConfigurationManager.ConnectionStrings["FleetConnectionString"].ConnectionString;

                //string selectSQL = "SELECT * FROM tb_Customer ORDER BY convert(int,customerno)";
                //SqlConnection con = new SqlConnection(connectionString);
                //SqlCommand cmd = new SqlCommand(selectSQL, con);
                //SqlDataAdapter adapter = new SqlDataAdapter(cmd);

                // Fill the DataSet.
                DataSet ds = new DataSet();
                ds = DB.FindTable();
                //adapter.Fill(ds, "tb_Customer");
                // Perform the binding.
                GridView1.DataSource = ds;
                GridView1.DataBind();

                lblResults.Text = "Operation successful";

                cboRegNo.Text = "";
                txtTimeOut.Text = "1/1/1900";
                txtTimeIn.Text = "1/1/1900";
                txtDriversName.Text = "";
                txtAssignment.Text = "";
                txtRemarks.Text = "";
                return;
            }
            catch (FormatException err)
            {
                EventLog log = new EventLog();
                log.Source = "Milorry Transport Management System";
                log.WriteEntry(err.Message, EventLogEntryType.Error);
            }

        }
        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void txtTimeIn_TextChanged(object sender, EventArgs e)
        {
            txtTimeIn.Text = System.DateTime.Now.ToString();
        }
        protected void txtTimeOut_TextChanged(object sender, EventArgs e)
        {
            txtTimeOut.Text = System.DateTime.Now.ToString();
        }

        protected void txtTimeOut_TextChanged1(object sender, EventArgs e)
        {
            txtTimeOut.Text = System.DateTime.Now.ToString();
        }

        protected void txtDriversName_TextChanged(object sender, EventArgs e)
        {

        }


    }
}