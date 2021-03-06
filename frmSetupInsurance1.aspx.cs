﻿using System;
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
    public partial class frmSetupInsurance1 : System.Web.UI.Page
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
                    txtUserlabel.Text = varName;
                }
                else
                {
                    txtUserlabel.Text = "No cookies found";
                }


                varPageName = "Setup Insurance Reminder";
                //**********************************************************
                //string insertSQL = "select * from tb_RoleUser where userid=@userid";
                AXcontrol DB = new AXcontrol();
                //SqlCommand cmd = new SqlCommand(insertSQL, con);
                //cmd.Parameters.AddWithValue("@userid", txtUserLabel.Text);
                //SqlDataReader reader;
                //con.Open();
                //reader = cmd.ExecuteReader();
                //reader.Read();
                string varUserPresence = DB.FindUserPresence(txtUserlabel.Text);

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
                //con.Close();
            }
        }

        protected void cmdAdd_Click(object sender, EventArgs e)
        {
            clsInsurance DB = new clsInsurance();
            try
            {

                if (cboregno.Text == null)
                {
                    lblResults.Text = "Please select the registration number";
                    return;
                }
                if (dtadvdate.GetType() !=typeof(DateTime))
                {
                    lblResults.Text = "Select a valid advance date";
                    return;
                }
                if (dtreminderdate.GetType() != typeof(DateTime))
                {
                    lblResults.Text = "Select a valid advance date";
                    return;
                }

                int reccount = 0;
                reccount = DB.FindRecKount( cboregno.Text, DateTime.Parse(dtreminderdate.SelectedDate.ToString()), DateTime.Parse(dtadvdate.SelectedDate.ToString()));

                if (reccount > 0)
                {
                    lblResults.Text = "Record already exists!!!";
                    return;
                }

                DB.Add_rec(cboregno.Text, DateTime.Parse(dtreminderdate.SelectedDate.ToString()), DateTime.Parse(dtadvdate.SelectedDate.ToString()));

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

                cboregno.Text = "";
                

                return;
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

        protected void cmdEdit_Click(object sender, EventArgs e)
        {
            clsInsurance DB = new clsInsurance();
            try
            {

                if (cboregno.Text == null)
                {
                    lblResults.Text = "Please select the registration number";
                    return;
                }
                if (dtadvdate.GetType() != typeof(DateTime))
                {
                    lblResults.Text = "Select a valid advance date";
                    return;
                }
                if (dtreminderdate.GetType() != typeof(DateTime))
                {
                    lblResults.Text = "Select a valid advance date";
                    return;
                }

                int reccount = 0;
                reccount = DB.FindRecKount(cboregno.Text, DateTime.Parse(dtreminderdate.SelectedDate.ToString()), DateTime.Parse(dtadvdate.SelectedDate.ToString()));

                if (reccount == 0)
                {
                    lblResults.Text = "Record does not exist!!!";
                    return;
                }

                DB.Edit_rec(cboregno.Text, DateTime.Parse(dtreminderdate.SelectedDate.ToString()), DateTime.Parse(dtadvdate.SelectedDate.ToString()));

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

                cboregno.Text = "";


                return;
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
        protected void cmdDelete_Click(object sender, EventArgs e)
        {
            clsInsurance DB = new clsInsurance();
            try
            {

                if (cboregno.Text == null)
                {
                    lblResults.Text = "Please select the registration number";
                    return;
                }
                if (dtadvdate.GetType() != typeof(DateTime))
                {
                    lblResults.Text = "Select a valid advance date";
                    return;
                }
                if (dtreminderdate.GetType() != typeof(DateTime))
                {
                    lblResults.Text = "Select a valid advance date";
                    return;
                }

                int reccount = 0;
                reccount = DB.FindRecKount(cboregno.Text, DateTime.Parse(dtreminderdate.SelectedDate.ToString()), DateTime.Parse(dtadvdate.SelectedDate.ToString()));

                if (reccount == 0)
                {
                    lblResults.Text = "Record does not exist!!!";
                    return;
                }

                DB.Delete_rec(cboregno.Text, DateTime.Parse(dtreminderdate.SelectedDate.ToString()), DateTime.Parse(dtadvdate.SelectedDate.ToString()));

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

                cboregno.Text = "";


                return;
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

    }
}