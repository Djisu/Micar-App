using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.ReportingServices.Diagnostics;
using Transport;
using System.Data;

namespace MiCar
{
    public partial class frmDisplayDailyCheckoutReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //AXcontrol DB = new AXcontrol();
            //ObjectDataSource ddt = DB.FindReport();

            //ReportViewer1.SizeToReportContent = true;

            //ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/Report1.rdlc");

            //ReportViewer1.LocalReport.DataSources.Clear();

            //ObjectDataSource rsource = new ObjectDataSource("MiCar.mydatasetTableAdapters.rep_dailyCheckOutTableAdapter", "FindReport()");

            //ReportViewer1.LocalReport.DataSources.Add(rsource);

            //ReportViewer1.LocalReport.Refresh();
            //////ReportViewer1.ServerReport.ReportServerCredentials.GetFormsCredentials(null, "awadmin", "<password>", null);
            //////ReportViewer1.ReportRefresh();
        }

        //private DataSet Getdata()
        //{
        //    clsDailyCheckoutReport DB = new clsDailyCheckoutReport();
        //    DataSet _dt = DB.Find_rec();
        //    return _dt;
        //}

    }
}