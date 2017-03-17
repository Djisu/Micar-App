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
    public partial class frmTransactionNew : System.Web.UI.Page
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



                varPageName = "Enter Income or Expense  for a Vehicle";
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
            clsTransaction DB = new clsTransaction();
            try
            {

                //Validate values
                if (dtTransDate.GetType() != typeof(DateTime))
                {
                    lblResults.Text= "Select a valid date";
                }
                if (cboCode.GetType()!= typeof(int))
                {
                    lblResults.Text = "Account code cannot be empty";
                }


                if (cboType.Text == null)
                {
                    lblResults.Text = "Account type cannot be empty";
                }

                if (lblDescription.Text == null)
                {
                    lblResults.Text = "Description cannot be empty";
                }
                if (txtAmount.GetType() != typeof(decimal))
                {
                    lblResults.Text = "Amount must be numeric";
                }

                if (cboRegNo.GetType() != typeof(String))
                {
                    lblResults.Text = "Please select a valid vehicle registration number";
                }



                DB.Add_rec(DateTime.Parse(dtTransDate.SelectedDate.ToString()) ,cboCode.Text ,cboType.Text ,lblDescription.Text ,decimal.Parse(txtAmount.Text), 
            txtUserLabel.Text, txtChequeno.Text,cboRegNo.Text);

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

                cboCode.Text=""; cboType.Text="";lblDescription.Text=""; txtAmount.Text="0";
                txtChequeno.Text = ""; cboRegNo.Text = "";

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
       
        protected void cboCode_SelectedIndexChanged(object sender, System.EventArgs e)
        {
            clsTransaction DB = new clsTransaction();

            cboCode.Text = cboCode.SelectedValue.Substring(0, 2);

            cboType.Text = DB.Find_Type(cboCode.Text);
            lblDescription.Text = DB.Find_Description(cboCode.Text);
        }

        protected void cboRegNo_SelectedIndexChanged(object sender, System.EventArgs e)
        {
            clsTransaction DB = new clsTransaction();

            decimal varExpense = DB.Find_Expense(cboRegNo.Text);
            lblExpense.Text = varExpense.ToString();
            lblIncome.Text = DB.Find_Income(cboRegNo.Text).ToString();
            decimal varBalance = decimal.Parse(lblExpense.Text) -decimal.Parse(lblIncome.Text);
            lblBalance.Text = varBalance.ToString();
        }
    }
}