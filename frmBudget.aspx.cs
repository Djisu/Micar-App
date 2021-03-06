﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//using System.Web.UI;
using System.Web.UI.WebControls;
using MiLorry.Component;
using System.Configuration.Assemblies;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Net;

namespace MiCar
{
    public partial class frmBudgetReport : System.Web.UI.Page
    {
        public string varPageName;
        public string connectionString = "";


        protected void Page_Load(object sender, EventArgs e)
        {
             connectionString = WebConfigurationManager.ConnectionStrings["MakolaConnectionString"].ConnectionString;
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


                varPageName = "BR_BRANCH";
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
                        lblResults1.Text = "No permissions found for role " + varRole;
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
        connectionString = WebConfigurationManager.ConnectionStrings["FleetConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(connectionString);

        try
        {
            lblResults1.Text = "";

            if (txtBudgetedFigure.GetType() != typeof(Decimal))
            {
                lblResults1.Text = "Enter a decimal figure";
                return;
            }

            if (txtBudgetedFigure.Text.Length == 0)
            {
                lblResults1.Text = "Enter a budgeted figure";
            }

            if (!lblActualValue.Equals(null))
            {
                lblActualValue.Text = "0";
            }

            //*****************************************************************

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


            varPageName = "BR_BRANCH";
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
                    lblResults1.Text = "No permissions found for role " + varRole;
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

                    //lblResults1.Text=txtUserLabel.Text;

                    // Define the ADO.NET objects.
                    connectionString = WebConfigurationManager.ConnectionStrings["MakolaConnectionString"].ConnectionString;
                    string selectSQL = "SELECT * FROM tb_branch";
                    con = new SqlConnection(connectionString);
                    cmd = new SqlCommand(selectSQL, con);
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    // Fill the DataSet.
                    DataSet ds = new DataSet();
                    adapter.Fill(ds, "tb_branch");
                    // Perform the binding.
                    GridView1.DataSource = ds;
                    GridView1.DataBind();

                    //*****************************************************************
                }
            }
        }
        catch (Exception err)
        {
            lblResults1.Text = "An error has occured. See the systems administrator!";

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

        protected void txtBudgetedFigure_TextChanged(object sender, EventArgs e)
        {

        }

        protected void cboStartDate_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}