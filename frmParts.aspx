<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmParts.aspx.cs" Inherits="MiCar.frmParts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 112px;
            left: 10px;
        }
        .auto-style2 {
            position: absolute;
            top: 113px;
            left: 178px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 114px;
            left: 442px;
            z-index: 1;
            right: 473px;
        }
        .auto-style4 {
            position: absolute;
            top: 129px;
            left: 10px;
        }
        .auto-style5 {
            position: absolute;
            top: 130px;
            left: 176px;
            z-index: 1;
            width: 182px;
        }
        .auto-style6 {
            position: absolute;
            top: 129px;
            left: 439px;
            z-index: 1;
            width: 187px;
        }
        .auto-style7 {
            position: absolute;
            top: 182px;
            left: 12px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 176px;
            left: 177px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 177px;
            left: 446px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 204px;
            left: 11px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 196px;
            left: 444px;
            z-index: 1;
            width: 145px;
            height: 100px;
        }
        .auto-style12 {
            position: absolute;
            top: 196px;
            left: 173px;
            z-index: 1;
            width: 181px;
            height: 100px;
        }
        .auto-style13 {
            position: absolute;
            top: 126px;
            left: 761px;
            z-index: 1;
            width: 84px;
        }
        .auto-style14 {
            position: absolute;
            top: 170px;
            left: 761px;
            z-index: 1;
            width: 84px;
        }
        .auto-style15 {
            position: absolute;
            top: 217px;
            left: 761px;
            z-index: 1;
            width: 84px;
        }
        .auto-style16 {
            position: absolute;
            top: 258px;
            left: 760px;
            z-index: 1;
            width: 84px;
        }
        .auto-style18 {
            position: absolute;
            top: 232px;
            left: 12px;
            z-index: 1;
            width: 208px;
        }
        .auto-style19 {
            position: absolute;
            top: 154px;
            left: 180px;
            z-index: 1;
        }
        .auto-style20 {
            position: absolute;
            top: 149px;
            left: 13px;
            z-index: 1;
        }
        .auto-style24 {
            position: absolute;
            top: 350px;
            left: 22px;
            z-index: 1;
            width: 308px;
            height: 20px;
        }
        .auto-style25 {
            left: 25px;
            top: 368px;
            width: 832px;
            position: absolute;
            z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <asp:Label ID="txtUserLabel" runat="server"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" CssClass="auto-style1" style="z-index: 1" Text="Code(Short name ):"></asp:Label>
    <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text="Name:"></asp:Label>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style3" Text="Supplier Id:"></asp:Label>
    <asp:Label ID="Label4" runat="server" CssClass="auto-style7" Text="Unit Price:"></asp:Label>
    <asp:Label ID="Label5" runat="server" CssClass="auto-style8" Text="Manufacture Date"></asp:Label>
    <asp:Label ID="Label6" runat="server" CssClass="auto-style9" Text="EXpiry Date:"></asp:Label>
    <asp:TextBox ID="txtUnitPrice" runat="server" CssClass="auto-style10"></asp:TextBox>
    <asp:Calendar ID="txtExpireDate" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" CssClass="auto-style11" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" ShowGridLines="True">
        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
        <OtherMonthDayStyle ForeColor="#CC9966" />
        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
        <SelectorStyle BackColor="#FFCC66" />
        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
    </asp:Calendar>
    <asp:LinkButton ID="cmdAdd" runat="server" BorderStyle="Outset" CssClass="auto-style13">Add</asp:LinkButton>
    <asp:LinkButton ID="cmdEdit" runat="server" BorderStyle="Outset" CssClass="auto-style14">Edit</asp:LinkButton>
    <asp:LinkButton ID="cmdDelete" runat="server" BorderStyle="Outset" CssClass="auto-style15">Delete</asp:LinkButton>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" CssClass="auto-style19" ErrorMessage="Name must be entered" ForeColor="#FF3399" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <br />
    <asp:TextBox ID="txtCode" runat="server" CssClass="auto-style4" style="z-index: 1"></asp:TextBox>
    <br />
    <asp:DropDownList ID="cboSupplierID" runat="server" CssClass="auto-style6" DataSourceID="SqlDataSource1" DataTextField="supplierID" DataValueField="supplierID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT * FROM [tb_supplier]"></asp:SqlDataSource>
    <asp:Calendar ID="txtManuDate" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" CssClass="auto-style12" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" ShowGridLines="True">
        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
        <OtherMonthDayStyle ForeColor="#CC9966" />
        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
        <SelectorStyle BackColor="#FFCC66" />
        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
    </asp:Calendar>
    <asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style16">Exit</asp:LinkButton>
    <br />
    <asp:TextBox ID="txtDesc" runat="server" CssClass="auto-style5"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtUnitPrice" CssClass="auto-style18" ErrorMessage="Unit price must be numeric" ForeColor="#FF0066" SetFocusOnError="True" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCode" CssClass="auto-style20" ErrorMessage="Code must be entered" ForeColor="#FF3399" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <br />
    <br />
    <br />
    <br />
    <asp:Label ID="lblResults" runat="server" CssClass="auto-style24" EnableViewState="False" Font-Bold="True" ForeColor="#FF33CC"></asp:Label>
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style25" DataSourceID="SqlDataSource2" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="code" HeaderText="code" SortExpression="code" />
            <asp:BoundField DataField="part_desc" HeaderText="part_desc" SortExpression="part_desc" />
            <asp:BoundField DataField="manufacturer" HeaderText="manufacturer" SortExpression="manufacturer" />
            <asp:BoundField DataField="unit_price" HeaderText="unit_price" SortExpression="unit_price" />
            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT * FROM [tb_parts]"></asp:SqlDataSource>
</asp:Content>
