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
    public partial class frmVehicleInspection : System.Web.UI.Page
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


            varPageName = "Vehicle Inspection";
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
            clsVehicleInspection DB = new clsVehicleInspection();
            try
            {

        //        String cboRegNo,  DateTime dtDate,Decimal  txtMileageReading,  String txtDetailsofInspenction, String txtRecommendations,
        //String txtFindings,  String txtRemarks
                if (cboRegNo.Text == null)
                {
                    lblResults.Text = "Please enter the registration of the vehicle ";
                    return;
                }
                if (dtDate.GetType()!=typeof(DateTime))
                {
                    lblResults.Text = "Please select a valid date";
                    return;
                }
                if (txtMileageReading.GetType() != typeof(decimal))
                {
                    lblResults.Text = "Please enter the required mileage reading";
                    return;
                }
                if (txtDetailsofInspenction.Text == null)
                {
                    lblResults.Text = "Please enter the registration number of the vehicle";
                    return;
                }
                if (txtRecommendations.Text == null)
                {
                    lblResults.Text = "Please enter the wheel size of the vehicle";
                    return;
                }
                if (txtFindings.Text == null)
                {
                    lblResults.Text = "Please enter the rim size of the vehicle";
                    return;
                }
                if (txtRemarks.Text == null)
                {
                    lblResults.Text = "Please enter the weight of the vehicle";
                    return;
                }
               
              
                


                int reccount = 0;
                reccount = DB.FindRecKount(cboRegNo.Text, DateTime.Parse(dtDate.ToString()));

                if (reccount > 0)
                {
                    lblResults.Text = "Record already exists!!!";
                    return;
                }

                DB.Add_rec(cboRegNo.Text,  DateTime.Parse(dtDate.ToString()), Decimal.Parse(txtMileageReading.Text), txtDetailsofInspenction.Text,txtRecommendations.Text,
                txtFindings.Text, txtRemarks.Text);

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

                cboRegNo.Text="";    txtMileageReading.Text="0";   txtDetailsofInspenction.Text="";  txtRecommendations.Text="";
                txtFindings.Text = ""; txtRemarks.Text = ""; 

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
            clsVehicleInspection DB = new clsVehicleInspection();
            try
            {

                //        String cboRegNo,  DateTime dtDate,Decimal  txtMileageReading,  String txtDetailsofInspenction, String txtRecommendations,
                //String txtFindings,  String txtRemarks
                if (cboRegNo.Text == null)
                {
                    lblResults.Text = "Please enter the registration of the vehicle ";
                    return;
                }
                if (dtDate.GetType() != typeof(DateTime))
                {
                    lblResults.Text = "Please select a valid date";
                    return;
                }
                if (txtMileageReading.GetType() != typeof(decimal))
                {
                    lblResults.Text = "Please enter the required mileage reading";
                    return;
                }
                if (txtDetailsofInspenction.Text == null)
                {
                    lblResults.Text = "Please enter the registration number of the vehicle";
                    return;
                }
                if (txtRecommendations.Text == null)
                {
                    lblResults.Text = "Please enter the wheel size of the vehicle";
                    return;
                }
                if (txtFindings.Text == null)
                {
                    lblResults.Text = "Please enter the rim size of the vehicle";
                    return;
                }
                if (txtRemarks.Text == null)
                {
                    lblResults.Text = "Please enter the weight of the vehicle";
                    return;
                }





                int reccount = 0;
                reccount = DB.FindRecKount(cboRegNo.Text, DateTime.Parse(dtDate.ToString()));

                if (reccount == 0)
                {
                    lblResults.Text = "Record does not exist!!!";
                    return;
                }

                DB.Edit_rec(cboRegNo.Text, DateTime.Parse(dtDate.ToString()), Decimal.Parse(txtMileageReading.Text), txtDetailsofInspenction.Text, txtRecommendations.Text,
                txtFindings.Text, txtRemarks.Text);

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

                cboRegNo.Text = ""; txtMileageReading.Text = "0"; txtDetailsofInspenction.Text = ""; txtRecommendations.Text = "";
                txtFindings.Text = ""; txtRemarks.Text = "";

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
            clsVehicleInspection DB = new clsVehicleInspection();
            try
            {

                //        String cboRegNo,  DateTime dtDate,Decimal  txtMileageReading,  String txtDetailsofInspenction, String txtRecommendations,
                //String txtFindings,  String txtRemarks
                if (cboRegNo.Text == null)
                {
                    lblResults.Text = "Please enter the registration of the vehicle ";
                    return;
                }
                if (dtDate.GetType() != typeof(DateTime))
                {
                    lblResults.Text = "Please select a valid date";
                    return;
                }
                if (txtMileageReading.GetType() != typeof(decimal))
                {
                    lblResults.Text = "Please enter the required mileage reading";
                    return;
                }
                if (txtDetailsofInspenction.Text == null)
                {
                    lblResults.Text = "Please enter the registration number of the vehicle";
                    return;
                }
                if (txtRecommendations.Text == null)
                {
                    lblResults.Text = "Please enter the wheel size of the vehicle";
                    return;
                }
                if (txtFindings.Text == null)
                {
                    lblResults.Text = "Please enter the rim size of the vehicle";
                    return;
                }
                if (txtRemarks.Text == null)
                {
                    lblResults.Text = "Please enter the weight of the vehicle";
                    return;
                }





                int reccount = 0;
                reccount = DB.FindRecKount(cboRegNo.Text, DateTime.Parse(dtDate.ToString()));

                if (reccount > 0)
                {
                    lblResults.Text = "Record already exists!!!";
                    return;
                }

                DB.Delete_rec(cboRegNo.Text, DateTime.Parse(dtDate.ToString()));

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

                cboRegNo.Text = ""; txtMileageReading.Text = "0"; txtDetailsofInspenction.Text = ""; txtRecommendations.Text = "";
                txtFindings.Text = ""; txtRemarks.Text = "";

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
    }
}