<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="myprofile.aspx.cs" Inherits="WebApplication14.myprofile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 100%;
            height: 419px;
        }
        .auto-style3 {
            width: 149px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style5 {
            width: 74px;
        }
        .auto-style6 {
            width: 74px;
            height: 23px;
        }
        .auto-style7 {
            height: 23px;
        }
        .newStyle1 {
            border-color: #000000;
            border-style: solid;
        }
        .auto-style8 {
            height: 415px;
        }
        .newStyle2 {
            border-color: #000000;
            border-style: solid;
        }
        .newStyle3 {
            border-style: solid;
        }
        .newStyle4 {
            background-color: #66FFFF;
        }
        .auto-style11 {
            height: 63px;
        }
        .newStyle5 {
            border-color: #FFFFFF;
        }
    </style>
</head>
<body class="newStyle4">
    <form id="form1" runat="server">
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="X-Large" Text="Welcome to my profile"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Log Out</asp:LinkButton>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style8">
                    <table class="auto-style2" border="0">
                        <tr>
                            <td class="newStyle5">
                                &nbsp;<asp:Image ID="Image1" runat="server" Height="198px" Width="179px" />
                                <br />
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial Black" Text="Profile picture"></asp:Label>
                            </td>
                            <td class="auto-style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style4" Width="139px" BorderStyle="Solid"></asp:TextBox>
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="27px" ImageUrl="~/image/search.png" OnClick="ImageButton1_Click" Width="32px" />
                                <br />
                                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Arial Black"></asp:Label>
                                <br />
                                <table class="newStyle1" id="result" runat="server" >
                                    <tr>
                                        <td class="auto-style6">
                                            <asp:Label ID="Label8" runat="server" Text="Name" Font-Bold="True" Font-Names="Arial Black"></asp:Label>
                                        </td>
                                        <td class="auto-style7">&nbsp;&nbsp;
                                            <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Arial Black"></asp:Label>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6">
                                            <asp:Label ID="Label9" runat="server" Text="Email" Font-Bold="True" Font-Names="Arial Black"></asp:Label>
                                        </td>
                                        <td class="auto-style7">&nbsp;&nbsp;
                                            <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Arial Black"></asp:Label>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5">
                                            <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Arial Black">Gender</asp:Label>
                                        </td>
                                        <td>&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="Arial Black"></asp:Label>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5">
                                            <asp:Label ID="Label11" runat="server" Text="PrimaryRole" Font-Bold="True" Font-Names="Arial Black"></asp:Label>
                                        </td>
                                        <td>&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Names="Arial Black"></asp:Label>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                        </tr>
                        <tr class="newStyle3">
                            <td class="auto-style3">
                                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Arial Black"></asp:Label>
                            </td>
                        </tr>
                        <tr class="newStyle3">
                            <td class="auto-style3">
                                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Arial Black"></asp:Label>
                            </td>
                        </tr>
                        <tr class="newStyle3">
                            <td class="auto-style3">
                                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Arial Black"></asp:Label>
                            </td>
                        </tr>
                        <tr class="newStyle3">
                            <td class="auto-style3">
                                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Arial Black"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style8"></td>
            </tr>
        </table>
    </form>
</body>
</html>
