<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmCustomer.aspx.cs" Inherits="MiCar.frmCustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 179px;
            left: 541px;
            z-index: 1;
            width: 91px;
        }
        .auto-style2 {
            position: absolute;
            top: 224px;
            left: 542px;
            z-index: 1;
            width: 91px;
        }
        .auto-style3 {
            position: absolute;
            top: 266px;
            left: 541px;
            z-index: 1;
            width: 92px;
            height: 0px;
        }
        .auto-style4 {
            position: absolute;
            top: 311px;
            left: 542px;
            z-index: 1;
            width: 93px;
        }
        .auto-style5 {
            left: 21px;
            top: 337px;
            width: 654px;
        }
        .auto-style6 {
            position: absolute;
            top: 197px;
            left: 9px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 232px;
            left: 9px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 318px;
            left: 15px;
            z-index: 1;
            width: 381px;
        height: 17px;
    }
        .auto-style9 {
        position: absolute;
        top: 168px;
        left: 411px;
        z-index: 1;
    }
    .auto-style10 {
        z-index: 1;
        left: 321px;
        top: 176px;
        position: absolute;
        width: 87px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <asp:Label ID="lblResults" runat="server" CssClass="auto-style8" EnableViewState="False" Font-Bold="True" ForeColor="#FF33CC"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 10px; top: 178px; position: absolute; width: 95px" Text="Customer id:"></asp:Label>
    <asp:TextBox ID="txtCustomerid" runat="server" style="z-index: 1; left: 110px; top: 173px; position: absolute; width: 196px"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 7px; top: 216px; position: absolute" Text="Customer Name:"></asp:Label>
    <asp:TextBox ID="txtCustomerName" runat="server" style="z-index: 1; left: 110px; top: 213px; position: absolute; width: 198px"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 8px; top: 257px; position: absolute; width: 94px" Text="Address:"></asp:Label>
    <asp:TextBox ID="txtAddress" runat="server" style="z-index: 1; left: 108px; top: 250px; position: absolute; width: 200px"></asp:TextBox>
    <asp:Label ID="Label4" runat="server" Text="Telephone No" CssClass="auto-style10"></asp:Label>
    <asp:LinkButton ID="cmdAdd" runat="server" BorderStyle="Outset" CssClass="auto-style1" OnClick="cmdAdd_Click">Add</asp:LinkButton>
    <asp:LinkButton ID="cmdEdit" runat="server" BorderStyle="Outset" CssClass="auto-style2">Edit</asp:LinkButton>
    <asp:LinkButton ID="cmdDelete" runat="server" BorderStyle="Outset" CssClass="auto-style3">Delete</asp:LinkButton>
    <asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style4">Exit</asp:LinkButton>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style5" DataKeyNames="cust_id" DataSourceID="SqlDataSource1" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="cust_id" HeaderText="cust_id" ReadOnly="True" SortExpression="cust_id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="telno" HeaderText="telno" SortExpression="telno" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT * FROM [tb_Customer]"></asp:SqlDataSource>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCustomerid" CssClass="auto-style6" ErrorMessage="Enter a customer id" ForeColor="#FF3399" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCustomerName" CssClass="auto-style7" ErrorMessage="Enter the customer name" ForeColor="#FF0066" SetFocusOnError="True" ValidationExpression="[a-zA-Z]\w{3,9}"></asp:RegularExpressionValidator>
    <asp:Label ID="txtUserLabel" runat="server"></asp:Label>
    <asp:TextBox ID="txtTelephoneNo" runat="server" CssClass="auto-style9"></asp:TextBox>
    </asp:Content>
