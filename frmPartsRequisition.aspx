<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmPartsRequisition.aspx.cs" Inherits="MiCar.frmPartsRequisition" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .auto-style1 {
        position: absolute;
        top: 151px;
        left: 10px;
        right: 1095px;
            z-index: 1;
        }
    .auto-style2 {
        position: absolute;
        top: 149px;
        left: 166px;
        z-index: 1;
        width: 156px;
    }
    .auto-style3 {
        position: absolute;
        top: 153px;
        left: 340px;
        right: 452px;
        z-index: 1;
    }
    .auto-style4 {
        position: absolute;
        top: 148px;
        left: 407px;
        z-index: 1;
        width: 156px;
    }
    .auto-style5 {
        position: absolute;
        top: 207px;
        left: 168px;
        z-index: 1;
        width: 156px;
    }
    .auto-style6 {
        position: absolute;
        top: 208px;
        z-index: 1;
        width: 156px;
        left: 410px;
    }
    .auto-style7 {
        position: absolute;
        top: 333px;
        left: 408px;
        z-index: 1;
        width: 156px;
    }
    .auto-style8 {
        position: absolute;
        top: 270px;
        left: 170px;
        z-index: 1;
        width: 145px;
    }
    .auto-style9 {
        position: absolute;
        top: 273px;
        left: 409px;
        z-index: 1;
        width: 145px;
    }
    .auto-style10 {
        position: absolute;
        top: 330px;
        left: 166px;
        z-index: 1;
        width: 145px;
    }
    .auto-style11 {
        position: absolute;
        top: 383px;
        left: 169px;
        z-index: 1;
        width: 384px;
    }
    .auto-style12 {
        position: absolute;
        top: 438px;
        left: 168px;
        z-index: 1;
        width: 145px;
    }
    .auto-style13 {
        position: absolute;
        top: 441px;
        left: 408px;
        z-index: 1;
        width: 145px;
    }
    .auto-style14 {
        position: absolute;
        top: 211px;
        left: 91px;
        right: 697px;
        z-index: 1;
        height: 18px;
    }
    .auto-style15 {
        position: absolute;
        top: 234px;
        left: 623px;
        right: 191px;
        z-index: 1;
    }
    .auto-style16 {
        position: absolute;
        top: 269px;
        left: 108px;
        right: 684px;
        z-index: 1;
    }
    .auto-style17 {
        position: absolute;
        top: 268px;
        left: 343px;
        right: 421px;
        z-index: 1;
    }
    .auto-style18 {
        position: absolute;
        top: 328px;
        left: 109px;
        right: 683px;
        z-index: 1;
    }
    .auto-style19 {
        position: absolute;
        top: 334px;
        left: 327px;
        right: 428px;
        z-index: 1;
    }
    .auto-style20 {
        position: absolute;
        top: 383px;
        left: 107px;
        right: 685px;
        z-index: 1;
    }
    .auto-style21 {
        position: absolute;
        top: 442px;
        left: 81px;
        right: 662px;
        z-index: 1;
        height: 17px;
    }
    .auto-style22 {
        position: absolute;
        top: 438px;
        left: 325px;
        right: 423px;
        z-index: 1;
    }
        .auto-style23 {
            position: absolute;
            top: 168px;
            left: 10px;
        }
        .auto-style24 {
            position: absolute;
            top: 180px;
            left: 338px;
            z-index: 1;
        }
        .auto-style25 {
            position: absolute;
            top: 232px;
            left: 89px;
            z-index: 1;
        }
        .auto-style26 {
            position: absolute;
            top: 232px;
            left: 341px;
            z-index: 1;
        }
        .auto-style27 {
            position: absolute;
            top: 358px;
            left: 328px;
            z-index: 1;
        }
        .auto-style28 {
            position: absolute;
            top: 404px;
            left: 109px;
            z-index: 1;
        }
        .auto-style29 {
            position: absolute;
            top: 470px;
            left: 83px;
            z-index: 1;
        }
        .auto-style30 {
            position: absolute;
            top: 470px;
            left: 332px;
            z-index: 1;
        }
        .auto-style31 {
            position: absolute;
            top: 297px;
            left: 107px;
            z-index: 1;
        }
        .auto-style32 {
            position: absolute;
            top: 301px;
            left: 345px;
            z-index: 1;
        }
        .auto-style33 {
            position: absolute;
            top: 357px;
            left: 112px;
            z-index: 1;
        }
        .auto-style34 {
            position: absolute;
            top: 180px;
            left: 623px;
            z-index: 1;
            width: 86px;
        }
        .auto-style35 {
            position: absolute;
            top: 209px;
            left: 338px;
            right: 510px;
            z-index: 1;
            height: 17px;
        }
        .auto-style36 {
            position: absolute;
            top: 280px;
            left: 621px;
            right: 191px;
            z-index: 1;
            height: 16px;
        }
        .auto-style37 {
            position: absolute;
            top: 332px;
            left: 622px;
            right: 193px;
            z-index: 1;
            height: 18px;
        }
        .auto-style38 {
            left: -13px;
            top: 504px;
            width: 841px;
        }
        .auto-style39 {
            position: absolute;
            top: 493px;
            left: 12px;
            z-index: 1;
            width: 275px;
            height: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <asp:Label ID="txtUserLabel" runat="server"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Vehicle Registration No:"></asp:Label>
<asp:DropDownList ID="dtdate" runat="server" AutoPostBack="True" CssClass="auto-style4" DataSourceID="SqlDataSource2" DataTextField="date" DataValueField="date" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
</asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [date] FROM [tb_dailyCheckOut]"></asp:SqlDataSource>
<asp:Label ID="Label2" runat="server" CssClass="auto-style35" Text="Parts:"></asp:Label>
<asp:DropDownList ID="cboitem" runat="server" AutoPostBack="True" CssClass="auto-style6" DataSourceID="SqlDataSource4" DataTextField="code" DataValueField="code" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
</asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [code], [part_desc] FROM [tb_parts]"></asp:SqlDataSource>
<asp:DropDownList ID="cboDept" runat="server" AutoPostBack="True" CssClass="auto-style5" DataSourceID="SqlDataSource3" DataTextField="code" DataValueField="code" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
</asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT * FROM [tb_dept]"></asp:SqlDataSource>
<asp:DropDownList ID="txtregno" runat="server" AutoPostBack="True" CssClass="auto-style2" DataSourceID="SqlDataSource1" DataTextField="regno" DataValueField="regno" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
</asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [regno] FROM [tb_vehicle]"></asp:SqlDataSource>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="cboDate" CssClass="auto-style24" ErrorMessage="Select the date" ForeColor="#FF0066" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="cboRegNo" CssClass="auto-style23" ErrorMessage="Select the registration number" ForeColor="#FF0066" SetFocusOnError="True" style="z-index: 1"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtUnitPrice" CssClass="auto-style32" ErrorMessage="It must be numeric" ForeColor="#FF0066" SetFocusOnError="True" ValidationExpression="\d\d\d\d\d\.[0-9][0-9]"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="cboParts" CssClass="auto-style26" ErrorMessage="Select the part" ForeColor="#FF0066" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:LinkButton ID="cmdAdd" runat="server" BorderStyle="Outset" CssClass="auto-style34" OnClick="cmdAdd_Click1">Add</asp:LinkButton>
    <asp:LinkButton ID="cmdDelete" runat="server" BorderStyle="Outset" CssClass="auto-style36">Delete</asp:LinkButton>
<br />
<asp:DropDownList ID="cbocategoryid" runat="server" AutoPostBack="True" CssClass="auto-style7" DataSourceID="SqlDataSource5" DataTextField="categoryID" DataValueField="categoryID" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
</asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT * FROM [tb_category]"></asp:SqlDataSource>
<asp:Label ID="Label3" runat="server" CssClass="auto-style3" Text="Date:"></asp:Label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="cboDepartment" CssClass="auto-style25" ErrorMessage="Select the department" ForeColor="#FF0066" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="cboCategory" CssClass="auto-style27" ErrorMessage="Select the category" ForeColor="#FF0066" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtApprovedby" CssClass="auto-style30" ErrorMessage="Enter the approved by" ForeColor="#FF0066" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtQuantity" CssClass="auto-style31" ErrorMessage="Quantity must be numeric" ForeColor="#FF0066" SetFocusOnError="True" ValidationExpression="\d\d\d\d\d\.[0-9][0-9]"></asp:RegularExpressionValidator>
<br />
<asp:TextBox ID="txtTotal" runat="server" CssClass="auto-style10"></asp:TextBox>
<asp:Label ID="Label5" runat="server" CssClass="auto-style18" Text="Total:"></asp:Label>
<asp:Label ID="Label8" runat="server" CssClass="auto-style19" Text="Category Id:"></asp:Label>
<br />
<asp:TextBox ID="txtUnitPrice" runat="server" CssClass="auto-style9"></asp:TextBox>
<asp:TextBox ID="cboRequestedby" runat="server" CssClass="auto-style12"></asp:TextBox>
<asp:Label ID="Label7" runat="server" CssClass="auto-style14" Text="Department"></asp:Label>
<br />
<asp:TextBox ID="txtquantity" runat="server" CssClass="auto-style8"></asp:TextBox>
<asp:TextBox ID="cboApprovedby" runat="server" CssClass="auto-style13"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtTotal" CssClass="auto-style33" ErrorMessage="It must be numeric" ForeColor="#FF0066" SetFocusOnError="True" ValidationExpression="\d\d\d\d\d\.[0-9][0-9]"></asp:RegularExpressionValidator>
<br />
<asp:Label ID="Label6" runat="server" CssClass="auto-style17" Text="Unit Price:"></asp:Label>
<asp:Label ID="Label10" runat="server" CssClass="auto-style21" Text="Requested by:"></asp:Label>
<asp:Label ID="Label11" runat="server" CssClass="auto-style22" Text="Approved by:"></asp:Label>
<br />
<asp:TextBox ID="txtPurpose" runat="server" CssClass="auto-style11"></asp:TextBox>
<asp:Label ID="Label4" runat="server" CssClass="auto-style16" Text="Quantity:"></asp:Label>
<br />
<asp:Label ID="Label9" runat="server" CssClass="auto-style20" Text="Purpose:"></asp:Label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPurpose" CssClass="auto-style28" ErrorMessage="Enter the purpose" ForeColor="#FF0066" SetFocusOnError="True"></asp:RequiredFieldValidator>
<br />
    <asp:LinkButton ID="cmdEdit" runat="server" BorderStyle="Outset" CssClass="auto-style15">Edit</asp:LinkButton>
<br />
<br />
<br />
<br />
    <asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style37">Exit</asp:LinkButton>
<br />
    <br />
    <br />
    <asp:Label ID="lblResults" runat="server" CssClass="auto-style39" EnableViewState="False" Font-Bold="True" ForeColor="#FF33CC"></asp:Label>
    <br />
<br />
<br />
<br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtRequestedby" CssClass="auto-style29" ErrorMessage="Enter the requested by" ForeColor="#FF0066" SetFocusOnError="True"></asp:RequiredFieldValidator>
<br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style38" DataSourceID="SqlDataSource6" GridLines="Horizontal">
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
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [regno], [date], [dept], [item], [quantity], [unit_price], [total] FROM [tb_partsRequisition] ORDER BY [date]"></asp:SqlDataSource>
<br />
<br />
</asp:Content>
