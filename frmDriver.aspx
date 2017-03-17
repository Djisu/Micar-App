<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmDriver.aspx.cs" Inherits="MiCar.frmDriver" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 109px;
            left: 9px;
            z-index: 1;
            width: 67px;
        }
        .auto-style2 {
            position: absolute;
            top: 104px;
            left: 75px;
            z-index: 1;
            width: 75px;
        }
        .auto-style3 {
            position: absolute;
            top: 103px;
            left: 238px;
            z-index: 1;
            height: 14px;
            width: 92px;
        }
        .auto-style4 {
            position: absolute;
            top: 106px;
            left: 167px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 103px;
            left: 345px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 104px;
            left: 414px;
            z-index: 1;
            right: 460px;
            height: 14px;
        }
        .auto-style8 {
            position: absolute;
            top: 102px;
            left: 603px;
            z-index: 1;
            width: 99px;
        }
        .auto-style9 {
            position: absolute;
            top: 106px;
            left: 715px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 103px;
            left: 789px;
            z-index: 1;
            width: 130px;
            height: 13px;
        }
        .auto-style11 {
            position: absolute;
            top: 136px;
            left: 10px;
            z-index: 1;
            height: 9px;
        }
        .auto-style12 {
            left: 11px;
            top: 145px;
            width: 146px;
            height: 54px;
        }
        .auto-style13 {
            position: absolute;
            top: 139px;
            left: 267px;
            z-index: 1;
        }
        .auto-style14 {
            position: absolute;
            top: 158px;
            left: 267px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 142px;
            left: 409px;
            z-index: 1;
        }
        .auto-style16 {
            position: absolute;
            top: 199px;
            left: 408px;
            z-index: 1;
            height: 17px;
        }
        .auto-style17 {
            position: absolute;
            top: 142px;
            left: 540px;
            z-index: 1;
        }
        .auto-style18 {
            position: absolute;
            top: 163px;
            left: 538px;
            z-index: 1;
            width: 124px;
        }
        .auto-style19 {
            position: absolute;
            top: 143px;
            left: 673px;
            z-index: 1;
        }
        .auto-style20 {
            position: absolute;
            top: 159px;
            left: 671px;
            z-index: 1;
        }
        .auto-style21 {
            position: absolute;
            top: 198px;
            left: 271px;
            z-index: 1;
        }
        .auto-style22 {
            position: absolute;
            top: 181px;
            left: 272px;
            z-index: 1;
        }
        .auto-style23 {
            position: absolute;
            top: 163px;
            left: 811px;
            z-index: 1;
            height: 16px;
        }
        .auto-style24 {
            position: absolute;
            top: 282px;
            left: 411px;
            z-index: 1;
            width: 237px;
            height: 14px;
        }
        .auto-style25 {
            position: absolute;
            top: 161px;
            left: 407px;
            z-index: 1;
        }
        .auto-style26 {
            position: absolute;
            top: 197px;
            left: 546px;
            z-index: 1;
            height: 19px;
            width: 105px;
        }
        .auto-style27 {
            position: absolute;
            top: 198px;
            left: 671px;
            z-index: 1;
        }
        .auto-style29 {
            position: absolute;
            top: 258px;
            left: 278px;
            z-index: 1;
        }
        .auto-style30 {
            position: absolute;
            top: 256px;
            left: 410px;
            z-index: 1;
        }
        .auto-style31 {
            position: absolute;
            top: 183px;
            left: 411px;
            z-index: 1;
        }
        .auto-style32 {
            position: absolute;
            top: 180px;
            left: 546px;
            z-index: 1;
        }
        .auto-style33 {
            position: absolute;
            top: 181px;
            left: 672px;
            z-index: 1;
        }
        .auto-style34 {
            position: absolute;
            top: 199px;
            left: 813px;
            z-index: 1;
            width: 124px;
        }
        .auto-style35 {
            position: absolute;
            top: 184px;
            left: 812px;
            z-index: 1;
        }
        .auto-style36 {
            position: absolute;
            top: 300px;
            left: 10px;
            z-index: 1;
        }
        .auto-style37 {
            left: 273px;
            top: 472px;
            width: 227px;
            height: 120px;
        }
        .auto-style39 {
            position: absolute;
            top: 238px;
            left: 411px;
            z-index: 1;
        }
        .auto-style40 {
            left: 11px;
            top: 466px;
            width: 146px;
            height: 54px;
        }
        .auto-style41 {
            position: absolute;
            top: 301px;
            left: 279px;
            z-index: 1;
        }
        .auto-style42 {
            left: 13px;
            top: 307px;
            width: 146px;
            height: 54px;
        }
        .auto-style43 {
            position: absolute;
            top: 458px;
            left: 6px;
            z-index: 1;
        }
        .auto-style45 {
            position: absolute;
            top: 236px;
            left: 548px;
            z-index: 1;
        }
        .auto-style46 {
            position: absolute;
            top: 254px;
            left: 547px;
            z-index: 1;
            width: 252px;
        }
        .auto-style47 {
            left: 274px;
            top: 311px;
            width: 133px;
            height: 74px;
        }
        .auto-style48 {
            position: absolute;
            top: 462px;
            left: 285px;
            z-index: 1;
        }
        .auto-style49 {
            position: absolute;
            top: 238px;
            left: 276px;
            z-index: 1;
        }
        .auto-style50 {
            position: absolute;
            top: 297px;
            left: 551px;
            z-index: 1;
            right: 577px;
        }
        .auto-style51 {
            position: absolute;
            top: 333px;
            left: 549px;
            z-index: 1;
            width: 161px;
            right: 288px;
        }
        .auto-style52 {
            position: absolute;
            top: 349px;
            left: 542px;
            z-index: 1;
            width: 438px;
        }
        .auto-style53 {
            position: absolute;
            top: 257px;
            left: 957px;
            z-index: 1;
            width: 73px;
        }
        .auto-style55 {
            position: absolute;
            top: 226px;
            left: 956px;
            z-index: 1;
            width: 73px;
            height: 18px;
        }
        .auto-style56 {
            position: absolute;
            top: 322px;
            left: 963px;
            z-index: 1;
            width: 73px;
        }
        .auto-style57 {
            position: absolute;
            top: 289px;
            left: 958px;
            z-index: 1;
            width: 73px;
        }
        .auto-style58 {
            position: absolute;
            top: 125px;
            left: 10px;
            z-index: 1;
            height: 9px;
        }
        .auto-style59 {
            position: absolute;
            top: 121px;
            left: 240px;
            z-index: 1;
            height: 9px;
        }
        .auto-style60 {
            position: absolute;
            top: 127px;
            left: 660px;
            z-index: 1;
            width: 268px;
        }
        .auto-style61 {
            position: absolute;
            top: 145px;
            left: 813px;
            z-index: 1;
            height: 14px;
        }
        .auto-style62 {
            position: absolute;
            top: 104px;
            left: 545px;
            z-index: 1;
        }
        .auto-style63 {
            position: absolute;
            top: 114px;
            left: 945px;
            z-index: 1;
            width: 96px;
            height: 109px;
        }
        .auto-style64 {
            position: absolute;
            top: 297px;
            left: 721px;
            z-index: 1;
            right: 407px;
        }
        .auto-style65 {
            position: absolute;
            top: 335px;
            left: 711px;
            z-index: 1;
            width: 161px;
        }
        .auto-style66 {
            position: absolute;
            top: 314px;
            left: 550px;
            z-index: 1;
            width: 131px;
        }
        .auto-style67 {
            position: absolute;
            top: 308px;
            left: 720px;
            z-index: 1;
            width: 147px;
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <asp:DropDownList ID="cboMaritalStatus" runat="server" AutoPostBack="True" CssClass="auto-style18">
        <asp:ListItem>Married</asp:ListItem>
        <asp:ListItem>Divorced</asp:ListItem>
        <asp:ListItem>Single</asp:ListItem>
        <asp:ListItem>Widowed</asp:ListItem>
    </asp:DropDownList>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Driver No:"></asp:Label>
    <asp:TextBox ID="txtDriverNo" runat="server" CssClass="auto-style2"></asp:TextBox>
    <asp:TextBox ID="txtFirstName" runat="server" CssClass="auto-style3"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Text="First Name:"></asp:Label>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style62" Text="Job Title:"></asp:Label>
    <asp:Label ID="Label7" runat="server" CssClass="auto-style13" Text="Postal Address:"></asp:Label>
    <asp:TextBox ID="txtLastName" runat="server" CssClass="auto-style6"></asp:TextBox>
    <asp:Label ID="Label9" runat="server" CssClass="auto-style17" Text="Marital Status:"></asp:Label>
    <asp:TextBox ID="txtJobTitle" runat="server" CssClass="auto-style8"></asp:TextBox>
    <asp:DropDownList ID="cboEducation" runat="server" AutoPostBack="True" CssClass="auto-style34" DataSourceID="SqlDataSource2" DataTextField="code" DataValueField="code">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT * FROM [tb_education] WHERE ([code] = @code)">
        <SelectParameters>
            <asp:QueryStringParameter Name="code" QueryStringField="EDUCATION" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtNoofChildren" CssClass="auto-style60" ErrorMessage="Number of children cannot be more than 10" ForeColor="#FF3399" MaximumValue="1" MinimumValue="10"></asp:RangeValidator>
    <asp:TextBox ID="txtNoofChildren" runat="server" CssClass="auto-style23"></asp:TextBox>
    <asp:Label ID="Label5" runat="server" CssClass="auto-style9" Text="Department:"></asp:Label>
    <asp:DropDownList ID="cboDept" runat="server" AutoPostBack="True" CssClass="auto-style10" DataSourceID="SqlDataSource1" DataTextField="code" DataValueField="code">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT * FROM [tb_dept]"></asp:SqlDataSource>
    <asp:Label ID="Label6" runat="server" CssClass="auto-style11" Text="Employment Date:"></asp:Label>
    <asp:Calendar ID="dtLicenseDate" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" CssClass="auto-style42" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black">
        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
        <NextPrevStyle VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#808080" />
        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
        <SelectorStyle BackColor="#CCCCCC" />
        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
        <WeekendDayStyle BackColor="#FFFFCC" />
    </asp:Calendar>
    <asp:TextBox ID="txtPostalAddress" runat="server" CssClass="auto-style14"></asp:TextBox>
    <asp:Label ID="Label8" runat="server" CssClass="auto-style15" Text="Residential Address:"></asp:Label>
    <asp:Label ID="Label10" runat="server" CssClass="auto-style19" Text="Telephone No:"></asp:Label>
    <asp:LinkButton ID="cmdAdd" runat="server" BorderStyle="Outset" CssClass="auto-style55">Add</asp:LinkButton>
    <asp:TextBox ID="txtTelephoneNo" runat="server" CssClass="auto-style20"></asp:TextBox>
    <asp:TextBox ID="txtSpouseName" runat="server" CssClass="auto-style21"></asp:TextBox>
    <asp:Label ID="Label11" runat="server" CssClass="auto-style35" Text="Education:"></asp:Label>
    <asp:TextBox ID="txtPlaceOfIssue" runat="server" CssClass="auto-style29"></asp:TextBox>
    <asp:Label ID="Label12" runat="server" CssClass="auto-style61" Text="No of children"></asp:Label>
    <asp:TextBox ID="txtResidAddress" runat="server" CssClass="auto-style25" OnTextChanged="txtResidAddress_TextChanged"></asp:TextBox>
    <asp:TextBox ID="txtLicenseNo" runat="server" CssClass="auto-style26"></asp:TextBox>
    <asp:DropDownList ID="cboDateCompleted" runat="server" AutoPostBack="True" CssClass="auto-style51">
        <asp:ListItem>Permanent</asp:ListItem>
        <asp:ListItem>Temporal</asp:ListItem>
        <asp:ListItem>Contract</asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <asp:TextBox ID="txtLicenseType" runat="server" CssClass="auto-style27"></asp:TextBox>
    <asp:TextBox ID="txtHomeTown" runat="server" CssClass="auto-style16"></asp:TextBox>
    <asp:TextBox ID="txtLicenseValidity" runat="server" CssClass="auto-style30"></asp:TextBox>
    <asp:Label ID="Label13" runat="server" CssClass="auto-style22" Text="Spouse Name:"></asp:Label>
    <asp:Label ID="Label14" runat="server" CssClass="auto-style45" Text="Photo Path:"></asp:Label>
    <asp:Label ID="Label15" runat="server" CssClass="auto-style31" Text="Home Town"></asp:Label>
    <asp:Label ID="Label16" runat="server" CssClass="auto-style32" Text="License No:"></asp:Label>
    <asp:Label ID="Label17" runat="server" CssClass="auto-style36" Text="License Date:"></asp:Label>
    <asp:Calendar ID="dtEmploymentDate" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" CssClass="auto-style12" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black">
        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
        <NextPrevStyle VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#808080" />
        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
        <SelectorStyle BackColor="#CCCCCC" />
        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
        <WeekendDayStyle BackColor="#FFFFCC" />
    </asp:Calendar>
    <asp:Label ID="Label18" runat="server" CssClass="auto-style39" Text="License Validity:"></asp:Label>
    <asp:Label ID="Label28" runat="server" CssClass="auto-style66" Text="Completed:"></asp:Label>
    <asp:Label ID="Label19" runat="server" CssClass="auto-style33" Text="License Type:"></asp:Label>
    <asp:Calendar ID="dtDateCompleted" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" CssClass="auto-style47" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black">
        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
        <NextPrevStyle VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#808080" />
        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
        <SelectorStyle BackColor="#CCCCCC" />
        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
        <WeekendDayStyle BackColor="#FFFFCC" />
    </asp:Calendar>
    <asp:Label ID="Label20" runat="server" CssClass="auto-style49" Text="Placeof Issue:"></asp:Label>
    <asp:Calendar ID="dtRedeploymentDate" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" CssClass="auto-style40" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black">
        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
        <NextPrevStyle VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#808080" />
        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
        <SelectorStyle BackColor="#CCCCCC" />
        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
        <WeekendDayStyle BackColor="#FFFFCC" />
    </asp:Calendar>
    <asp:Label ID="Label22" runat="server" CssClass="auto-style43" Text="Redeployment Date:"></asp:Label>
    <asp:Label ID="Label23" runat="server" CssClass="auto-style41" Text="Date Completed:"></asp:Label>
    <asp:FileUpload ID="txtPhotoPath" runat="server" CssClass="auto-style46" />
    <asp:Calendar ID="dtLicenseRenewalDate" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" CssClass="auto-style37" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black">
        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
        <NextPrevStyle VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#808080" />
        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
        <SelectorStyle BackColor="#CCCCCC" />
        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
        <WeekendDayStyle BackColor="#FFFFCC" />
    </asp:Calendar>
    <asp:Label ID="Label24" runat="server" CssClass="auto-style48" Text="License Renewal Date:"></asp:Label>
    <asp:Label ID="Label25" runat="server" CssClass="auto-style64" Text="Date Completed:"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style52" DataSourceID="SqlDataSource3" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="driverno" HeaderText="driverno" SortExpression="driverno" />
            <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
            <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
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
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [driverno], [fname], [lname] FROM [tb_driver]"></asp:SqlDataSource>
    <asp:LinkButton ID="cmdEdit" runat="server" BorderStyle="Outset" CssClass="auto-style53">Edit</asp:LinkButton>
    <asp:LinkButton ID="cmdDelete" runat="server" BorderStyle="Outset" CssClass="auto-style57">Delete</asp:LinkButton>
    <asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style56">Exit</asp:LinkButton>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDriverNo" CssClass="auto-style58" ErrorMessage="Enter the driver number" ForeColor="#FF3399" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtFirstName" CssClass="auto-style59" ErrorMessage="Enter the first name" ForeColor="#FF3399" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:Label ID="txtUserLabel" runat="server"></asp:Label>
    <asp:Label ID="lblResults" runat="server" CssClass="auto-style24" EnableViewState="False" Font-Bold="True" ForeColor="#FF33CC"></asp:Label>
    <asp:Label ID="Label26" runat="server" CssClass="auto-style5" Text="Last Name:"></asp:Label>
    <asp:Image ID="Image1" runat="server" CssClass="auto-style63" />
    <asp:Label ID="Label27" runat="server" CssClass="auto-style50" Text="Date Completed:"></asp:Label>
    <asp:DropDownList ID="cboEmpStatus" runat="server" AutoPostBack="True" CssClass="auto-style65">
        <asp:ListItem>Permanent</asp:ListItem>
        <asp:ListItem>Temporal</asp:ListItem>
        <asp:ListItem>Contract</asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="Label29" runat="server" CssClass="auto-style67" Text="Status of Employment:"></asp:Label>
</asp:Content>
