<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebApplication14.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 790px;
            height: 490px;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            position: fixed;
            table-layout: fixed;
            height: 34px;
        }
        .auto-style4 {
            position: fixed;
            table-layout: fixed;
            height: 74px;
        }
    </style>
</head>
<body style="height: 494px">
    <form id="form1" runat="server">
    <table class="auto-style1" border="0" style="background-color: #CCFF99; border: medium solid #000000">
        <tr>
            <td class="auto-style2" style="position: fixed; table-layout: fixed">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;<asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Registration"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td style="position: fixed; table-layout: fixed"> <strong>
                <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td style="position: fixed; table-layout: fixed"> <strong>
                <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td style="position: fixed; table-layout: fixed"> <strong>
                <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td style="position: fixed; table-layout: fixed"> <strong>
                <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" TextMode="Password"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td style="position: fixed; table-layout: fixed"> <strong>
                <asp:Label ID="Label6" runat="server" Text="Age"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Font-Bold="True">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Font-Bold="True" ForeColor="Black">
                    <asp:ListItem>o</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList4" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Font-Bold="True">
                    <asp:ListItem>1990</asp:ListItem>
                    <asp:ListItem>1991</asp:ListItem>
                    <asp:ListItem>1992</asp:ListItem>
                    <asp:ListItem>1993</asp:ListItem>
                    <asp:ListItem>1994</asp:ListItem>
                    <asp:ListItem>1995</asp:ListItem>
                    <asp:ListItem>1996</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
        </tr>
        <tr>
            <td class="auto-style4"> <strong>
                <asp:Label ID="Label7" runat="server" Text="Gender"></asp:Label>
&nbsp;<asp:RadioButtonList ID="RadioButtonList2" runat="server" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged" RepeatDirection="Horizontal" Font-Bold="True" Font-Names="Arial Black">
                    <asp:ListItem>male</asp:ListItem>
                    <asp:ListItem>female</asp:ListItem>
                </asp:RadioButtonList>
&nbsp;</strong></td>
        </tr>
        <tr>
            <td style="position: fixed; table-layout: fixed"> <strong>
                <asp:Label ID="Label8" runat="server" Text="Primary Role"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Font-Bold="True" Font-Names="Arial Black" ForeColor="Black">
                    <asp:ListItem>Fashion Designer</asp:ListItem>
                    <asp:ListItem>Technical Designer</asp:ListItem>
                    <asp:ListItem>Pattern Maker</asp:ListItem>
                    <asp:ListItem>Tailor</asp:ListItem>
                </asp:DropDownList>
&nbsp;</strong></td>
        </tr>
        <tr>
            <td style="position: fixed; table-layout: fixed"> 
                <asp:Label ID="Label10" runat="server" Text="Profile Image"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <br />
                <strong>
                <asp:Label ID="Label11" runat="server"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Height="26px" Text="Register" Width="73px" OnClick="Button1_Click" BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" ForeColor="#3333CC" OnClick="LinkButton1_Click">Back to Login</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td style="position: fixed; table-layout: fixed">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                </strong>&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <div>
        </div>
            </td>
        </tr>
    </table>
    </form>
    </body>
</html>
