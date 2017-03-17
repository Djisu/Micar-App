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
    public partial class frmDriverReport : System.Web.UI.Page
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


            varPageName = "Drivers List";
            //**********************************************************
            // Create the Command.
            AXcontrol DB = new AXcontrol();
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
                        //string varMenu = DB.FindRoleMenusCreate(varRole, varPageName);
                        //if (varMenu == "false")
                        //{
                        //    cmdAdd.Visible = false;
                        //}
                        //else
                        //{
                        //    cmdAdd.Visible = true;
                        //}
                        string varMenu = DB.FindRoleMenusRead(varRole, varPageName);
                        if (varMenu == "false")
                        {
                            cmdReport.Visible = false;
                        }
                        else
                        {
                            cmdReport.Visible = true;
                        }
                        //varMenu = DB.FindRoleMenusUpdate(varRole, varPageName);
                        //if (varMenu == "false")
                        //{
                        //    cmdEdit.Visible = false;
                        //}
                        //else
                        //{
                        //    cmdEdit.Visible = true;
                        //}
                        //varMenu = DB.FindRoleMenusDelete(varRole, varPageName);
                        //if (varMenu == "false")
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
                //con.Close();
            }   
        }

        protected void cmdReport_Click(object sender, EventArgs e)
        {
            clsDriverReport DB = new clsDriverReport();

            try
            {

                if (cboDriver1.Text == null)
                {
                    lblResults.Text = "Please select the first driver number";
                    return;
                }
                if (cboDriver2.Text == null)
                {
                    lblResults.Text = "Please select the second driver number";
                    return;
                }
                
                bool varResponse = DB.Find_rec(cboDriver1.Text, cboDriver2.Text);
                if (varResponse == true)
                {
                    Response.Redirect("frmDisplayDriversReport.aspx");
                }
                else
                {
                    lblResults.Text = "No transactions found";
                }
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