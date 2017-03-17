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
    public partial class frmTyreRequisitionReport1 : System.Web.UI.Page
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

                varPageName = "Tyres Requisitions Report";
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
                            cmdReport0.Visible = false;
                        }
                        else
                        {
                            cmdReport0.Visible = true;
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

        protected void cmdReport0_Click(object sender, EventArgs e)
        {
            clsTyreRequisitionReport DB = new clsTyreRequisitionReport();

            try
            {

                if (cboRegno1.Text == null)
                {
                    lblResults.Text = "Please select the first registration number";
                    return;
                }
                if (cboRegno2.Text == null)
                {
                    lblResults.Text = "Please select the second registration number";
                    return;
                }

                if (cboDate11.Text == null)
                {
                    lblResults.Text = "Please select the first date";
                    return;
                }
                if (cboDate22.Text == null)
                {
                    lblResults.Text = "Please select the second date";
                    return;
                }
                if (cboDept11.Text == null)
                {
                    lblResults.Text = "Please select the first department";
                    return;
                }
                if (cboDept22.Text == null)
                {
                    lblResults.Text = "Please select the second department";
                    return;
                }
                if (cboPart11.Text == null)
                {
                    lblResults.Text = "Please select the part";
                    return;
                }
                bool varResponse = DB.Find_rec(cboRegno1.Text, cboRegno2.Text, DateTime.Parse(cboDate11.Text), DateTime.Parse(cboDate22.Text), cboDept11.Text, cboDept22.Text, cboPart11.Text);
                if (varResponse == true)
                {
                    Response.Redirect("frmDisplayTyreRequisitionReport.aspx");
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
                log.Source = "Milorry Frontend";
                log.WriteEntry(err.Message, EventLogEntryType.Error);
            }
        }
    }
}