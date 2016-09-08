<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="massive_code_v_2.registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .butt_registr {
        cursor: pointer;
    }
        .новыйСтиль1 {
        text-align: center;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:Panel ID="Panel_SignIn" runat="server" Height="459px">
                                <table style="width:100%; border-collapse:collapse" runat="server" id ="table_SignIn" class="новыйСтиль1">
                                    <tr>
                                         <td style="background-color: #333333;">
                                             <asp:Label ID="Label6" runat="server" Font-Names="Agency FB Cyrillic" Font-Size="12pt" ForeColor="White" style="text-align: center" Text="РЕГИСТРАЦИЯ"></asp:Label>
                                         </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label7" runat="server" Font-Names="Agency FB Cyrillic" Font-Size="12pt" style="text-align: center" Text="ИМЯ"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="TextBox_Name" runat="server" BackColor="#F0F0F0" BorderColor="#333333" BorderStyle="Solid" BorderWidth="1px" Font-Names="Agency FB Cyrillic" Font-Size="12pt" Height="30px" Width="200px" MaxLength="30"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label8" runat="server" Font-Names="Agency FB Cyrillic" Font-Size="12pt" style="text-align: center" Text="ФАМИЛИЯ"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="TextBox_Surname" runat="server" BackColor="#F0F0F0" BorderColor="#333333" BorderStyle="Solid" BorderWidth="1px" Font-Names="Agency FB Cyrillic" Font-Size="12pt" Height="30px" Width="200px" MaxLength="30"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label3" runat="server" Font-Names="Agency FB Cyrillic" Font-Size="12pt" style="text-align: center" Text="ЛОГИН"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="TextBox_Login" runat="server" BorderStyle="Solid" BorderWidth="1px" Font-Names="Agency FB Cyrillic" Font-Size="12pt" Height="30px" Width="200px" BackColor="#F0F0F0" BorderColor="#333333" MaxLength="30"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label4" runat="server" Font-Names="Agency FB Cyrillic" Font-Size="12pt" Text="ПАРОЛЬ"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="TextBox_Pass" runat="server" BorderStyle="Solid" BorderWidth="1px" Font-Names="Agency FB Cyrillic" Font-Size="12pt" Height="30px" TextMode="Password" Width="200px" BackColor="#F0F0F0" BorderColor="#333333" MaxLength="30"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label5" runat="server" Font-Names="Agency FB Cyrillic" Font-Size="12pt" Text="EMAIL"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="TextBox_Email" runat="server" BorderStyle="Solid" BorderWidth="1px" Font-Names="Agency FB Cyrillic" Font-Size="12pt" Height="30px" TextMode="Email" Width="200px" BackColor="#F0F0F0" BorderColor="#333333" MaxLength="30"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label_SignUp" runat="server" Font-Names="Agency FB Cyrillic" Font-Size="12pt" ForeColor="#CC0000"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;<asp:Button ID="Button_SignUp" runat="server" BorderColor="#003366" BorderStyle="Solid" BorderWidth="1px" CssClass="butt_registr" Font-Names="Agency FB Cyrillic" Font-Size="12pt" ForeColor="#003366" OnClick="Button_SignUp_Click" Text="РЕГИСТРАЦИЯ" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </ContentTemplate>
                    </asp:UpdatePanel>
            </asp:Content>
