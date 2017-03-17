<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmTyre.aspx.cs" Inherits="MiCar.frmTyre" %>
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
            left: 253px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 113px;
            left: 466px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 138px;
            left: 8px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 139px;
            left: 247px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 203px;
            left: 244px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 279px;
            left: 11px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 278px;
            left: 242px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 136px;
            left: 457px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 186px;
            left: 12px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 179px;
            left: 253px;
            z-index: 1;
        }
        .auto-style14 {
            position: absolute;
            top: 176px;
            left: 465px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 260px;
            left: 16px;
            z-index: 1;
            height: 17px;
            width: 98px;
        }
        .auto-style16 {
            position: absolute;
            top: 254px;
            left: 244px;
            z-index: 1;
            height: 17px;
        }
        .auto-style17 {
            position: absolute;
            top: 251px;
            left: 488px;
            z-index: 1;
        }
        .auto-style18 {
            position: absolute;
            top: 208px;
            left: 10px;
            z-index: 1;
        }
        .auto-style19 {
            position: absolute;
            top: 205px;
            left: 458px;
            z-index: 1;
        }
        .auto-style20 {
            left: 168px;
            top: 261px;
            width: 190px;
            height: 95px;
        }
        .auto-style21 {
            left: 430px;
            top: 260px;
            width: 190px;
            height: 138px;
        }
        .auto-style22 {
            position: absolute;
            top: 149px;
            left: 632px;
            z-index: 1;
            width: 84px;
        }
        .auto-style23 {
            position: absolute;
            top: 413px;
            left: -47px;
            z-index: 1;
            width: 1004px;
        }
        .auto-style24 {
            position: absolute;
            top: 224px;
            left: 252px;
            z-index: 1;
        }
        .auto-style25 {
            position: absolute;
            top: 157px;
            left: 459px;
            z-index: 1;
        }
        .auto-style26 {
            position: absolute;
            top: 158px;
            left: 246px;
            z-index: 1;
        }
        .auto-style27 {
            position: absolute;
            top: 159px;
            left: 2px;
            z-index: 1;
        }
        .auto-style28 {
            position: absolute;
            top: 306px;
            left: 10px;
            z-index: 1;
            width: 142px;
        }
        .auto-style29 {
            position: absolute;
            top: 366px;
            left: 17px;
            z-index: 1;
            width: 144px;
            height: 43px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <asp:Label ID="txtUserLabel" runat="server"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Description:"></asp:Label>
    <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text="Rim Size:"></asp:Label>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style1" style="z-index: 1" Text="Code:"></asp:Label>
    <asp:TextBox ID="txtDesc" runat="server" CssClass="auto-style5"></asp:TextBox>
    <asp:TextBox ID="txtCode" runat="server" CssClass="auto-style4"></asp:TextBox>
    <asp:DropDownList ID="cboSupplierID" runat="server" AutoPostBack="True" CssClass="auto-style19" DataSourceID="SqlDataSource2" DataTextField="supplierID" DataValueField="supplierID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT * FROM [tb_supplier]"></asp:SqlDataSource>
    <asp:Calendar ID="txtExpireDate" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" CssClass="auto-style21" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" ShowGridLines="True">
        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
        <OtherMonthDayStyle ForeColor="#CC9966" />
        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
        <SelectorStyle BackColor="#FFCC66" />
        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
    </asp:Calendar>
    <asp:TextBox ID="txtWheelSize" runat="server" CssClass="auto-style7"></asp:TextBox>
    <asp:TextBox ID="txtUnitPrice" runat="server" CssClass="auto-style8"></asp:TextBox>
    <asp:TextBox ID="txtRimSize" runat="server" CssClass="auto-style11"></asp:TextBox>
    <asp:Label ID="Label4" runat="server" CssClass="auto-style12" Text="Category Id:"></asp:Label>
    <asp:Label ID="Label5" runat="server" CssClass="auto-style13" Text="Wheel Size:"></asp:Label>
    <asp:Label ID="Label6" runat="server" CssClass="auto-style14" Text="Supplier Id:"></asp:Label>
    <asp:Label ID="Label7" runat="server" CssClass="auto-style15" Text="Unit Price:"></asp:Label>
    <asp:Label ID="Label8" runat="server" CssClass="auto-style16" Text="Manufacture Date:"></asp:Label>
    <asp:Label ID="Label9" runat="server" CssClass="auto-style17" Text="Expiry Date:"></asp:Label>
    <asp:DropDownList ID="cboCategoryId" runat="server" AutoPostBack="True" CssClass="auto-style18" DataSourceID="SqlDataSource1" DataTextField="categoryID" DataValueField="categoryID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT * FROM [tb_category]"></asp:SqlDataSource>
    <asp:LinkButton ID="cmdAdd" runat="server" BorderStyle="Outset" CssClass="auto-style9" style="z-index: 1; position: absolute; top: 110px; left: 633px; width: 84px">Add</asp:LinkButton>
    <asp:LinkButton ID="cmdEdit" runat="server" BorderStyle="Outset" CssClass="auto-style22">Edit</asp:LinkButton>
    <asp:LinkButton ID="cmdDelete" runat="server" BorderStyle="Outset" CssClass="auto-style9" style="z-index: 1; position: absolute; top: 188px; left: 631px; width: 84px">Delete</asp:LinkButton>
    <asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style9" style="z-index: 1; position: absolute; top: 228px; left: 633px; width: 84px">Exit</asp:LinkButton>
    <asp:Calendar ID="txtManuDate" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" CssClass="auto-style20" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" ShowGridLines="True">
        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
        <OtherMonthDayStyle ForeColor="#CC9966" />
        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
        <SelectorStyle BackColor="#FFCC66" />
        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
    </asp:Calendar>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtRimSize" CssClass="auto-style25" ErrorMessage="Size must cannot be empty" ForeColor="#FF33CC" InitialValue="1" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCode" CssClass="auto-style27" ErrorMessage="Code cannot be empty" ForeColor="#FF33CC" InitialValue="1" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <br />
    <br />
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDesc" CssClass="auto-style26" ErrorMessage="Description cannot be empty" ForeColor="#FF33CC" InitialValue="1" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <br />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style23" DataKeyNames="code" DataSourceID="SqlDataSource3" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="code" HeaderText="code" ReadOnly="True" SortExpression="code" />
            <asp:BoundField DataField="part_desc" HeaderText="part_desc" SortExpression="part_desc" />
            <asp:BoundField DataField="unit_price" HeaderText="unit_price" SortExpression="unit_price" />
            <asp:BoundField DataField="supplierID" HeaderText="supplierID" SortExpression="supplierID" />
            <asp:BoundField DataField="wheelsize" HeaderText="wheelsize" SortExpression="wheelsize" />
            <asp:BoundField DataField="rimsize" HeaderText="rimsize" SortExpression="rimsize" />
            <asp:BoundField DataField="Manu_Date" HeaderText="Manu_Date" SortExpression="Manu_Date" />
            <asp:BoundField DataField="Exp_date" HeaderText="Exp_date" SortExpression="Exp_date" />
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
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT * FROM [tb_Tyres]"></asp:SqlDataSource>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtWheelSize" CssClass="auto-style24" ErrorMessage="Size must cannot be empty" ForeColor="#FF33CC" InitialValue="1" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtUnitPrice" CssClass="auto-style28" ErrorMessage="Unit price must be numeric and 10 digits long" ForeColor="#FF3399" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
    <asp:Label ID="lblResults" runat="server" CssClass="auto-style29" EnableViewState="False" Font-Bold="True" ForeColor="#FF33CC"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
