<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmFuelRequisition.aspx.cs" Inherits="MiCar.frmFuelRequisition" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 115px;
            left: 10px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 115px;
            left: 279px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 133px;
            left: 7px;
            z-index: 1;
            width: 122px;
        }
        .auto-style4 {
            position: absolute;
            top: 192px;
            left: 7px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 175px;
            left: 13px;
            z-index: 1;
            right: 942px;
        }
        .auto-style6 {
            position: absolute;
            top: 260px;
            left: 273px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 179px;
            left: 278px;
            z-index: 1;
            height: 12px;
        }
        .auto-style8 {
            position: absolute;
            top: 258px;
            left: 10px;
            z-index: 1;
            width: 122px;
        }
        .auto-style9 {
            position: absolute;
            top: 240px;
            left: 12px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 198px;
            left: 274px;
            z-index: 1;
            width: 122px;
        }
        .auto-style11 {
            position: absolute;
            top: 242px;
            left: 276px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 136px;
            left: 279px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 133px;
            left: 516px;
            z-index: 1;
            width: 76px;
        }
        .auto-style14 {
            position: absolute;
            top: 243px;
            left: 518px;
            z-index: 1;
            width: 77px;
            right: 234px;
        }
        .auto-style15 {
            position: absolute;
            top: 167px;
            left: 516px;
            z-index: 1;
            width: 77px;
        }
        .auto-style16 {
            position: absolute;
            top: 206px;
            left: 516px;
            z-index: 1;
            width: 77px;
        }
        .auto-style17 {
            position: absolute;
            top: 213px;
            left: 9px;
            z-index: 1;
            width: 208px;
        }
        .auto-style18 {
            position: absolute;
            top: 158px;
            left: 277px;
            z-index: 1;
            width: 205px;
            height: 14px;
        }
        .auto-style19 {
            position: absolute;
            top: 282px;
            left: 272px;
            z-index: 1;
            width: 208px;
        }
        .auto-style24 {
            position: absolute;
            top: 279px;
            left: 11px;
            z-index: 1;
            width: 308px;
            height: 20px;
        }
        .auto-style25 {
            left: 10px;
            top: 298px;
            width: 859px;
            position: absolute;
            z-index: 1;
            height: 88px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <asp:Label ID="txtUserLabel" runat="server"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Unit Cost:"></asp:Label>
    <asp:Label ID="Label2" runat="server" CssClass="auto-style7" Text="Vehicle Registration No:"></asp:Label>
    <asp:DropDownList ID="cboitem" runat="server" AutoPostBack="True" CssClass="auto-style3" DataSourceID="SqlDataSource1" DataTextField="code" DataValueField="code">
    </asp:DropDownList>
    <asp:TextBox ID="txtquantity" runat="server" AutoPostBack="True" CausesValidation="True" CssClass="auto-style4" Enabled="False"></asp:TextBox>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [code] FROM [tb_fuel]"></asp:SqlDataSource>
    <asp:TextBox ID="lblUnitcost" runat="server" AutoPostBack="True" CausesValidation="True" CssClass="auto-style12" Enabled="False"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text="Quantity:"></asp:Label>
    <asp:Label ID="Label4" runat="server" CssClass="auto-style1" Text="Fuel:"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [code] FROM [tb_fuel]"></asp:SqlDataSource>
    <asp:DropDownList ID="txtregno" runat="server" AutoPostBack="True" CssClass="auto-style10" DataSourceID="SqlDataSource3" DataTextField="regno" DataValueField="regno">
    </asp:DropDownList>
    <asp:Label ID="Label5" runat="server" CssClass="auto-style9" Text="Date:"></asp:Label>
    <asp:DropDownList ID="dtdate" runat="server" AutoPostBack="True" CssClass="auto-style8" DataSourceID="SqlDataSource4" DataTextField="date" DataValueField="date">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [date] FROM [rep_dailyCheckOut]"></asp:SqlDataSource>
    <asp:Label ID="Label6" runat="server" CssClass="auto-style11" Text="Amount:"></asp:Label>
    <asp:LinkButton ID="cmdDelete" runat="server" BorderStyle="Outset" CssClass="auto-style16">Delete</asp:LinkButton>
    <asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style14">Exit</asp:LinkButton>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtUnitCost" CssClass="auto-style18" ErrorMessage="Unit price must be numeric" ForeColor="#FF0066" SetFocusOnError="True" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtQuantity" CssClass="auto-style17" ErrorMessage="Quantity must be numeric" ForeColor="#FF0066" SetFocusOnError="True" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtAmount" CssClass="auto-style19" ErrorMessage="Amount must be numeric" ForeColor="#FF0066" SetFocusOnError="True" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
    <br />
    <asp:LinkButton ID="cmdEdit" runat="server" BorderStyle="Outset" CssClass="auto-style15">Edit</asp:LinkButton>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
    <asp:Label ID="lblResults" runat="server" CssClass="auto-style24" EnableViewState="False" Font-Bold="True" ForeColor="#FF33CC"></asp:Label>
    <br />
    <asp:LinkButton ID="cmdAdd" runat="server" BorderStyle="Outset" CssClass="auto-style13">Add</asp:LinkButton>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style25" DataSourceID="SqlDataSource5" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="regno" HeaderText="regno" SortExpression="regno" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="item" HeaderText="item" SortExpression="item" />
            <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
            <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
            <asp:BoundField DataField="unit_cost" HeaderText="unit_cost" SortExpression="unit_cost" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT * FROM [tb_fuelRequisition]"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [regno] FROM [tb_vehicle]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:TextBox ID="txtAmount" runat="server" AutoPostBack="True" CausesValidation="True" CssClass="auto-style6" Enabled="False"></asp:TextBox>
    <br />
</asp:Content>
