<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmOperatorPermissions.aspx.cs" Inherits="MiCar.frmOperatorPermissions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .auto-style1 {
        position: absolute;
        top: 146px;
        left: 16px;
        z-index: 1;
        width: 80px;
    }
    .auto-style2 {
        position: absolute;
        top: 144px;
        left: 104px;
        z-index: 1;
        width: 157px;
    }
    .auto-style3 {
        position: absolute;
        top: 146px;
        left: 299px;
        z-index: 1;
        width: 80px;
    }
    .auto-style4 {
        position: absolute;
        top: 146px;
        left: 366px;
        z-index: 1;
            width: 278px;
            right: 259px;
        }
        .auto-style5 {
            position: absolute;
            top: 184px;
            left: 297px;
            z-index: 1;
            width: 106px;
        }
        .auto-style6 {
            position: absolute;
            top: 188px;
            left: 15px;
            z-index: 1;
            width: 80px;
        }
        .auto-style7 {
            position: absolute;
            top: 186px;
            left: 104px;
            z-index: 1;
            width: 106px;
        }
        .auto-style8 {
            position: absolute;
            top: 184px;
            left: 501px;
            z-index: 1;
            width: 106px;
        }
        .auto-style9 {
            position: absolute;
            top: 183px;
            left: 691px;
            z-index: 1;
            width: 106px;
        }
        .auto-style10 {
            position: absolute;
            top: 186px;
            left: 212px;
            z-index: 1;
            width: 80px;
        }
        .auto-style11 {
            position: absolute;
            top: 188px;
            left: 420px;
            z-index: 1;
            width: 80px;
        }
        .auto-style12 {
            position: absolute;
            top: 185px;
            left: 619px;
            z-index: 1;
            width: 80px;
        }
        .auto-style13 {
            position: absolute;
            top: 237px;
            left: 13px;
            z-index: 1;
            width: 88px;
        }
        .auto-style14 {
            position: absolute;
            top: 235px;
            left: 201px;
            z-index: 1;
            width: 88px;
        }
        .auto-style15 {
            position: absolute;
            top: 239px;
            left: 383px;
            z-index: 1;
            width: 88px;
            right: 220px;
        }
        .auto-style16 {
            position: absolute;
            top: 238px;
            left: 565px;
            z-index: 1;
            width: 88px;
        }
        .auto-style17 {
            position: absolute;
            top: 265px;
            left: 12px;
            z-index: 1;
            width: 847px;
        }
        .auto-style21 {
            position: absolute;
            top: 210px;
            left: 12px;
            z-index: 1;
            width: 497px;
        }
        .auto-style22 {
        position: absolute;
        top: 144px;
        left: 104px;
        z-index: 1;
        width: 156px;
        height: 12px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="Menu item:"></asp:Label>
<asp:DropDownList ID="cboOperatorId" runat="server" CssClass="auto-style22">
</asp:DropDownList>
<asp:DropDownList ID="txtMenu" runat="server" CssClass="auto-style4" AutoPostBack="True">
    <asp:ListItem>Vehicle Inspection</asp:ListItem>
    <asp:ListItem>Daily Transport Checkout </asp:ListItem>
    <asp:ListItem>Daily Mileage Reading                                                    </asp:ListItem>
    <asp:ListItem>Fuel Requisition </asp:ListItem>
    <asp:ListItem>Parts Requisition</asp:ListItem>
    <asp:ListItem>Tyre Requisition</asp:ListItem>
    <asp:ListItem>Fault Reporting Screen</asp:ListItem>
    <asp:ListItem>Assign Driver to Vehicle </asp:ListItem>
    <asp:ListItem>Enter Disciplinary Action</asp:ListItem>
    <asp:ListItem>Setup Roadworthy Reminder</asp:ListItem>
    <asp:ListItem>Setup Insurance Reminder</asp:ListItem>
    <asp:ListItem>Setup Maintenance Reminder</asp:ListItem>
    <asp:ListItem>Daily Mileage Reading Report</asp:ListItem>
    <asp:ListItem>Drivers List</asp:ListItem>
    <asp:ListItem>Vehicles List</asp:ListItem>
    <asp:ListItem>Produce Disciplinary Report</asp:ListItem>
    <asp:ListItem>Drivers Assigned to Vehicles Report </asp:ListItem>
    <asp:ListItem>Daily Transport Checkout Report</asp:ListItem>
    <asp:ListItem>Category</asp:ListItem>
    <asp:ListItem>Supplier</asp:ListItem>
    <asp:ListItem>Machine Types</asp:ListItem>
    <asp:ListItem>Parts</asp:ListItem>
    <asp:ListItem>Fuel </asp:ListItem>
    <asp:ListItem>Tyre</asp:ListItem>
    <asp:ListItem>Vehicle</asp:ListItem>
    <asp:ListItem>Driver</asp:ListItem>
    <asp:ListItem>Customer</asp:ListItem>
    <asp:ListItem>Planned Maintenance Report</asp:ListItem>
    <asp:ListItem>Insurance Reminder Report</asp:ListItem>
    <asp:ListItem>Roadworthy Reminder Report</asp:ListItem>
    <asp:ListItem>Fuel Requisitions Report</asp:ListItem>
    <asp:ListItem>Parts  Requisitions Report</asp:ListItem>
    <asp:ListItem>Tyres Requisitions Report</asp:ListItem>
    <asp:ListItem>Enter Income or Expense  for a Vehicle</asp:ListItem>
    <asp:ListItem>Produce Income and Expense Report</asp:ListItem>
    <asp:ListItem>Setup Operator</asp:ListItem>
    <asp:ListItem>Setup Operator Permissions</asp:ListItem>
    <asp:ListItem>Setup a Role</asp:ListItem>
    <asp:ListItem>Add User to a Role</asp:ListItem>
    <asp:ListItem>Purge Log</asp:ListItem>
    <asp:ListItem>Setup Retention Period</asp:ListItem>
</asp:DropDownList>
<asp:Label ID="Label6" runat="server" CssClass="auto-style6" Text="Create Flag:"></asp:Label>
    <asp:Label ID="txtUserLabel" runat="server"></asp:Label>
<br />
<asp:Label ID="Label2" runat="server" CssClass="auto-style10" Text="Update Flag:"></asp:Label>
    <asp:DropDownList ID="cboCreateFlag" runat="server" AutoPostBack="True" CssClass="auto-style7">
        <asp:ListItem>NO</asp:ListItem>
        <asp:ListItem>YES</asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
<asp:Label ID="Label3" runat="server" CssClass="auto-style1" Text="Operator id:"></asp:Label>
    <asp:DropDownList ID="cboReadFlag" runat="server" AutoPostBack="True" CssClass="auto-style9">
        <asp:ListItem>NO</asp:ListItem>
        <asp:ListItem>YES</asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <asp:DropDownList ID="cboDeleteFlag" runat="server" AutoPostBack="True" CssClass="auto-style8">
        <asp:ListItem>NO</asp:ListItem>
        <asp:ListItem>YES</asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <asp:DropDownList ID="cboUpdateFlag" runat="server" AutoPostBack="True" CssClass="auto-style5">
        <asp:ListItem>NO</asp:ListItem>
        <asp:ListItem>YES</asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
<asp:Label ID="Label4" runat="server" CssClass="auto-style12" Text="Read Flag:"></asp:Label>
<br />
<asp:Label ID="Label5" runat="server" CssClass="auto-style11" Text="Delete Flag:"></asp:Label>
    <asp:LinkButton ID="cmdAdd" runat="server" BorderStyle="Outset" CssClass="auto-style13">Add</asp:LinkButton>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT * FROM [operator_permission]"></asp:SqlDataSource>
    <asp:Label ID="lblResults" runat="server" CssClass="auto-style21" EnableViewState="False" Font-Bold="True" ForeColor="#FF33CC"></asp:Label>
<br />
    <asp:LinkButton ID="cmdEdit" runat="server" BorderStyle="Outset" CssClass="auto-style14">Edit</asp:LinkButton>
    <asp:LinkButton ID="cmdDelete" runat="server" BorderStyle="Outset" CssClass="auto-style15">Delete</asp:LinkButton>
    <asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style16">Exit</asp:LinkButton>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style17" DataSourceID="SqlDataSource1" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="role" HeaderText="role" SortExpression="role" />
            <asp:BoundField DataField="menus" HeaderText="menus" SortExpression="menus" />
            <asp:BoundField DataField="createflag" HeaderText="createflag" SortExpression="createflag" />
            <asp:BoundField DataField="readflag" HeaderText="readflag" SortExpression="readflag" />
            <asp:BoundField DataField="updateflag" HeaderText="updateflag" SortExpression="updateflag" />
            <asp:BoundField DataField="deleteflag" HeaderText="deleteflag" SortExpression="deleteflag" />
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
</asp:Content>
