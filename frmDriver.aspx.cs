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
    public partial class frmDriver : System.Web.UI.Page
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
                varPageName1 = "Driver";

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
                string varUserPresence=DB.FindUserPresence(txtUserLabel.Text);

                if (varUserPresence.Length>0)
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
                    if (ds.Tables[0].Rows.Count==0)
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
            clsDriver DB = new clsDriver();
            try
            {

                if (txtDriverNo.Text == null)
                {
                    lblResults.Text = "Please enter the driver number";
                    return;
                }
                
                if (txtFirstName.Text == null)
                {
                    lblResults.Text = "Enter the first name";
                    return;
                }
                if (txtLastName.Text == null)
                {
                    lblResults.Text = "Enter the last name";
                    return;
                }
                if (txtPlaceOfIssue.Text == null)
                {
                    lblResults.Text = "Enter the last name";
                    return;
                }
                if (dtLicenseRenewalDate.GetType()!=typeof(DateTime))
                {
                    lblResults.Text = "Enter a valid license renewal date";
                    return;
                }
                if (dtEmploymentDate.GetType() != typeof(DateTime))
                {
                    lblResults.Text = "Enter a valid license employment date";
                    return;
                }
                if (dtLicenseDate.GetType() != typeof(DateTime))
                {
                    lblResults.Text = "Enter a valid license issue date";
                    return;
                }
                if (cboDept.GetType() != typeof(string))
                {
                    lblResults.Text = "Select a valid department";
                    return;
                }
                if (txtJobTitle.GetType() != typeof(string))
                {
                    lblResults.Text = "Select a valid JobTitle";
                    return;
                }
                if (txtLicenseNo.GetType() != typeof(string))
                {
                    lblResults.Text = "Enter a valid license number";
                    return;
                }
                if (txtLicenseType.GetType() != typeof(string))
                {
                    lblResults.Text = "Enter a valid license type";
                    return;
                }
                if (txtLicenseValidity.GetType() != typeof(string))
                {
                    lblResults.Text = "Enter a valid license validity";
                    return;
                }
                if (cboEducation.GetType() != typeof(string))
                {
                    lblResults.Text = "Select a valid education";
                    return;
                }

                int reccount = 0;
                reccount = DB.FindKount(txtDriverNo.Text);

                if (reccount > 0)
                {
                    lblResults.Text = "Record already exists!!!";
                    return;
                }
                if (txtNoofChildren.GetType() != typeof(int))
                {
                    txtNoofChildren.Text = "0";
                }


                DB.Add_rec(txtDriverNo.Text, txtFirstName.Text, txtLastName.Text, txtJobTitle.Text, cboDept.Text, dtEmploymentDate.SelectedDate,
                txtPostalAddress.Text, txtResidAddress.Text, cboMaritalStatus.Text,  txtTelephoneNo.Text, txtSpouseName.Text, int.Parse(txtNoofChildren.Text),  
                txtHomeTown.Text,  cboEducation.Text, txtLicenseType.Text, txtLicenseNo.Text, dtLicenseDate.SelectedDate, 
                txtPlaceOfIssue.Text, txtLicenseValidity.Text, dtDateCompleted.SelectedDate, txtPhotoPath.ToString(),
                cboEmpStatus.Text,  dtRedeploymentDate.SelectedDate, dtLicenseRenewalDate.SelectedDate);


                // Fill the DataSet.
                DataSet ds = new DataSet();
                ds = DB.FindTable();
                //adapter.Fill(ds, "tb_Customer");
                // Perform the binding.
                GridView1.DataSource = ds;
                GridView1.DataBind();

                lblResults.Text = "Operation successful";

                txtDriverNo.Text="";
                txtFirstName.Text="";
                txtLastName.Text=""; 
                txtJobTitle.Text="";
                cboDept.Text=""; 
                txtPostalAddress.Text="";
                txtResidAddress.Text="";
                cboMaritalStatus.Text="";
                txtTelephoneNo.Text="";
                txtSpouseName.Text="";
                txtNoofChildren.Text="0";
                txtHomeTown.Text=""; 
                cboEducation.Text=""; 
                txtLicenseType.Text="";
                txtLicenseNo.Text="";                
                txtPlaceOfIssue.Text="";
                txtLicenseValidity.Text="";              
                cboEmpStatus.Text="";
               
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
            clsDriver DB = new clsDriver();
            try
            {

                if (txtDriverNo.Text == null)
                {
                    lblResults.Text = "Please enter the driver number";
                    return;
                }

                if (txtFirstName.Text == null)
                {
                    lblResults.Text = "Enter the first name";
                    return;
                }
                if (txtLastName.Text == null)
                {
                    lblResults.Text = "Enter the last name";
                    return;
                }
                if (txtPlaceOfIssue.Text == null)
                {
                    lblResults.Text = "Enter the last name";
                    return;
                }
                if (dtLicenseRenewalDate.GetType() != typeof(DateTime))
                {
                    lblResults.Text = "Enter a valid license renewal date";
                    return;
                }
                if (dtEmploymentDate.GetType() != typeof(DateTime))
                {
                    lblResults.Text = "Enter a valid license employment date";
                    return;
                }
                if (dtLicenseDate.GetType() != typeof(DateTime))
                {
                    lblResults.Text = "Enter a valid license issue date";
                    return;
                }
                if (cboDept.GetType() != typeof(string))
                {
                    lblResults.Text = "Select a valid department";
                    return;
                }
                if (txtJobTitle.GetType() != typeof(string))
                {
                    lblResults.Text = "Select a valid JobTitle";
                    return;
                }
                if (txtLicenseNo.GetType() != typeof(string))
                {
                    lblResults.Text = "Enter a valid license number";
                    return;
                }
                if (txtLicenseType.GetType() != typeof(string))
                {
                    lblResults.Text = "Enter a valid license type";
                    return;
                }
                if (txtLicenseValidity.GetType() != typeof(string))
                {
                    lblResults.Text = "Enter a valid license validity";
                    return;
                }
                if (cboEducation.GetType() != typeof(string))
                {
                    lblResults.Text = "Select a valid education";
                    return;
                }
                if (txtNoofChildren.GetType() != typeof(int))
                {
                    txtNoofChildren.Text="0";
                }

                int reccount = 0;
                reccount = DB.FindKount(txtDriverNo.Text);

                if (reccount == 0)
                {
                    lblResults.Text = "Record does not exists!!!";
                    return;
                }

                DB.Edit_rec(txtDriverNo.Text, txtFirstName.Text, txtLastName.Text, txtJobTitle.Text, cboDept.Text, dtEmploymentDate.SelectedDate,
                txtPostalAddress.Text, txtResidAddress.Text, cboMaritalStatus.Text, txtTelephoneNo.Text, txtSpouseName.Text, int.Parse(txtNoofChildren.Text),
                txtHomeTown.Text, cboEducation.Text, txtLicenseType.Text, txtLicenseNo.Text, dtLicenseDate.SelectedDate,
                txtPlaceOfIssue.Text, txtLicenseValidity.Text, dtDateCompleted.SelectedDate, txtPhotoPath.ToString(),
                cboEmpStatus.Text, dtRedeploymentDate.SelectedDate, dtLicenseRenewalDate.SelectedDate);


                // Fill the DataSet.
                DataSet ds = new DataSet();
                ds = DB.FindTable();
                //adapter.Fill(ds, "tb_Customer");
                // Perform the binding.
                GridView1.DataSource = ds;
                GridView1.DataBind();

                lblResults.Text = "Operation successful";

                txtDriverNo.Text = "";
                txtFirstName.Text = "";
                txtLastName.Text = "";
                txtJobTitle.Text = "";
                cboDept.Text = "";
                txtPostalAddress.Text = "";
                txtResidAddress.Text = "";
                cboMaritalStatus.Text = "";
                txtTelephoneNo.Text = "";
                txtSpouseName.Text = "";
                txtNoofChildren.Text = "0";
                txtHomeTown.Text = "";
                cboEducation.Text = "";
                txtLicenseType.Text = "";
                txtLicenseNo.Text = "";
                txtPlaceOfIssue.Text = "";
                txtLicenseValidity.Text = "";
                cboEmpStatus.Text = "";

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
            clsDriver DB = new clsDriver();
            try
            {

                if (txtDriverNo.Text == null)
                {
                    lblResults.Text = "Please enter the driver number";
                    return;
                }

                if (txtFirstName.Text == null)
                {
                    lblResults.Text = "Enter the first name";
                    return;
                }
                if (txtLastName.Text == null)
                {
                    lblResults.Text = "Enter the last name";
                    return;
                }
                if (txtPlaceOfIssue.Text == null)
                {
                    lblResults.Text = "Enter the last name";
                    return;
                }
                if (dtLicenseRenewalDate.GetType() != typeof(DateTime))
                {
                    lblResults.Text = "Enter a valid license renewal date";
                    return;
                }
                if (dtEmploymentDate.GetType() != typeof(DateTime))
                {
                    lblResults.Text = "Enter a valid license employment date";
                    return;
                }
                if (dtLicenseDate.GetType() != typeof(DateTime))
                {
                    lblResults.Text = "Enter a valid license issue date";
                    return;
                }
                if (cboDept.GetType() != typeof(string))
                {
                    lblResults.Text = "Select a valid department";
                    return;
                }
                if (txtJobTitle.GetType() != typeof(string))
                {
                    lblResults.Text = "Select a valid JobTitle";
                    return;
                }
                if (txtLicenseNo.GetType() != typeof(string))
                {
                    lblResults.Text = "Enter a valid license number";
                    return;
                }
                if (txtLicenseType.GetType() != typeof(string))
                {
                    lblResults.Text = "Enter a valid license type";
                    return;
                }
                if (txtLicenseValidity.GetType() != typeof(string))
                {
                    lblResults.Text = "Enter a valid license validity";
                    return;
                }
                if (cboEducation.GetType() != typeof(string))
                {
                    lblResults.Text = "Select a valid education";
                    return;
                }
                if (txtNoofChildren.GetType() != typeof(int))
                {
                    txtNoofChildren.Text = "0";
                }


                int reccount = 0;
                reccount = DB.FindKount(txtDriverNo.Text);

                if (reccount == 0)
                {
                    lblResults.Text = "Record does not exist!!!";
                    return;
                }

                DB.Delete_rec(txtDriverNo.Text);


                // Fill the DataSet.
                DataSet ds = new DataSet();
                ds = DB.FindTable();
                //adapter.Fill(ds, "tb_Customer");
                // Perform the binding.
                GridView1.DataSource = ds;
                GridView1.DataBind();

                lblResults.Text = "Operation successful";

                txtDriverNo.Text = "";
                txtFirstName.Text = "";
                txtLastName.Text = "";
                txtJobTitle.Text = "";
                cboDept.Text = "";
                txtPostalAddress.Text = "";
                txtResidAddress.Text = "";
                cboMaritalStatus.Text = "";
                txtTelephoneNo.Text = "";
                txtSpouseName.Text = "";
                txtNoofChildren.Text = "0";
                txtHomeTown.Text = "";
                cboEducation.Text = "";
                txtLicenseType.Text = "";
                txtLicenseNo.Text = "";
                txtPlaceOfIssue.Text = "";
                txtLicenseValidity.Text = "";
                cboEmpStatus.Text = "";

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