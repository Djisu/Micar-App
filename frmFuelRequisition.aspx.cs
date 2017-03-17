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
    public partial class frmFuelRequisition : System.Web.UI.Page
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


            varPageName = "Fuel Requisition";
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
                log.Source = "Stock Sales";
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
            clsFuelRequisition DB = new clsFuelRequisition();

            try
            {

                if (cboitem == null)  //cboitem, lblUnitcost,txtquantity,txtregno,dtdate,txtAmount
                {
                    lblResults.Text = "Select the fuel";
                }
                if (cboitem.GetType() != typeof(String))
                {
                    lblResults.Text = "Enter the fuel";
                }

                if (lblUnitcost == null)
                {
                    lblResults.Text = "The unit cost cannot be empty";
                }
                if (lblUnitcost.GetType() != typeof(Decimal))
                {
                    lblResults.Text = "Enter the unit cost";
                }

                if (txtquantity == null)
                {
                    lblResults.Text = "The fault no cannot be empty";
                }
                if (txtquantity.GetType() != typeof(Decimal))
                {
                    lblResults.Text = "Enter the fuel quantity";
                }
                if (txtregno == null)
                {
                    lblResults.Text = "The cost cannot be empty";
                }
                if (txtregno.GetType() != typeof(string))
                {
                    lblResults.Text = "Enter the cost";
                }
                if (txtregno == null)
                {
                    lblResults.Text = "Registration no cannot be empty";
                }


                if (dtdate == null)
                {
                    lblResults.Text = "date cannot be empty";
                }
                if (dtdate.GetType() != typeof(DateTime))
                {
                    lblResults.Text = "Enter the date";
                }


                if (txtAmount == null)
                {
                    lblResults.Text = "The amount cannot be empty";
                }
                if (txtAmount.GetType() != typeof(Decimal))
                {
                    lblResults.Text = "Enter the amount";
                }
                string varResponse = DB.Add_rec(txtregno.Text, DateTime.Parse(dtdate.Text), cboitem.Text, Decimal.Parse(txtquantity.Text), Decimal.Parse(txtAmount.Text), Decimal.Parse(lblUnitcost.Text));
                // Fill the DataSet.//String txtregno,DateTime dtdate,String  cboitem,Decimal txtquantity, Decimal txtAmount,Decimal lblUnitcost
                DataSet ds = new DataSet();
                ds = DB.FindTable();
                //adapter.Fill(ds, "tb_Customer");
                // Perform the binding.
                GridView1.DataSource = ds;
                GridView1.DataBind();

                lblResults.Text = "Operation successful";
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