<%@ Page Title="Operator Definitions" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmOperatorDefinitions.aspx.cs" Inherits="MiCar.frmOperatorDefinitions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .auto-style1 {
        position: absolute;
        top: 145px;
        left: 10px;
    }
    .auto-style3 {
        position: absolute;
        top: 147px;
        left: 333px;
        z-index: 1;
    }
    .auto-style4 {
        position: absolute;
        top: 180px;
        left: 107px;
        z-index: 1;
        width: 193px;
    }
    .auto-style5 {
        position: absolute;
        top: 182px;
        left: 9px;
        z-index: 1;
    }
    .auto-style6 {
        position: absolute;
        top: 178px;
        left: 436px;
        z-index: 1;
        width: 193px;
    }
    .auto-style7 {
        position: absolute;
        top: 178px;
        left: 332px;
        z-index: 1;
    }
    .auto-style8 {
        position: absolute;
        top: 146px;
        left: 435px;
        z-index: 1;
        width: 193px;
    }
    .auto-style9 {
        position: absolute;
        top: 216px;
        left: 105px;
        z-index: 1;
        width: 193px;
    }
    .auto-style10 {
        position: absolute;
        top: 219px;
        left: 11px;
        z-index: 1;
    }
    .auto-style11 {
        position: absolute;
        top: 217px;
        left: 435px;
        z-index: 1;
        width: 193px;
        right: 574px;
    }
    .auto-style12 {
        position: absolute;
        top: 219px;
        left: 332px;
        z-index: 1;
        height: 17px;
    }
    .auto-style13 {
        position: absolute;
        top: 147px;
        left: 650px;
        z-index: 1;
        height: 17px;
        right: 190px;
    }
    .auto-style14 {
        position: absolute;
        top: 163px;
        left: 650px;
        z-index: 1;
        width: 79px;
        height: 82px;
    }
    .auto-style15 {
        position: absolute;
        top: 246px;
        left: 176px;
        z-index: 1;
    }
    .auto-style16 {
        position: absolute;
        top: 287px;
        left: 176px;
        z-index: 1;
    }
    .auto-style17 {
        position: absolute;
        top: 288px;
        left: 336px;
        z-index: 1;
    }
    .auto-style18 {
        position: absolute;
        top: 245px;
        left: 338px;
        z-index: 1;
    }
    .auto-style19 {
        left: 24px;
        top: 338px;
        width: 867px;
        position: absolute;
        z-index: 1;
        height: 238px;
    }
        .auto-style21 {
            position: absolute;
            top: 324px;
            left: 16px;
            z-index: 1;
            width: 595px;
        }
        .auto-style22 {
            position: absolute;
            top: 292px;
            left: 47px;
        z-index: 1;
    }
    .auto-style23 {
        position: absolute;
        top: 178px;
        left: 94px;
        z-index: 1;
        width: 205px;
        height: 16px;
    }
    .auto-style24 {
        position: absolute;
        top: 146px;
        left: 110px;
        z-index: 1;
        width: 189px;
        height: 14px;
    }
    .auto-style25 {
        position: absolute;
        top: 181px;
        left: 10px;
        z-index: 1;
    }
    .auto-style26 {
        position: absolute;
        top: 282px;
        left: 17px;
        z-index: 1;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:TextBox ID="txtOperatorId" runat="server" CssClass="auto-style24"></asp:TextBox>
<asp:Label ID="Label3" runat="server" CssClass="auto-style1" style="z-index: 1" Text="Operator id:"></asp:Label>
<asp:TextBox ID="txtOperatorName" runat="server" CssClass="auto-style8"></asp:TextBox>
<asp:Label ID="Label4" runat="server" CssClass="auto-style7" Text="First name:"></asp:Label>
<asp:TextBox ID="txtFirstName" runat="server" CssClass="auto-style6"></asp:TextBox>
<asp:TextBox ID="txtLastName" runat="server" CssClass="auto-style9"></asp:TextBox>
<asp:Calendar ID="dtExpiryDate" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" CssClass="auto-style14" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399">
    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
    <OtherMonthDayStyle ForeColor="#999999" />
    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
    <WeekendDayStyle BackColor="#CCCCFF" />
</asp:Calendar>
<asp:Label ID="Label8" runat="server" CssClass="auto-style13" Text="Expiry date::"></asp:Label>
<asp:Label ID="Label10" runat="server" CssClass="auto-style10" Text="Last name:"></asp:Label>
<br />
<asp:TextBox ID="txtPassword" runat="server" CausesValidation="True" CssClass="auto-style23" TextMode="Password"></asp:TextBox>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style19" DataSourceID="SqlDataSource1" GridLines="Horizontal">
    <AlternatingRowStyle BackColor="#F7F7F7" />
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="operatorID" HeaderText="operatorID" SortExpression="operatorID" />
        <asp:BoundField DataField="operatorName" HeaderText="operatorName" SortExpression="operatorName" />
        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
        <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
        <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
        <asp:BoundField DataField="expdate" HeaderText="expdate" SortExpression="expdate" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT * FROM [Operator_definition]"></asp:SqlDataSource>
<asp:TextBox ID="txtLimit" runat="server" CssClass="auto-style11" MaxLength="10" TextMode="Number"></asp:TextBox>
    <asp:Label ID="txtUser" runat="server" CssClass="auto-style22" Text="Label" Visible="False"></asp:Label>
<br />
<asp:Label ID="Label5" runat="server" CssClass="auto-style3" Text="Operator name:"></asp:Label>
<br />
<asp:Label ID="Label7" runat="server" CssClass="auto-style25" Text="Password:"></asp:Label>
<asp:LinkButton ID="cmdAdd1" runat="server" BorderStyle="Outset" CssClass="auto-style15" Width="81px">Add</asp:LinkButton>
<asp:LinkButton ID="cmdEdit" runat="server" BorderStyle="Outset" CssClass="auto-style17" Width="81px">Edit</asp:LinkButton>
<asp:LinkButton ID="cmdDelete" runat="server" BorderStyle="Outset" CssClass="auto-style18" Width="81px">Delete</asp:LinkButton>
<asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style16" Width="81px">Exit</asp:LinkButton>
<asp:Label ID="Label9" runat="server" CssClass="auto-style12" Text="Limit:"></asp:Label>
    <asp:Label ID="lblResults" runat="server" CssClass="auto-style21" EnableViewState="False" Font-Bold="True" ForeColor="#FF33CC"></asp:Label>
    <asp:Label ID="txtUserLabel" runat="server" CssClass="auto-style26"></asp:Label>
    </asp:Content>
