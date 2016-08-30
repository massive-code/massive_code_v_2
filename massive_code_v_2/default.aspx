<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="massive_code_v_2._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style17 {
            text-align: center;
        }
        
        .auto-style19 {
            text-align: center;
        }

        .auto-style21 {
        width: 417px;
    }
    .auto-style22 {
        width: 418px;
    }
    .auto-style23 {
        text-align: center;
        width: 432px;
    }
    .auto-style24 {
        text-align: center;
        width: 393px;
    }

        .auto-style25 {
        height: 28px;
    }

        </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style22"></td>
            <td class="auto-style21"></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style21">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:Panel ID="Panel_SignIn" runat="server">
                                <table style="width:100%;" runat="server" id ="table_SignIn">
                                    <tr>
                                        <td style="text-align: center; background-color: #333333;" class="auto-style25">
                                            <asp:Label ID="Label6" runat="server" Font-Names="Agency FB Cyrillic" Font-Size="15pt" style="text-align: center" Text="АВТОРИЗАЦИЯ" ForeColor="White"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center">
                                            <asp:Label ID="Label3" runat="server" Font-Names="Agency FB Cyrillic" Font-Size="15pt" style="text-align: center" Text="ЛОГИН"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center">
                                            <asp:TextBox ID="TextBox_Login" runat="server" BorderStyle="Solid" BorderWidth="1px" Font-Size="15pt" Height="30px" Width="200px" Font-Names="Agency FB Cyrillic" BackColor="#F0F0F0" BorderColor="#333333"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center">
                                            <asp:Label ID="Label4" runat="server" Font-Names="Agency FB Cyrillic" Font-Size="15pt" Text="ПАРОЛЬ"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style17" >
                                            <asp:TextBox ID="TextBox_Pass" runat="server" BorderStyle="Solid" BorderWidth="1px" Height="30px" TextMode="Password" Width="200px" Font-Names="Agency FB Cyrillic" Font-Size="15pt" BackColor="#F0F0F0" BorderColor="#333333"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style19">
                                            <asp:Label ID="Label_SignIn" runat="server" Font-Names="Agency FB Cyrillic" Font-Size="15pt" ForeColor="#CC0000"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center">
                                            <asp:Button ID="Button_SignIn" runat="server" BackColor="#990000" BorderColor="#CC0000" BorderStyle="Solid" BorderWidth="1px" Font-Names="Agency FB Cyrillic" Font-Size="15pt" ForeColor="White" OnClick="Button_SignIn_Click" Text="ВОЙТИ" />
                                            &nbsp;<asp:Button ID="Button_SignUp" runat="server" BorderColor="#003366" BorderStyle="Solid" BorderWidth="1px" Font-Names="Agency FB Cyrillic" Font-Size="15pt" ForeColor="#003366" OnClick="Button_SignUp_Click" Text="РЕГИСТРАЦИЯ" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </ContentTemplate>
                    </asp:UpdatePanel>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style21">
                                            &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

    <table style="width: 100%; border-collapse:collapse; background-color: #333333;">
            <tr>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
                <td class="dx-ac">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23">
                    <asp:Image ID="Image2" runat="server" Height="172px" ImageUrl="~/pictures/img_1.png" Width="193px" />
                </td>
                <td class="auto-style24">
                    <asp:Image ID="Image3" runat="server" Height="182px" ImageUrl="~/pictures/img_2.png" Width="200px" />
                </td>
                <td class="dx-ac">
                    <asp:Image ID="Image4" runat="server" Height="182px" ImageUrl="~/pictures/img_3.png" Width="200px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style23">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Agency FB Cyrillic" Font-Size="20pt" ForeColor="White" Text="РАЗРАБОТКА НА ОДНОМ ИЗ ЛУЧШИХ ЯЗЫКОВ ПРОГРАММИРОВАНИЯ" style="font-size: 15pt"></asp:Label>
                </td>
                <td class="auto-style24">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Agency FB Cyrillic" Font-Size="20pt" ForeColor="White" Text="C# ПОЗВОЛЯЕТ СОЗДАВАТЬ ПРИЛОЖЕНИЯ ЛЮБОЙ СЛОЖНОСТИ" style="font-size: 15pt"></asp:Label>
                    <br />
                </td>
                <td class="dx-ac">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Agency FB Cyrillic" Font-Size="20pt" ForeColor="White" Text="ПРОЙДИТЕ ПРОСТУЮ РЕГИСТРАЦИЮ И ПОЛУЧИТЕ ИСХОДНЫЕ КОДЫ АБСОЛЮТНО БЕСПЛАТНО" style="font-size: 15pt"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style24">
                    <br />
                </td>
                <td class="dx-ac">&nbsp;</td>
            </tr>
        </table>
    <br />
    <br />


    
</asp:Content>
