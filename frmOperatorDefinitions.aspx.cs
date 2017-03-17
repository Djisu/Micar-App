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
    public partial class frmOperatorDefinitions : System.Web.UI.Page
    {
        public string varPageName;
        public string connectionString = "";
        

        protected void Page_Load(object sender, EventArgs e)
        {
 
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

                varPageName = "Setup Operator";
                //**********************************************************
                // Create the Command.
                AXcontrol DB = new AXcontrol();
                 string varUserPresence = DB.FindUserPresence(txtUserLabel.Text);

                if (varUserPresence.Length > 0)
                {
                    string varRole = varUserPresence.ToString();  // (string)reader["role"];
 
                    DataSet ds = new DataSet();
                    ds = DB.FindRoleMenus(varRole, varPageName);
                    if (ds.Tables[0].Rows.Count == 0)
                    {
                        string myResponse = "No permissions found for role " + varRole;

                        // Create the cookie object.
                        HttpCookie responsecookie = new HttpCookie("ResponseCookie");
                        // Set a value in it.
                        responsecookie["ResponseCookie"] = myResponse;
                        Response.Cookies.Add(responsecookie);

                        Response.Redirect("Default.aspx");
                       
                    }
                    else
                    {
                        string varMenu = DB.FindRoleMenusCreate(varRole, varPageName);
                        if (varMenu == "false")
                        {
                            cmdAdd1.Visible = false;
                        }
                        else
                        {
                            cmdAdd1.Visible = true;
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
            OperatorDefinition DB = new OperatorDefinition();
            try
            {

                if (txtOperatorId.Text == null)
                {
                    lblResults.Text = "Please enter the operator id";
                    return;
                }
                if (txtOperatorName.Text == null)
                {
                    lblResults.Text = "Please enter the operator name";
                    return;
                }
                if (txtPassword.Text == null)
                {
                    lblResults.Text = "Please enter the password";
                    return;
                }
                if (txtFirstName.Text == null)
                {
                    lblResults.Text = "Please enter the first name";
                    return;
                }
                if (txtLastName.Text == null)
                {
                    lblResults.Text = "Please enter the last name";
                    return;
                }
                if (txtLimit.Text == null)
                {
                    lblResults.Text = "Please enter the limit";
                    return;
                }
                if (txtLimit.GetType() != typeof(Decimal))
                {
                    lblResults.Text = "Enter a valid limit";
                    return;
                }

                int reccount = 0;
                reccount = DB.FindRecKount(txtOperatorId.Text);

                if (reccount > 0)
                {
                    lblResults.Text = "Record already exists!!!";
                    return;
                }

                DB.AddOperator(txtOperatorId.Text,  txtOperatorName.Text,  txtPassword.Text,  txtFirstName.Text,  txtLastName.Text, decimal.Parse(txtLimit.Text), DateTime.Parse(dtExpiryDate.ToString()));

                // Fill the DataSet.
                DataSet ds = new DataSet();
                ds = DB.FindTable();
                //adapter.Fill(ds, "tb_Customer");
                // Perform the binding.
                GridView1.DataSource = ds;
                GridView1.DataBind();

                lblResults.Text = "Operation successful";

                txtOperatorId.Text = "";
                txtOperatorName.Text = "";
                txtPassword.Text = "";
                txtFirstName.Text = "";
                txtLastName.Text = "";
                txtLimit.Text = "0";
                return;
            }
            catch (FormatException err)
            {
                EventLog log = new EventLog();
                log.Source = "Milorry Frontend";
                log.WriteEntry(err.Message, EventLogEntryType.Error);
            }
        }

        protected void cmdEdit_Click(object sender, EventArgs e)
        {
            OperatorDefinition DB = new OperatorDefinition();
            try
            {

                if (txtOperatorId.Text == null)
                {
                    lblResults.Text = "Please enter the operator id";
                    return;
                }
                if (txtOperatorName.Text == null)
                {
                    lblResults.Text = "Please enter the operator name";
                    return;
                }
                if (txtPassword.Text == null)
                {
                    lblResults.Text = "Please enter the password";
                    return;
                }
                if (txtFirstName.Text == null)
                {
                    lblResults.Text = "Please enter the first name";
                    return;
                }
                if (txtLastName.Text == null)
                {
                    lblResults.Text = "Please enter the last name";
                    return;
                }
                if (txtLimit.Text == null)
                {
                    lblResults.Text = "Please enter the limit";
                    return;
                }
                if (txtLimit.GetType() != typeof(Decimal))
                {
                    lblResults.Text = "Enter a valid limit";
                    return;
                }

                int reccount = 0;
                reccount = DB.FindRecKount(txtOperatorId.Text);

                if (reccount > 0)
                {
                    lblResults.Text = "Record already exists!!!";
                    return;
                }

                DB.EditOperator(txtOperatorId.Text, txtOperatorName.Text, txtPassword.Text, txtFirstName.Text, txtLastName.Text, decimal.Parse(txtLimit.Text), DateTime.Parse(dtExpiryDate.ToString()));
 
                // Fill the DataSet.
                DataSet ds = new DataSet();
                ds = DB.FindTable();
                //adapter.Fill(ds, "tb_Customer");
                // Perform the binding.
                GridView1.DataSource = ds;
                GridView1.DataBind();

                lblResults.Text = "Operation successful";

                txtOperatorId.Text = "";
                txtOperatorName.Text = "";
                txtPassword.Text = "";
                txtFirstName.Text = "";
                txtLastName.Text = "";
                txtLimit.Text = "0";
                return;
            }
            catch (FormatException err)
            {
                EventLog log = new EventLog();
                log.Source = "Milorry Frontend";
                log.WriteEntry(err.Message, EventLogEntryType.Error);
            }
        }
        protected void cmdDelete_Click(object sender, EventArgs e)
        {
            OperatorDefinition DB = new OperatorDefinition();
            try
            {
                //using (myConnection)
                //{
                lblResults.Text = DB.DeleteOperator(txtOperatorId.Text);

                // Define the ADO.NET objects.
                string connectionString =
                connectionString = WebConfigurationManager.ConnectionStrings["FleetConnectionString"].ConnectionString;

                string selectSQL = "SELECT branch FROM Operator_definition";
                SqlConnection con = new SqlConnection(connectionString);
                SqlCommand cmd = new SqlCommand(selectSQL, con);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                // Fill the DataSet.
                DataSet ds = new DataSet();
                adapter.Fill(ds, "Operator_definition");
                // Perform the binding.
                GridView1.DataSource = null;
                // GridView1.DataSource = ds;
                // GridView1.DataBind();
                GridView1.Visible = true;

                Response.Redirect("frmSuccess.aspx");
                //}
            }
            catch (FormatException err)
            {
                throw err;
            }
        }
        protected void cmdExit_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}