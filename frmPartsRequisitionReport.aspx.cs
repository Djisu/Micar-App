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
    public partial class frmTyreRequisitionReport : System.Web.UI.Page
    {
        public string varPageName1;
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
                txtUserLabel1.Text = varName;
            }
            else
            {
                txtUserLabel1.Text = "No cookies found";
            }


            varPageName1 = "Parts  Requisitions Report";
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
            string varUserPresence = DB.FindUserPresence(txtUserLabel1.Text);

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
                    lblResults1.Text = "No permissions found for role " + varRole;
                }
                else
                {
                    string varMenu = "";
                    //string varMenu = DB.FindRoleMenusCreate(varRole, varPageName);
                    //if (varMenu == "false")
                    //{
                    //    cmdAdd.Visible = false;
                    //}
                    //else
                    //{
                    //    cmdAdd.Visible = true;
                    //}
                    varMenu = DB.FindRoleMenusRead(varRole, varPageName1);
                    if (varMenu == "false")
                    {
                        cmdReport1.Visible = false;
                    }
                    else
                    {
                        cmdReport1.Visible = true;
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
                con.Close();
            }   
        }

        protected void cmdReport_Click(object sender, EventArgs e)
        {
            clsPartsRequisitionReport DB = new clsPartsRequisitionReport();

            try
            {

                if (cboRegNo1.Text == null)
                {
                    lblResults1.Text = "Please select the first registration number";
                    return;
                }
                if (cboRegNo2.Text == null)
                {
                    lblResults1.Text = "Please select the second registration number";
                    return;
                }

                if (cboDate11.Text == null)
                {
                    lblResults1.Text = "Please select the first date";
                    return;
                }
                if (cboDate22.Text == null)
                {
                    lblResults1.Text = "Please select the second date";
                    return;
                }
                if (cboDept11.Text == null)
                {
                    lblResults1.Text = "Please select the first department";
                    return;
                }
                if (cboDept22.Text == null)
                {
                    lblResults1.Text = "Please select the second department";
                    return;
                }
                if (cboPart11.Text == null)
                {
                    lblResults1.Text = "Please select the part";
                    return;
                }
                bool varResponse = DB.Add_rec(cboRegNo1.Text, cboRegNo2.Text, DateTime.Parse(cboDate11.Text), DateTime.Parse(cboDate22.Text), cboDept11.Text, cboDept22.Text, cboPart11.Text);
                if (varResponse == true)
                {
                    Response.Redirect("frmDisplayPartsRequisitionReport.aspx");
                }
                else
                {
                    lblResults1.Text = "No transactions found";
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