<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmTyreRequisition.aspx.cs" Inherits="MiCar.frmTyreRequisition" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 106px;
            left: 10px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 111px;
            left: 272px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 111px;
            left: 553px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 154px;
            left: 11px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 156px;
            left: 270px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 154px;
            left: 553px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 200px;
            left: 12px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 223px;
            left: 275px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 224px;
            left: 554px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 256px;
            left: 10px;
            z-index: 1;
            height: 15px;
            right: 920px;
        }
        .auto-style11 {
            position: absolute;
            top: 261px;
            left: 552px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 128px;
            left: 272px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 127px;
            left: 548px;
            z-index: 1;
        }
        .auto-style14 {
            position: absolute;
            top: 172px;
            left: 9px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 128px;
            left: 11px;
            z-index: 1;
        }
        .auto-style16 {
            position: absolute;
            top: 241px;
            left: 548px;
            z-index: 1;
        }
        .auto-style17 {
            position: absolute;
            top: 280px;
            left: 549px;
            z-index: 1;
        }
        .auto-style18 {
            position: absolute;
            top: 174px;
            left: 271px;
            z-index: 1;
            width: 134px;
        }
        .auto-style19 {
            position: absolute;
            top: 176px;
            left: 548px;
            z-index: 1;
            width: 135px;
        }
        .auto-style21 {
            position: absolute;
            top: 273px;
            left: 4px;
            z-index: 1;
            width: 400px;
        }
        .auto-style22 {
            position: absolute;
            top: 157px;
            left: 747px;
            z-index: 1;
            width: 84px;
        }
        .auto-style24 {
            position: absolute;
            top: 202px;
            left: 748px;
            z-index: 1;
            width: 84px;
        }
        .auto-style25 {
            position: absolute;
            top: 246px;
            left: 749px;
            z-index: 1;
            width: 84px;
        }
        .auto-style26 {
            position: absolute;
            top: 313px;
            left: 9px;
            z-index: 1;
            width: 711px;
            height: 243px;
        }
        .auto-style27 {
            position: absolute;
            top: 243px;
            left: 273px;
            z-index: 1;
        }
        .auto-style28 {
            position: absolute;
            top: 215px;
            left: 10px;
            z-index: 1;
            width: 131px;
        }
        .auto-style29 {
            position: absolute;
            top: 112px;
            left: 745px;
            z-index: 1;
            width: 84px;
        }
        .auto-style30 {
            position: absolute;
            top: 236px;
            left: 8px;
            z-index: 1;
            width: 275px;
        }
        .auto-style31 {
            position: absolute;
            top: 298px;
            left: 2px;
            z-index: 1;
            width: 275px;
            height: 16px;
        }
        .auto-style32 {
            position: absolute;
            top: 199px;
            left: 549px;
            z-index: 1;
            width: 275px;
        }
        .auto-style33 {
            position: absolute;
            top: 203px;
            left: 261px;
            z-index: 1;
            width: 275px;
            height: 16px;
        }
        .auto-style34 {
            position: absolute;
            top: 299px;
            left: 223px;
            z-index: 1;
            width: 286px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <asp:Label ID="txtUserLabel" runat="server"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text="Rim Size:"></asp:Label>
    <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text="Date:"></asp:Label>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style3" Text="Department:"></asp:Label>
    <asp:Label ID="Label5" runat="server" CssClass="auto-style6" Text="Unit Price:"></asp:Label>
    <asp:Label ID="Label7" runat="server" CssClass="auto-style7" Text="Total:"></asp:Label>
    <asp:Label ID="Label8" runat="server" CssClass="auto-style8" Text="Category Id:"></asp:Label>
    <asp:Label ID="Label9" runat="server" CssClass="auto-style9" Text="Requested by:"></asp:Label>
    <asp:Label ID="Label10" runat="server" CssClass="auto-style10" Text="Purpose:"></asp:Label>
    <asp:Label ID="Label11" runat="server" CssClass="auto-style11" Text="Approved by:"></asp:Label>
    <asp:DropDownList ID="dtdate" runat="server" AutoPostBack="True" CssClass="auto-style12" DataSourceID="SqlDataSource2" DataTextField="date" DataValueField="date" Width="142px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [date] FROM [tb_dailyCheckOut]"></asp:SqlDataSource>
    <asp:DropDownList ID="cboDept" runat="server" AutoPostBack="True" CssClass="auto-style13" DataSourceID="SqlDataSource3" DataTextField="code" DataValueField="code" Width="142px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT * FROM [tb_dept]"></asp:SqlDataSource>
    <asp:Label ID="Label6" runat="server" CssClass="auto-style1" Text="Vehicle Registration No:"></asp:Label>
    <asp:DropDownList ID="cboTyre" runat="server" AutoPostBack="True" CssClass="auto-style14" DataSourceID="SqlDataSource4" DataTextField="categoryID" DataValueField="categoryID" Width="142px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [code], [part_desc] FROM [tb_Tyres]"></asp:SqlDataSource>
    <asp:DropDownList ID="cboitem" runat="server" AutoPostBack="True" CssClass="auto-style27" DataSourceID="SqlDataSource5" DataTextField="categoryID" DataValueField="categoryID" Width="142px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [code], [part_desc] FROM [tb_Tyres]"></asp:SqlDataSource>
    <asp:DropDownList ID="cboRequestedby" runat="server" AutoPostBack="True" CssClass="auto-style16" DataSourceID="SqlDataSource6" DataTextField="code" DataValueField="code" Width="142px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT * FROM [tb_personnel]"></asp:SqlDataSource>
    <asp:DropDownList ID="cboApprovedby" runat="server" AutoPostBack="True" CssClass="auto-style17" DataSourceID="SqlDataSource6" DataTextField="code" DataValueField="code" Width="142px">
    </asp:DropDownList>
    <asp:TextBox ID="txtUnitPrice" runat="server" CssClass="auto-style19"></asp:TextBox>
    <asp:TextBox ID="txtquantity" runat="server" CssClass="auto-style18"></asp:TextBox>
    <asp:LinkButton ID="cmdEdit" runat="server" BorderStyle="Outset" CssClass="auto-style22">Edit</asp:LinkButton>
    <asp:LinkButton ID="cmdDelete" runat="server" BorderStyle="Outset" CssClass="auto-style24">Delete</asp:LinkButton>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [regno], [date], [dept], [item], [quantity], [unit_price], [total] FROM [tb_tyreRequisition]"></asp:SqlDataSource>
    <asp:DropDownList ID="txtregno" runat="server" AutoPostBack="True" CssClass="auto-style15" DataSourceID="SqlDataSource5" DataTextField="categoryID" DataValueField="categoryID" Width="142px">
    </asp:DropDownList>
    <asp:TextBox ID="txtTotal" runat="server" CssClass="auto-style28"></asp:TextBox>
    <asp:LinkButton ID="cmdAdd" runat="server" BorderStyle="Outset" CssClass="auto-style29">Add</asp:LinkButton>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtUnitPrice" CssClass="auto-style32" ErrorMessage="Unit price must be numeric and 10 digits long" ForeColor="#FF3399" ValidationExpression="\d{5}"></asp:RegularExpressionValidator>
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [code], [part_desc] FROM [tb_Tyres]"></asp:SqlDataSource>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtTotal" CssClass="auto-style30" ErrorMessage="Total price must be numeric and 10 digits long" ForeColor="#FF3399" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtQuantity" CssClass="auto-style33" ErrorMessage="Unit price must be numeric and 3 digits long" ForeColor="#FF3399" ValidationExpression="\d{3}"></asp:RegularExpressionValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtPurpose" CssClass="auto-style31" ErrorMessage="Purpose cannot be empty" ForeColor="#FF3399" ValidationExpression="\w"></asp:RegularExpressionValidator>
    <br />
    <br />
    <asp:TextBox ID="txtPurpose" runat="server" CssClass="auto-style21"></asp:TextBox>
    <br />
    <br />
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" CssClass="auto-style5" Text="Quantity:"></asp:Label>
    <br />
    <asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style25">Exit</asp:LinkButton>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style26" DataSourceID="SqlDataSource1" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="regno" HeaderText="regno" SortExpression="regno" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="dept" HeaderText="dept" SortExpression="dept" />
            <asp:BoundField DataField="item" HeaderText="item" SortExpression="item" />
            <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
            <asp:BoundField DataField="unit_price" HeaderText="unit_price" SortExpression="unit_price" />
            <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
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
    <br />
    <br />
    <asp:Label ID="lblResults" runat="server" CssClass="auto-style34" EnableViewState="False" Font-Bold="True" ForeColor="#FF33CC"></asp:Label>
</asp:Content>
