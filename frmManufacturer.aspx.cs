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
    public partial class frmManufacturer : System.Web.UI.Page
    {
        public string varPageName1;
        public string connectionString1 = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            connectionString1 = WebConfigurationManager.ConnectionStrings["FleetConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString1);

            try
            {
                HttpCookie cookie = Request.Cookies["UserName"];

            string varName = "";
            if (cookie != null)
            {
                varName = cookie["varUserName"];
                txtUser.Text = varName;
            }
            else
            {
                txtUser.Text = "No cookies found";
            }


            varPageName1 = "Supplier";
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
            string varUserPresence = DB.FindUserPresence(txtUser.Text);

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
                    string varMenu = DB.FindRoleMenusCreate(varRole, varPageName1);
                    if (varMenu == "false")
                    {
                        cmdAdd2.Visible = false;
                    }
                    else
                    {
                        cmdAdd2.Visible = true;
                    }
                    varMenu = DB.FindRoleMenusRead(varRole, varPageName1);
                    if (varMenu == "false")
                    {
                        GridView11.Visible = false;
                    }
                    else
                    {
                        GridView11.Visible = true;
                    }
                    varMenu = DB.FindRoleMenusUpdate(varRole, varPageName1);
                    if (varMenu == "false")
                    {
                        cmdEdit2.Visible = false;
                    }
                    else
                    {
                        cmdEdit2.Visible = true;
                    }
                    varMenu = DB.FindRoleMenusDelete(varRole, varPageName1);
                    if (varMenu == "false")
                    {
                        cmdDelete2.Visible = false;
                    }
                    else
                    {
                        cmdDelete2.Visible = true;
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
        protected void cmdAdd2_Click(object sender, EventArgs e)
        {
            clsManufacturer DB = new clsManufacturer();

            try
            {

                if (txtManufacturerId1 == null)  //cboitem, lblUnitcost,txtquantity,txtregno,dtdate,txtAmount
                {
                    lblResults1.Text = "Enter the manufacturer";
                }
                if (txtManufacturerId1.GetType() != typeof(String))
                {
                    lblResults1.Text = "Enter the manufacturer";
                }

                
                if (txtManufacturerName0 == null)
                {
                    lblResults1.Text = "The Manufacturer cannot be empty";
                }
                if (txtManufacturerName0.GetType() != typeof(string))
                {
                    lblResults1.Text = "Enter the Manufacturer";
                }
                
                

                string varResponse = DB.Add_rec(txtManufacturerId1.Text, txtManufacturerName0.Text);
                // Fill the DataSet.
                DataSet ds = new DataSet();
                ds = DB.FindTable();
                //adapter.Fill(ds, "tb_Customer");
                // Perform the binding.
                GridView11.DataSource = ds;
                GridView11.DataBind();

                lblResults1.Text = "Operation successful";
                return;
            }
            catch (FormatException err)
            {
                EventLog log = new EventLog();
                log.Source = "Milorry Frontend";
                log.WriteEntry(err.Message, EventLogEntryType.Error);
            }
        }

        
        protected void cmdEdit2_Click(object sender, EventArgs e)
        {
            clsManufacturer DB = new clsManufacturer();

            try
            {

                if (txtManufacturerId1 == null)  //cboitem, lblUnitcost,txtquantity,txtregno,dtdate,txtAmount
                {
                    lblResults1.Text = "Enter the manufacturer";
                }
                if (txtManufacturerId1.GetType() != typeof(String))
                {
                    lblResults1.Text = "Enter the manufacturer";
                }


                if (txtManufacturerName0 == null)
                {
                    lblResults1.Text = "The Manufacturer cannot be empty";
                }
                if (txtManufacturerName0.GetType() != typeof(string))
                {
                    lblResults1.Text = "Enter the Manufacturer";
                }



                string varResponse = DB.Edit_rec(txtManufacturerId1.Text, txtManufacturerName0.Text);
                // Fill the DataSet.
                DataSet ds = new DataSet();
                ds = DB.FindTable();
                //adapter.Fill(ds, "tb_Customer");
                // Perform the binding.
                GridView11.DataSource = ds;
                GridView11.DataBind();

                lblResults1.Text = "Operation successful";
                return;
            }
            catch (FormatException err)
            {
                EventLog log = new EventLog();
                log.Source = "Milorry Frontend";
                log.WriteEntry(err.Message, EventLogEntryType.Error);
            }
        }
        protected void cmdDelete2_Click(object sender, EventArgs e)
        {
            clsManufacturer DB = new clsManufacturer();

            try
            {

                if (txtManufacturerId1 == null)  //cboitem, lblUnitcost,txtquantity,txtregno,dtdate,txtAmount
                {
                    lblResults1.Text = "Enter the manufacturer";
                }
                if (txtManufacturerId1.GetType() != typeof(String))
                {
                    lblResults1.Text = "Enter the manufacturer";
                }


                if (txtManufacturerName0 == null)
                {
                    lblResults1.Text = "The Manufacturer cannot be empty";
                }
                if (txtManufacturerName0.GetType() != typeof(string))
                {
                    lblResults1.Text = "Enter the Manufacturer";
                }



                string varResponse = DB.Delete_rec(txtManufacturerId1.Text, txtManufacturerName0.Text);
                // Fill the DataSet.
                DataSet ds = new DataSet();
                ds = DB.FindTable();
                //adapter.Fill(ds, "tb_Customer");
                // Perform the binding.
                GridView11.DataSource = ds;
                GridView11.DataBind();

                lblResults1.Text = "Operation successful";
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
    //}
//}