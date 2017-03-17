<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmBudgetReport.aspx.cs" Inherits="MiCar.frmBudgetReport1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            z-index: 1;
            left: 413px;
            top: 200px;
            position: absolute;
            width: 124px;
        }
        .auto-style2 {
            position: absolute;
            top: 182px;
            left: 656px;
            z-index: 1;
            width: 104px;
        }
        .auto-style3 {
            position: absolute;
            top: 221px;
            left: 659px;
            z-index: 1;
            width: 104px;
        }
        .auto-style4 {
            z-index: 1;
            left: 413px;
            top: 119px;
            position: absolute;
            width: 135px;
        }
        .auto-style5 {
            z-index: 1;
            left: 377px;
            top: 120px;
            position: absolute;
        }
        .auto-style6 {
            position: absolute;
            top: 116px;
            left: 150px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 118px;
            left: 9px;
            z-index: 1;
        }
        .auto-style8 {
            z-index: 1;
            left: 415px;
            top: 158px;
            position: absolute;
            width: 134px;
        }
        .auto-style9 {
            z-index: 1;
            left: 337px;
            top: 163px;
            position: absolute;
            right: 575px;
        }
        .auto-style10 {
            z-index: 1;
            left: 329px;
            top: 203px;
            position: absolute;
            height: 20px;
        }
        .auto-style11 {
            z-index: 1;
            left: 145px;
            top: 156px;
            position: absolute;
            width: 137px;
        }
        .auto-style12 {
            z-index: 1;
            left: 8px;
            top: 164px;
            position: absolute;
            width: 85px;
        }
        .auto-style13 {
            z-index: 1;
            left: 150px;
            top: 200px;
            position: absolute;
            width: 128px;
        }
        .auto-style14 {
            z-index: 1;
            left: 8px;
            top: 203px;
            position: absolute;
            width: 96px;
        }
        .auto-style15 {
            position: absolute;
            top: 141px;
            left: 373px;
            z-index: 1;
        }
        .auto-style16 {
            position: absolute;
            top: 133px;
            left: 13px;
            z-index: 1;
        }
        .auto-style17 {
            position: absolute;
            top: 182px;
            left: 339px;
            z-index: 1;
        }
        .auto-style18 {
            position: absolute;
            top: 184px;
            left: 10px;
            z-index: 1;
        }
        .auto-style19 {
            position: absolute;
            top: 216px;
            left: 11px;
            z-index: 1;
        }
        .auto-style20 {
            position: absolute;
            top: 243px;
            left: 4px;
            z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <asp:Label ID="lblResults" runat="server" CssClass="auto-style20" EnableViewState="False" Font-Bold="True" ForeColor="#FF33CC"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label3" runat="server" Text="Vehicle Registration No:" CssClass="auto-style7"></asp:Label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="cboRegNo" CssClass="auto-style16" EnableViewState="False" ErrorMessage="Select a vehicle registration number" ForeColor="#FF3399" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:DropDownList ID="cboRegNo" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="regno" DataValueField="regno" Width="136px" CssClass="auto-style6">
    </asp:DropDownList>
    <asp:Label ID="Label6" runat="server" Text="Start Date:" CssClass="auto-style9"></asp:Label>
    <asp:DropDownList ID="cboStartDate" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="date" DataValueField="date" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" CssClass="auto-style11">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [regno] FROM [tb_vehicle]"></asp:SqlDataSource>
    <asp:DropDownList ID="cboEndDate" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="date" DataValueField="date" CssClass="auto-style8">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [date] FROM [tb_dailyCheckOut]"></asp:SqlDataSource>
    <asp:TextBox ID="txtActualFigure" runat="server" OnTextChanged="TextBox2_TextChanged" CssClass="auto-style1" Enabled="False"></asp:TextBox>
    <asp:TextBox ID="txtBudgetedFigure" runat="server" CssClass="auto-style13"></asp:TextBox>
    <asp:Label ID="Label7" runat="server" Text="Actual Figure:" CssClass="auto-style10"></asp:Label>
    <asp:Label ID="lblBudgetFigure" runat="server" Text="Budgeted Figure" CssClass="auto-style14"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [date] FROM [tb_dailyCheckOut]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [date] FROM [tb_dailyCheckOut]"></asp:SqlDataSource>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="cboItem" CssClass="auto-style15" EnableViewState="False" ErrorMessage="Select an item either tyre,part or fuel" ForeColor="#FF3399" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="cboStartDate" CssClass="auto-style18" ErrorMessage="Select the start date" ForeColor="#FF3399" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="cboEndDate" CssClass="auto-style17" ErrorMessage="Select the enddate" ForeColor="#FF3399" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style3">Exit</asp:LinkButton>
    <br />
    <asp:LinkButton ID="cmdReport" runat="server" BorderStyle="Outset" CssClass="auto-style2" OnClick="cmdReport_Click">Produce Report</asp:LinkButton>
    <asp:Label ID="txtUserLabel" runat="server"></asp:Label>
    <br />
    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtBudgetedFigure" CssClass="auto-style19" ErrorMessage="Enter the budgeted figure" ForeColor="#FF3399" SetFocusOnError="True"></asp:RangeValidator>
    <br />
    <asp:Label ID="Label5" runat="server" Text="Start Date:" CssClass="auto-style12"></asp:Label>
    <asp:DropDownList ID="cboItem" runat="server" AutoPostBack="True" CssClass="auto-style4">
        <asp:ListItem>Fuel</asp:ListItem>
        <asp:ListItem>Part</asp:ListItem>
        <asp:ListItem>Tyre</asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="Label4" runat="server" Text="Item:" CssClass="auto-style5"></asp:Label>
</asp:Content>
