<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmBudget.aspx.cs" Inherits="MiCar.frmBudgetReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 209px;
            left: 851px;
            z-index: 1;
            width: 79px;
        }
        .auto-style2 {
            position: absolute;
            top: 171px;
            left: 852px;
            z-index: 1;
            width: 79px;
        }
        .auto-style3 {
            position: absolute;
            top: 245px;
            left: 851px;
            z-index: 1;
            width: 79px;
        }
        .auto-style4 {
            position: absolute;
            top: 283px;
            left: 854px;
            z-index: 1;
            width: 79px;
            height: 14px;
        }
        .auto-style5 {
            left: 20px;
            top: 332px;
            height: 228px;
            position: absolute;
            z-index: 1;
            width: 926px;
        }
        .auto-style6 {
            z-index: 1;
            left: 233px;
            top: 253px;
            position: absolute;
        }
        .auto-style7 {
            position: absolute;
            top: 129px;
            left: 10px;
            z-index: 1;
            width: 324px;
        }
        .auto-style8 {
            position: absolute;
            top: 274px;
            left: 231px;
            z-index: 1;
            width: 258px;
        }
        .auto-style9 {
            z-index: 1;
            left: 235px;
            top: 303px;
            position: absolute;
            width: 195px;
            right: 551px;
        }
        .auto-style10 {
            position: absolute;
            top: 228px;
            left: 590px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 227px;
            left: 232px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 327px;
            left: 590px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 326px;
            left: 234px;
            z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 16px; top: 209px; position: absolute; width: 153px" Text="Vehicle Registration No:"></asp:Label>
    <asp:DropDownList ID="cboRegNo" runat="server" DataSourceID="SqlDataSource1" DataTextField="regno" DataValueField="regno" style="z-index: 1; left: 228px; top: 206px; position: absolute; width: 202px; height: 23px" AutoPostBack="True">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [regno] FROM [tb_vehicle]"></asp:SqlDataSource>
    <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 23px; top: 303px; position: absolute; width: 152px" Text="Start Date:"></asp:Label>
    <asp:DropDownList ID="cboItem" runat="server" style="z-index: 1; left: 592px; top: 205px; position: absolute; width: 178px">
        <asp:ListItem>Fuel</asp:ListItem>
        <asp:ListItem>Part</asp:ListItem>
        <asp:ListItem>Tyre</asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 504px; top: 206px; position: absolute; width: 85px" Text="Item:"></asp:Label>
    <asp:TextBox ID="txtBudgetedFigure" runat="server" Width="188px" CssClass="auto-style6" OnTextChanged="txtBudgetedFigure_TextChanged" CausesValidation="True"></asp:TextBox>
    <br />
    <asp:Label ID="lblActualValue" runat="server" BorderStyle="Groove" style="z-index: 1; left: 592px; top: 256px; position: absolute; width: 172px" Text="0"></asp:Label>
    <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 499px; top: 255px; position: absolute" Text="Actual Value:"></asp:Label>
    <asp:LinkButton ID="cmdAdd" runat="server" BorderStyle="Outset" CssClass="auto-style2" OnClick="cmdAdd_Click">Add</asp:LinkButton>
    <asp:Label ID="lblResults1" runat="server" CssClass="auto-style7" EnableViewState="False" Font-Bold="True" ForeColor="#FF33CC"></asp:Label>
    <asp:Label ID="txtUserLabel" runat="server"></asp:Label>
    <asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style4">Exit</asp:LinkButton>
    <br />
    <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 25px; top: 256px; position: absolute; width: 178px" Text="Budgeted Figure (Money)"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [date] FROM [tb_dailyCheckOut]"></asp:SqlDataSource>
    <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 498px; top: 303px; position: absolute" Text="End Date:"></asp:Label>
    <asp:DropDownList ID="cboStartDate" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="date" DataValueField="date" CssClass="auto-style9" OnSelectedIndexChanged="cboStartDate_SelectedIndexChanged" CausesValidation="True">
    </asp:DropDownList>
    <asp:DropDownList ID="cboEndDate" runat="server" DataSourceID="SqlDataSource2" DataTextField="date" DataValueField="date" style="z-index: 1; left: 591px; top: 304px; position: absolute; height: 28px; width: 177px">
    </asp:DropDownList>
    <asp:LinkButton ID="cmdEdit" runat="server" BorderStyle="Outset" CssClass="auto-style3">Edit</asp:LinkButton>
    <asp:LinkButton ID="cmdDelete" runat="server" BorderStyle="Outset" CssClass="auto-style1">Delete</asp:LinkButton>
    <asp:RangeValidator ID="RangeValidator1" runat="server" CssClass="auto-style8" ErrorMessage="Budgeted figure must be 1 and 100000" ForeColor="#FF3399" MaximumValue="100000" MinimumValue="1" SetFocusOnError="True" ControlToValidate="txtBudgetedFigure" Type="Currency"></asp:RangeValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="cboItem" CssClass="auto-style10" EnableViewState="False" ErrorMessage="Select the item either parts,tyre or fuel" ForeColor="#FF3399" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="cboEndDate" CssClass="auto-style12" EnableViewState="False" ErrorMessage="Select the end date" ForeColor="#FF3399" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style5" DataSourceID="SqlDataSource3" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="regno" HeaderText="regno" SortExpression="regno" />
            <asp:BoundField DataField="item" HeaderText="item" SortExpression="item" />
            <asp:BoundField DataField="budget_value" HeaderText="budget_value" SortExpression="budget_value" />
            <asp:BoundField DataField="actual_value" HeaderText="actual_value" SortExpression="actual_value" />
            <asp:BoundField DataField="start_date" HeaderText="start_date" SortExpression="start_date" />
            <asp:BoundField DataField="end_date" HeaderText="end_date" SortExpression="end_date" />
            <asp:BoundField DataField="variance" HeaderText="variance" SortExpression="variance" />
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
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT * FROM [tb_budgets]"></asp:SqlDataSource>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="cboRegNo" CssClass="auto-style11" EnableViewState="False" ErrorMessage="Select the vehicle registration number" ForeColor="#FF3399" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="cboStartDate" CssClass="auto-style13" EnableViewState="False" ErrorMessage="Select the start date" ForeColor="#FF3399" SetFocusOnError="True"></asp:RequiredFieldValidator>
</asp:Content>
