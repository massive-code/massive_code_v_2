<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="massive_code_v_2.registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .butt_registr {
        cursor: pointer;
    }
        .auto-style19 {
            width: 348px;
        }
        .auto-style20 {
            width: 399px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                            <asp:Panel ID="Panel_SignIn" runat="server">
                                <table style="width:100%;" runat="server" id ="table_SignIn">
                                    <tr>
                                         <td style="text-align: center; " class="auto-style7">
                                             &nbsp;</td>
                                         <td class="auto-style20" style="text-align: center; background-color: #333333;">
                                             <asp:Label ID="Label6" runat="server" Font-Names="Agency FB Cyrillic" Font-Size="15pt" ForeColor="White" style="text-align: center" Text="РЕГИСТРАЦИЯ"></asp:Label>
                                         </td>
                                         <td  style="text-align: center; ">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center" class="auto-style7">
                                            &nbsp;</td>
                                        <td style="text-align: center" class="auto-style20">
                                            <asp:Label ID="Label3" runat="server" Font-Names="Agency FB Cyrillic" Font-Size="15pt" style="text-align: center" Text="ЛОГИН"></asp:Label>
                                        </td>
                                        <td style="text-align: center">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center" class="auto-style7">
                                            &nbsp;</td>
                                        <td style="text-align: center" class="auto-style20">
                                            <asp:TextBox ID="TextBox_Login" runat="server" BorderStyle="Solid" BorderWidth="1px" Font-Names="Agency FB Cyrillic" Font-Size="15pt" Height="30px" Width="200px" BackColor="#F0F0F0" BorderColor="#333333"></asp:TextBox>
                                        </td>
                                        <td style="text-align: center">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center" class="auto-style7">
                                            &nbsp;</td>
                                        <td style="text-align: center" class="auto-style20">
                                            <asp:Label ID="Label4" runat="server" Font-Names="Agency FB Cyrillic" Font-Size="15pt" Text="ПАРОЛЬ"></asp:Label>
                                        </td>
                                        <td style="text-align: center">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center" class="auto-style7">
                                            &nbsp;</td>
                                        <td style="text-align: center" class="auto-style20">
                                            <asp:TextBox ID="TextBox_Pass" runat="server" BorderStyle="Solid" BorderWidth="1px" Font-Names="Agency FB Cyrillic" Font-Size="15pt" Height="30px" TextMode="Password" Width="200px" BackColor="#F0F0F0" BorderColor="#333333"></asp:TextBox>
                                        </td>
                                        <td style="text-align: center">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center" class="auto-style7">
                                            &nbsp;</td>
                                        <td style="text-align: center" class="auto-style20">
                                            <asp:Label ID="Label5" runat="server" Font-Names="Agency FB Cyrillic" Font-Size="15pt" Text="EMAIL"></asp:Label>
                                        </td>
                                        <td style="text-align: center">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center" class="auto-style7">
                                            &nbsp;</td>
                                        <td style="text-align: center" class="auto-style20">
                                            <asp:TextBox ID="TextBox_Email" runat="server" BorderStyle="Solid" BorderWidth="1px" Font-Names="Agency FB Cyrillic" Font-Size="15pt" Height="30px" TextMode="Email" Width="200px" BackColor="#F0F0F0" BorderColor="#333333"></asp:TextBox>
                                        </td>
                                        <td style="text-align: center">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center" class="auto-style7">
                                            &nbsp;</td>
                                        <td style="text-align: center" class="auto-style20">
                                            <asp:Label ID="Label_SignUp" runat="server" Font-Names="Agency FB Cyrillic" Font-Size="15pt" ForeColor="#CC0000"></asp:Label>
                                        </td>
                                        <td style="text-align: center">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center" class="auto-style7">
                                            &nbsp;</td>
                                        <td style="text-align: center" class="auto-style20">&nbsp;<asp:Button ID="Button_SignUp" runat="server" BorderColor="#003366" BorderStyle="Solid" BorderWidth="1px" CssClass="butt_registr" Font-Names="Agency FB Cyrillic" Font-Size="15pt" ForeColor="#003366" OnClick="Button_SignUp_Click" Text="РЕГИСТРАЦИЯ" />
                                        </td>
                                        <td style="text-align: center">&nbsp;</td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </ContentTemplate>
                    </asp:UpdatePanel>
            </asp:Content>
