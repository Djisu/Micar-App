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
    public partial class frmVehicle : System.Web.UI.Page
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

            ImageVehicle.ImageUrl = "C:\\Makola Shops\\myIcon.png";

            varPageName = "Vehicle";
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
                log.Source = "Milorry Frontend";
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
            clsVehicle DB = new clsVehicle();
            try
            {


                if (txtmake.Text == null)
                {
                    lblResults.Text = "Please enter the make of the vehicle (eg. Toyota,Nissan)";
                    return;
                }
                if (txttype.Text == null)
                {
                    lblResults.Text = "Please select the type of vehicle";
                    return;
                }
                if (txtchassesno.Text == null)
                {
                    lblResults.Text = "Please enter the chassis number of the vehicle";
                    return;
                }
                if (txtregno.Text == null)
                {
                    lblResults.Text = "Please enter the registration number of the vehicle";
                    return;
                }
                if (txtWheelSize.Text == null)
                {
                    lblResults.Text = "Please enter the wheel size of the vehicle";
                    return;
                }
                if (txtRimSize.Text == null)
                {
                    lblResults.Text = "Please enter the rim size of the vehicle";
                    return;
                }
                if (txtweightofvehicle.Text == null)
                {
                    lblResults.Text = "Please enter the weight of the vehicle";
                    return;
                }
                if (dtRWdateofIssue.GetType()!= typeof(DateTime))
                {
                    lblResults.Text = "Please enter a valid issue date of the road worthy cetificate";
                    return;
                }
                if (txtRWplaceofissue.Text == null)
                {
                    lblResults.Text = "Please enter a valid issue place of the road worthy cetificate";
                    return;
                }
                if (cboRWvalidity.Text == null)
                {
                    lblResults.Text = "Please enter a valid validity of the road worthy cetificate(eg.YES,NO)";
                    return;
                }
                if (dtINdateofissue.GetType() != typeof(DateTime))
                {
                    lblResults.Text = "Please enter a valid issue date of the insurance cetificate";
                    return;
                }
                if (txtINplaceofissue.Text == null)
                {
                    lblResults.Text = "Please enter a valid issue place of the insurance cetificate";
                    return;
                }
                if (cboINvalidity.Text == null)
                {
                    lblResults.Text = "Please enter a valid validity of the insurance cetificate(eg.YES,NO)";
                    return;
                }
                if (DTRegDate.GetType() != typeof(DateTime))
                {
                    lblResults.Text = "Please enter a valid registration date of the vehicle";
                    return;
                }
                if (DTpurchDate.GetType() != typeof(DateTime))
                {
                    lblResults.Text = "Please enter a valid purchase date of the vehicle";
                    return;
                }
                if (txtDepartment.Text == null)
                {
                    lblResults.Text = "Please select a valid department";
                    return;
                }
                if (txtEngineCapacity.Text == null)
                {
                    lblResults.Text = "Please select a valid  Engine Capacity";
                    return;
                }
                if (dtfirstservicedate.GetType() != typeof(DateTime))
                {
                    lblResults.Text = "Please enter the first service date of the vehicle";
                    return;
                }
                dtnextservicedate.Text = DateTime.Now.AddYears(1).ToString();
                if (cbolocation.Text == null)
                {
                    lblResults.Text = "Please select a valid  Engine Capacity";
                    return;
                }



                int reccount = 0;
                reccount = DB.FindRecKount(txtchassesno.Text);

                if (reccount > 0)
                {
                    lblResults.Text = "Record already exists!!!";
                    return;
                }

                DB.Add_rec(txtmake.Text, txttype.Text, txtchassesno.Text, txtregno.Text, txtWheelSize.Text, txtRimSize.Text, txtweightofvehicle.Text,
                DateTime.Parse(dtRWdateofIssue.Text), txtRWplaceofissue.Text, cboRWvalidity.Text, DateTime.Parse(dtINdateofissue.Text), txtINplaceofissue.Text, cboINvalidity.Text,
                DateTime.Parse(DTRegDate.Text), DateTime.Parse(DTpurchDate.Text), txtDepartment.Text, txtEngineCapacity.Text, DateTime.Parse(dtfirstservicedate.Text),
                DateTime.Parse(dtnextservicedate.Text), cbolocation.Text, txtPicturePath.ToString());

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

                txtmake.Text=""; txttype.Text=""; txtchassesno.Text=""; txtregno.Text=""; txtWheelSize.Text=""; txtRimSize.Text=""; txtweightofvehicle.Text="";
                 txtRWplaceofissue.Text=""; cboRWvalidity.Text=""; txtINplaceofissue.Text=""; cboINvalidity.Text="";
                txtDepartment.Text=""; txtEngineCapacity.Text="";
                cbolocation.Text = ""; txtPicturePath= null;

                return;
            }
            catch (Exception err)
            {
                EventLog log = new EventLog();
                log.Source = "Milorry Frontend";
                log.WriteEntry(err.Message, EventLogEntryType.Error);
                return;
            }
            finally
            {
                //con.Close();
            }

        }

        protected void cmdEdit_Click(object sender, EventArgs e)
        {
            clsVehicle DB = new clsVehicle();
            try
            {


                if (txtmake.Text == null)
                {
                    lblResults.Text = "Please enter the make of the vehicle (eg. Toyota,Nissan)";
                    return;
                }
                if (txttype.Text == null)
                {
                    lblResults.Text = "Please select the type of vehicle";
                    return;
                }
                if (txtchassesno.Text == null)
                {
                    lblResults.Text = "Please enter the chassis number of the vehicle";
                    return;
                }
                if (txtregno.Text == null)
                {
                    lblResults.Text = "Please enter the registration number of the vehicle";
                    return;
                }
                if (txtWheelSize.Text == null)
                {
                    lblResults.Text = "Please enter the wheel size of the vehicle";
                    return;
                }
                if (txtRimSize.Text == null)
                {
                    lblResults.Text = "Please enter the rim size of the vehicle";
                    return;
                }
                if (txtweightofvehicle.Text == null)
                {
                    lblResults.Text = "Please enter the weight of the vehicle";
                    return;
                }
                if (dtRWdateofIssue.GetType() != typeof(DateTime))
                {
                    lblResults.Text = "Please enter a valid issue date of the road worthy cetificate";
                    return;
                }
                if (txtRWplaceofissue.Text == null)
                {
                    lblResults.Text = "Please enter a valid issue place of the road worthy cetificate";
                    return;
                }
                if (cboRWvalidity.Text == null)
                {
                    lblResults.Text = "Please enter a valid validity of the road worthy cetificate(eg.YES,NO)";
                    return;
                }
                if (dtINdateofissue.GetType() != typeof(DateTime))
                {
                    lblResults.Text = "Please enter a valid issue date of the insurance cetificate";
                    return;
                }
                if (txtINplaceofissue.Text == null)
                {
                    lblResults.Text = "Please enter a valid issue place of the insurance cetificate";
                    return;
                }
                if (cboINvalidity.Text == null)
                {
                    lblResults.Text = "Please enter a valid validity of the insurance cetificate(eg.YES,NO)";
                    return;
                }
                if (DTRegDate.GetType() != typeof(DateTime))
                {
                    lblResults.Text = "Please enter a valid registration date of the vehicle";
                    return;
                }
                if (DTpurchDate.GetType() != typeof(DateTime))
                {
                    lblResults.Text = "Please enter a valid purchase date of the vehicle";
                    return;
                }
                if (txtDepartment.Text == null)
                {
                    lblResults.Text = "Please select a valid department";
                    return;
                }
                if (txtEngineCapacity.Text == null)
                {
                    lblResults.Text = "Please select a valid  Engine Capacity";
                    return;
                }
                if (dtfirstservicedate.GetType() != typeof(DateTime))
                {
                    lblResults.Text = "Please enter the first service date of the vehicle";
                    return;
                }
                dtnextservicedate.Text = DateTime.Now.AddYears(1).ToString();
                if (cbolocation.Text == null)
                {
                    lblResults.Text = "Please select a valid  Engine Capacity";
                    return;
                }



                int reccount = 0;
                reccount = DB.FindRecKount(txtchassesno.Text);

                if (reccount == 0)
                {
                    lblResults.Text = "Record does not exist!!!";
                    return;
                }

                DB.Edit_rec(txtmake.Text, txttype.Text, txtchassesno.Text, txtregno.Text, txtWheelSize.Text, txtRimSize.Text, txtweightofvehicle.Text,
                DateTime.Parse(dtRWdateofIssue.Text), txtRWplaceofissue.Text, cboRWvalidity.Text, DateTime.Parse(dtINdateofissue.Text), txtINplaceofissue.Text, cboINvalidity.Text,
                DateTime.Parse(DTRegDate.Text), DateTime.Parse(DTpurchDate.Text), txtDepartment.Text, txtEngineCapacity.Text, DateTime.Parse(dtfirstservicedate.Text),
                DateTime.Parse(dtnextservicedate.Text), cbolocation.Text, txtPicturePath.ToString());

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

                txtmake.Text = ""; txttype.Text = ""; txtchassesno.Text = ""; txtregno.Text = ""; txtWheelSize.Text = ""; txtRimSize.Text = ""; txtweightofvehicle.Text = "";
                txtRWplaceofissue.Text = ""; cboRWvalidity.Text = ""; txtINplaceofissue.Text = ""; cboINvalidity.Text = "";
                txtDepartment.Text = ""; txtEngineCapacity.Text = "";
                cbolocation.Text = ""; txtPicturePath = null;

                return;
            }
            catch (Exception err)
            {
                EventLog log = new EventLog();
                log.Source = "Milorry Frontend";
                log.WriteEntry(err.Message, EventLogEntryType.Error);
                return;
            }
            finally
            {
                //con.Close();
            }

        }
        protected void cmdDelete_Click(object sender, EventArgs e)
        {
            clsVehicle DB = new clsVehicle();
            try
            {


                if (txtmake.Text == null)
                {
                    lblResults.Text = "Please enter the make of the vehicle (eg. Toyota,Nissan)";
                    return;
                }
                if (txttype.Text == null)
                {
                    lblResults.Text = "Please select the type of vehicle";
                    return;
                }
                if (txtchassesno.Text == null)
                {
                    lblResults.Text = "Please enter the chassis number of the vehicle";
                    return;
                }
                if (txtregno.Text == null)
                {
                    lblResults.Text = "Please enter the registration number of the vehicle";
                    return;
                }
                if (txtWheelSize.Text == null)
                {
                    lblResults.Text = "Please enter the wheel size of the vehicle";
                    return;
                }
                if (txtRimSize.Text == null)
                {
                    lblResults.Text = "Please enter the rim size of the vehicle";
                    return;
                }
                if (txtweightofvehicle.Text == null)
                {
                    lblResults.Text = "Please enter the weight of the vehicle";
                    return;
                }
                if (dtRWdateofIssue.GetType() != typeof(DateTime))
                {
                    lblResults.Text = "Please enter a valid issue date of the road worthy cetificate";
                    return;
                }
                if (txtRWplaceofissue.Text == null)
                {
                    lblResults.Text = "Please enter a valid issue place of the road worthy cetificate";
                    return;
                }
                if (cboRWvalidity.Text == null)
                {
                    lblResults.Text = "Please enter a valid validity of the road worthy cetificate(eg.YES,NO)";
                    return;
                }
                if (dtINdateofissue.GetType() != typeof(DateTime))
                {
                    lblResults.Text = "Please enter a valid issue date of the insurance cetificate";
                    return;
                }
                if (txtINplaceofissue.Text == null)
                {
                    lblResults.Text = "Please enter a valid issue place of the insurance cetificate";
                    return;
                }
                if (cboINvalidity.Text == null)
                {
                    lblResults.Text = "Please enter a valid validity of the insurance cetificate(eg.YES,NO)";
                    return;
                }
                if (DTRegDate.GetType() != typeof(DateTime))
                {
                    lblResults.Text = "Please enter a valid registration date of the vehicle";
                    return;
                }
                if (DTpurchDate.GetType() != typeof(DateTime))
                {
                    lblResults.Text = "Please enter a valid purchase date of the vehicle";
                    return;
                }
                if (txtDepartment.Text == null)
                {
                    lblResults.Text = "Please select a valid department";
                    return;
                }
                if (txtEngineCapacity.Text == null)
                {
                    lblResults.Text = "Please select a valid  Engine Capacity";
                    return;
                }
                if (dtfirstservicedate.GetType() != typeof(DateTime))
                {
                    lblResults.Text = "Please enter the first service date of the vehicle";
                    return;
                }
                dtnextservicedate.Text = DateTime.Now.AddYears(1).ToString();
                if (cbolocation.Text == null)
                {
                    lblResults.Text = "Please select a valid  Engine Capacity";
                    return;
                }



                int reccount = 0;
                reccount = DB.FindRecKount(txtchassesno.Text);

                if (reccount > 0)
                {
                    lblResults.Text = "Record already exists!!!";
                    return;
                }

                DB.Delete_rec(txtregno.Text);

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

                txtmake.Text = ""; txttype.Text = ""; txtchassesno.Text = ""; txtregno.Text = ""; txtWheelSize.Text = ""; txtRimSize.Text = ""; txtweightofvehicle.Text = "";
                txtRWplaceofissue.Text = ""; cboRWvalidity.Text = ""; txtINplaceofissue.Text = ""; cboINvalidity.Text = "";
                txtDepartment.Text = ""; txtEngineCapacity.Text = "";
                cbolocation.Text = ""; txtPicturePath = null;

                return;
            }
            catch (Exception err)
            {
                EventLog log = new EventLog();
                log.Source = "Milorry Frontend";
                log.WriteEntry(err.Message, EventLogEntryType.Error);
                return;
            }
            finally
            {
                //con.Close();
            }

        }
        protected void txtPicturePath_TextChanged(object sender, EventArgs e)
        {
            ImageVehicle.ImageUrl = txtPicturePath.ToString();
            
        }
        protected void cmdAdd_Click1(object sender, EventArgs e)
        {

        }
    }
}