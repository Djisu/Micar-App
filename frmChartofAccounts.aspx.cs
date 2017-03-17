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
    public partial class frmChartofAccounts : System.Web.UI.Page
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
            clsChartofAccounts DB = new clsChartofAccounts();
            try
            {

                //Validate values
                if (txtCode == null)
                {
                    lblResults.Text = "Customer id cannot be empty";
                }
                if (txtCode.GetType() != typeof(int))
                {
                    lblResults.Text = "Code must be a whole number";
                }
                if (cboType == null)
                {
                    lblResults.Text = "Account type cannot be empty";
                }
                if (cboType.GetType() != typeof(string))
                {
                    lblResults.Text = "Account type must be valid";
                }
                if (txtDescription == null)
                {
                    lblResults.Text = "Particulars cannot be empty";
                }
                if (cboType.GetType() != typeof(string))
                {
                    lblResults.Text = "Particulars must be valid";
                }


                //string reccount = "";
                //reccount = DB.FindRecKount(cboType.Text);

                //if (reccount > 0)
                //{
                //    lblResults.Text = "Record already exists!!!";
                //    return;
                //}

                DB.Add_rec(int.Parse(txtCode.Text), cboType.Text, txtDescription.Text);

                //public string Add_rec(String txtCustomerid, String txtCustomerName, String txtAddress,String txtTelephoneNo) Define the ADO.NET objects.
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

                txtCode.Text = "0";
                cboType.Text = "";
                txtDescription.Text = "";
                

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
            clsChartofAccounts DB = new clsChartofAccounts();
            try
            {

                //Validate values
                if (txtCode == null)
                {
                    lblResults.Text = "Customer id cannot be empty";
                }
                if (txtCode.GetType() != typeof(int))
                {
                    lblResults.Text = "Code must be a whole number";
                }
                if (cboType == null)
                {
                    lblResults.Text = "Account type cannot be empty";
                }
                if (cboType.GetType() != typeof(string))
                {
                    lblResults.Text = "Account type must be valid";
                }
                if (txtDescription == null)
                {
                    lblResults.Text = "Particulars cannot be empty";
                }
                if (cboType.GetType() != typeof(string))
                {
                    lblResults.Text = "Particulars must be valid";
                }


                //string reccount = "";
                //reccount = DB.FindRecKount(cboType.Text);

                //if (reccount > 0)
                //{
                //    lblResults.Text = "Record already exists!!!";
                //    return;
                //}

                DB.Edit_rec(int.Parse(txtCode.Text), cboType.Text, txtDescription.Text);

                //public string Add_rec(String txtCustomerid, String txtCustomerName, String txtAddress,String txtTelephoneNo) Define the ADO.NET objects.
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

                txtCode.Text = "0";
                cboType.Text = "";
                txtDescription.Text = "";


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
            clsChartofAccounts DB = new clsChartofAccounts();
            try
            {

                //Validate values
                if (txtCode == null)
                {
                    lblResults.Text = "Customer id cannot be empty";
                }
                if (txtCode.GetType() != typeof(int))
                {
                    lblResults.Text = "Code must be a whole number";
                }
                if (cboType == null)
                {
                    lblResults.Text = "Account type cannot be empty";
                }
                if (cboType.GetType() != typeof(string))
                {
                    lblResults.Text = "Account type must be valid";
                }
                if (txtDescription == null)
                {
                    lblResults.Text = "Particulars cannot be empty";
                }
                if (cboType.GetType() != typeof(string))
                {
                    lblResults.Text = "Particulars must be valid";
                }


                //string reccount = "";
                //reccount = DB.FindRecKount(cboType.Text);

                //if (reccount > 0)
                //{
                //    lblResults.Text = "Record already exists!!!";
                //    return;
                //}

                DB.Delete_rec(int.Parse(txtCode.Text), cboType.Text, txtDescription.Text);

                //public string Add_rec(String txtCustomerid, String txtCustomerName, String txtAddress,String txtTelephoneNo) Define the ADO.NET objects.
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

                txtCode.Text = "0";
                cboType.Text = "";
                txtDescription.Text = "";


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
        protected void cboType_SelectedIndexChanged(object sender, EventArgs e)
        {
            clsChartofAccounts chart = new clsChartofAccounts();
             
            txtDescription.Text = "";
            cboType.Text = cboType.SelectedValue.Substring(0, 2);

            if (cboType.Text == "EXP")
            {
                txtCode.Text = chart.FindRecKount(cboType.Text).ToString();
            }
            if (cboType.Text == "INC")
            {
                txtCode.Text = chart.FindRecKount(cboType.Text).ToString();
            }
        }

        //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    //clsChartofAccounts DB = new clsChartofAccounts();
        //    //DataRow kofi = new DataRow();
        //    //kofi = DB.Find_rec((int) GridView1.SelectedValue);
        //    ////string connectionString = WebConfigurationManager.ConnectionStrings["MakolaConnectionString"].ConnectionString;
        //    ////string selectSQL = "SELECT * FROM DEM_Productx ";
        //    ////selectSQL += " where ProductID=convert(int,'" + GridView1.SelectedValue + "')";
        //    ////SqlConnection con = new SqlConnection(connectionString);
        //    ////SqlCommand cmd = new SqlCommand(selectSQL, con);
        //    ////SqlDataReader reader;


        //    ////con.Open();
        //    ////reader = cmd.ExecuteReader();
        //    ////reader.Read();
           
        //    //if (reader.HasRows)
        //    //{
        //    //    txtProductID.Text = reader["Productid"].ToString();
        //    //    txtProductName.Text = reader["ProductName"].ToString();
        //    //    cboCategoryID.Text = reader["CategoryID"].ToString();
        //    //    txtUnitPrice.Text = reader["UnitPrice"].ToString();
        //    //    txtUnitsInStock.Text = reader["UnitsInStock"].ToString();
        //    //    txtQuantityPerUnit.Text = reader["quantityperunit"].ToString();
        //    //    cboDiscontinued.Text = reader["Discontinued"].ToString();
        //    //    txtFactoryPrice.Text = reader["OrigPrice"].ToString();
        //    //    cboBranch.Text = reader["branch"].ToString();
        //    //    txtVatPercent.Text = reader["VatPercent"].ToString();
        //    //    txtReorderLevel.Text = reader["reorder_level"].ToString();
        //    //    //txtPhoto.Text = reader["pictureplace"].ToString();
        //    //    cboType.Text = reader["type"].ToString();
        //    //    cboSupplierId12.Text = reader["supplierId"].ToString();

        //    //}

        //}

    }
}