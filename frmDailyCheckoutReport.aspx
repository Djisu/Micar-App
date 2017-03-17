<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmDailyCheckoutReport.aspx.cs" Inherits="MiCar.frmDailyCheckoutReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 108px;
            left: 536px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 162px;
            left: 538px;
            z-index: 1;
            width: 84px;
        }
        .auto-style3 {
            z-index: 1;
            left: 175px;
            top: 115px;
            position: absolute;
            height: 13px;
            width: 157px;
        }
        .auto-style4 {
            position: absolute;
            top: 174px;
            left: 344px;
            z-index: 1;
        }
        .auto-style5 {
            z-index: 1;
            left: 17px;
            top: 115px;
            position: absolute;
        }
        .auto-style6 {
            z-index: 1;
            left: 13px;
            top: 145px;
            position: absolute;
        }
        .auto-style7 {
            z-index: 1;
            left: 173px;
            top: 148px;
            position: absolute;
            width: 157px;
        }
        .auto-style8 {
            z-index: 1;
            left: 350px;
            top: 113px;
            position: absolute;
            width: 157px;
        }
        .auto-style9 {
            z-index: 1;
            left: 344px;
            top: 147px;
            position: absolute;
            width: 157px;
        }
        .auto-style10 {
            position: absolute;
            top: 130px;
            left: 156px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 131px;
            left: 344px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 175px;
            left: 171px;
            z-index: 1;
        }
        .auto-style13 {
            z-index: 1;
            left: 10px;
            top: 200px;
            position: absolute;
            width: 481px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <asp:Label ID="txtUserLabel" runat="server"></asp:Label>
    <asp:Label ID="lblResults" runat="server" CssClass="auto-style13" EnableViewState="False" Font-Bold="True" ForeColor="#FF33CC"></asp:Label>
    <br />
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Vehicle Registration No:" CssClass="auto-style5"></asp:Label>
    <asp:DropDownList ID="cboRegno1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="regno" DataValueField="regno" CssClass="auto-style3">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [regno] FROM [tb_vehicle]"></asp:SqlDataSource>
    <asp:DropDownList ID="cboDate1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="date" DataValueField="date" CssClass="auto-style7">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [date] FROM [tb_DailyMileage_Reading]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [date] FROM [tb_dailyCheckOut]"></asp:SqlDataSource>
    <asp:DropDownList ID="cboDate2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="date" DataValueField="date" CssClass="auto-style9">
    </asp:DropDownList>
    <asp:Label ID="Label2" runat="server" Text="Date:" CssClass="auto-style6"></asp:Label>
    <asp:DropDownList ID="cboRegno2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="regno" DataValueField="regno" CssClass="auto-style8">
    </asp:DropDownList>
    <asp:LinkButton ID="cmdReport" runat="server" BorderStyle="Outset" CssClass="auto-style1" OnClick="cmdReport_Click">Produce Report</asp:LinkButton>
    <asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style2" OnClick="cmdExit_Click">Exit</asp:LinkButton>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="cboRegno1" CssClass="auto-style10" ErrorMessage="Select the registration number" ForeColor="#FF3399" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="cboDate2" CssClass="auto-style4" ErrorMessage="Select the end date" ForeColor="#FF3399" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="auto-style11" ErrorMessage="Select the registration number" ForeColor="#FF3399" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="cboDate1" CssClass="auto-style12" ErrorMessage="Select the start date" ForeColor="#FF3399" SetFocusOnError="True"></asp:RequiredFieldValidator>
</asp:Content>
