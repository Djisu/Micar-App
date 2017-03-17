<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmTransactionNew.aspx.cs" Inherits="MiCar.frmTransactionNew" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">

        .auto-style1 {
            position: absolute;
            top: 179px;
            left: 7px;
            right: 855px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 174px;
            left: 114px;
            z-index: 1;
            width: 243px;
            height: 23px;
        }
        .auto-style5 {
            position: absolute;
            top: 177px;
            left: 472px;
            z-index: 1;
            height: 16px;
        }
        .auto-style3 {
            position: absolute;
            top: 217px;
            left: 8px;
            z-index: 1;
            width: 52px;
            height: 13px;
        }
        .auto-style7 {
            position: absolute;
            top: 218px;
            left: 545px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 252px;
            left: 4px;
            z-index: 1;
            width: 49px;
            height: 13px;
        }
        .auto-style10 {
            position: absolute;
            top: 253px;
            left: 116px;
            z-index: 1;
            width: 121px;
        }
        .auto-style11 {
            position: absolute;
            top: 257px;
            left: 282px;
            z-index: 1;
            height: 17px;
        }
        .auto-style14 {
            position: absolute;
            top: 253px;
            left: 353px;
            z-index: 1;
            width: 101px;
        }
        .auto-style13 {
            position: absolute;
            top: 302px;
            left: 281px;
            z-index: 1;
            width: 53px;
            height: 19px;
        }
        .auto-style12 {
            position: absolute;
            top: 339px;
            left: 353px;
            z-index: 1;
            width: 101px;
            right: 484px;
        }
        .auto-style15 {
            position: absolute;
            top: 299px;
            left: 116px;
            z-index: 1;
            width: 116px;
        }
        .auto-style17 {
            position: absolute;
            top: 343px;
            left: 8px;
            z-index: 1;
        }
        .auto-style18 {
            position: absolute;
            top: 343px;
            left: 113px;
            z-index: 1;
            width: 123px;
        }
        .auto-style19 {
            position: absolute;
            top: 355px;
            left: 468px;
            z-index: 1;
            width: 95px;
        }
        .auto-style20 {
            position: absolute;
            top: 369px;
            left: 113px;
            z-index: 1;
            width: 247px;
            right: 586px;
        }
        .auto-style21 {
            position: absolute;
            top: 205px;
            left: 855px;
            z-index: 1;
            width: 90px;
        }
        .auto-style22 {
            position: absolute;
            top: 266px;
            left: 856px;
            z-index: 1;
            width: 90px;
        }
        .auto-style23 {
            left: 17px;
            top: 379px;
            width: 833px;
        }
        .auto-style24 {
            position: absolute;
            top: 343px;
            left: 283px;
            z-index: 1;
        }
        .auto-style25 {
            position: absolute;
            top: 300px;
            left: 353px;
            z-index: 1;
            width: 101px;
        }
        .auto-style26 {
            position: absolute;
            top: 210px;
            left: 283px;
            z-index: 1;
            height: 17px;
        }
        .auto-style27 {
            position: absolute;
            top: 210px;
            left: 348px;
            z-index: 1;
            width: 181px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Account Code:"></asp:Label>
    <asp:DropDownList ID="cboCode" runat="server" AutoPostBack="True" CssClass="auto-style2" DataSourceID="SqlDataSource1" DataTextField="code" DataValueField="code" OnSelectedIndexChanged="cboCode_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style23" DataKeyNames="trans_date" DataSourceID="SqlDataSource1" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="trans_date" HeaderText="trans_date" ReadOnly="True" SortExpression="trans_date" />
            <asp:BoundField DataField="code" HeaderText="code" SortExpression="code" />
            <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
            <asp:BoundField DataField="regno" HeaderText="regno" SortExpression="regno" />
            <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [trans_date], [code], [type], [description], [regno], [amount] FROM [tb_imprest]"></asp:SqlDataSource>
    <asp:Label ID="lblResults" runat="server" CssClass="auto-style20" Font-Bold="True" ForeColor="#FF0066"></asp:Label>
    <asp:Label ID="Label2" runat="server" CssClass="auto-style5" Text="Cheque Number:"></asp:Label>
    <asp:TextBox ID="txtChequeno" runat="server" CssClass="auto-style6" style="z-index: 1; position: absolute; top: 173px; left: 580px"></asp:TextBox>
    <asp:Label ID="Label6" runat="server" CssClass="auto-style3" Text="Amount:"></asp:Label>
    <asp:TextBox ID="txtAmount" runat="server" CssClass="auto-style4" OnTextChanged="txtAmount_TextChanged" TextMode="Number" style="z-index: 1; position: absolute; top: 209px; left: 116px"></asp:TextBox>
    <asp:Label ID="Label4" runat="server" CssClass="auto-style7" Text="Date"></asp:Label>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style9" Text="Type:"></asp:Label>
    <asp:Label ID="cboType" runat="server" CssClass="auto-style10" BorderStyle="Inset"></asp:Label>
    <asp:Calendar ID="dtTransDate" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" CssClass="auto-style8" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" ShowGridLines="True" style="left: 577px; top: 213px; height: 63px; width: 130px;">
        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
        <WeekendDayStyle BackColor="#CCCCFF" />
    </asp:Calendar>
    <asp:Label ID="Label8" runat="server" CssClass="auto-style26" Text="Particulars:"></asp:Label>
    <asp:Label ID="lblExpense" runat="server" CssClass="auto-style14" Text="0" BorderStyle="Inset"></asp:Label>
    <asp:Label ID="Label7" runat="server" CssClass="auto-style24" Text="Balance:"></asp:Label>
    <asp:Label ID="lblIncome" runat="server" CssClass="auto-style25" Text="0" BorderStyle="Inset"></asp:Label>
    <asp:Label ID="Label9" runat="server" CssClass="auto-style17" Text="Registration No:"></asp:Label>
    <asp:Label ID="lblIdCode" runat="server" CssClass="auto-style15" Text="0" BorderStyle="Inset" Visible="False"></asp:Label>
    <asp:DropDownList ID="cboRegNo" runat="server" AutoPostBack="True" CssClass="auto-style18" DataSourceID="SqlDataSource1" DataTextField="regno" DataValueField="regno" OnSelectedIndexChanged="cboRegNo_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:Label ID="txtUserLabel" runat="server" CssClass="auto-style19"></asp:Label>
    <asp:LinkButton ID="cmdAdd" runat="server" BorderStyle="Outset" CssClass="auto-style21" OnClick="cmdAdd_Click">Add</asp:LinkButton>
    <asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style22" OnClick="cmdAdd_Click">Exit</asp:LinkButton>
    <asp:Label ID="Label10" runat="server" CssClass="auto-style13" Text="Income:"></asp:Label>
    <asp:Label ID="lblBalance" runat="server" CssClass="auto-style12" Text="0" BorderStyle="Inset"></asp:Label>
    <asp:Label ID="Label11" runat="server" CssClass="auto-style11" Text="Expense:"></asp:Label>
    <asp:TextBox ID="lblDescription" runat="server" CssClass="auto-style27"></asp:TextBox>
</asp:Content>
