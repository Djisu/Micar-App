<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmDisplayDailyCheckoutReport.aspx.cs" Inherits="MiCar.frmDisplayDailyCheckoutReport" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <p>
        <br />
    </p>
    <p>
    </p>
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="864px">
        <localreport reportpath="Report1.rdlc">
            <datasources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
            </datasources>
        </localreport>
</rsweb:ReportViewer>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [regno], [date], [driver_name], [assignment] FROM [rep_dailyCheckOut]"></asp:SqlDataSource>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetData" TypeName="MiCar.mydatasetTableAdapters.rep_dailyCheckOutTableAdapter" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}">
    <InsertParameters>
        <asp:Parameter Name="regno" Type="String" />
        <asp:Parameter Name="date" Type="DateTime" />
        <asp:Parameter Name="time_out" Type="DateTime" />
        <asp:Parameter Name="time_in" Type="DateTime" />
        <asp:Parameter Name="driver_name" Type="String" />
        <asp:Parameter Name="assignment" Type="String" />
        <asp:Parameter Name="remarks" Type="String" />
    </InsertParameters>
    </asp:ObjectDataSource>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    </asp:Content>
