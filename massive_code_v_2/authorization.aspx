<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="authorization.aspx.cs" Inherits="massive_code_v_2.autorisation" %>
<%@ Register assembly="DevExpress.Web.v15.1, Version=15.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style29 {
        height: 63px;
    }
    .auto-style30 {
        width: 74px;
        height: 63px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table id="table_SignIn" runat="server" style="width:100%; height: 181px; border-collapse:collapse ">
    <tr runat="server">
        <td runat="server" class="auto-style25" style="text-align: center; background-color: #333333;">
            <asp:Label ID="Label6" runat="server" Font-Names="Agency FB Cyrillic" Font-Size="15pt" ForeColor="White" style="text-align: center" Text="АВТОРИЗАЦИЯ"></asp:Label>
        </td>
    </tr>
    <tr runat="server">
        <td runat="server" style="text-align: center">
            <asp:Label ID="Label3" runat="server" Font-Names="Agency FB Cyrillic" Font-Size="15pt" style="text-align: center" Text="ЛОГИН"></asp:Label>
        </td>
    </tr>
    <tr runat="server">
        <td runat="server" style="text-align: center">
            <asp:TextBox ID="TextBox_Login" runat="server" BackColor="#F0F0F0" BorderColor="#333333" BorderStyle="Solid" BorderWidth="1px" Font-Names="Agency FB Cyrillic" Font-Size="15pt" Height="30px" Width="200px" MaxLength="30"></asp:TextBox>
        </td>
    </tr>
    <tr runat="server">
        <td runat="server" style="text-align: center">
            <asp:Label ID="Label4" runat="server" Font-Names="Agency FB Cyrillic" Font-Size="15pt" Text="ПАРОЛЬ"></asp:Label>
        </td>
    </tr>
    <tr runat="server">
        <td runat="server" class="auto-style27">
            <asp:TextBox ID="TextBox_Pass" runat="server" BackColor="#F0F0F0" BorderColor="#333333" BorderStyle="Solid" BorderWidth="1px" Font-Names="Agency FB Cyrillic" Font-Size="15pt" Height="30px" TextMode="Password" Width="200px" MaxLength="30"></asp:TextBox>
        </td>
    </tr>
    <tr runat="server">
        <td runat="server" class="auto-style19">
            <asp:Label ID="Label_SignIn" runat="server" Font-Names="Agency FB Cyrillic" Font-Size="15pt" ForeColor="#CC0000"></asp:Label>
        </td>
    </tr>
    <tr runat="server">
        <td runat="server" style="text-align: center">
            <asp:Button id="Button_SignIn" runat="server" BackColor="#990000" BorderColor="#CC0000" BorderStyle="Solid" BorderWidth="1px" Font-Names="Agency FB Cyrillic" Font-Size="15pt" ForeColor="White" OnClick="Button_SignIn_Click" Text="ВОЙТИ" />
                &nbsp;
                <asp:Button id="Button_SignUp" runat="server" BorderColor="#003366" BorderStyle="Solid" BorderWidth="1px" Font-Names="Agency FB Cyrillic" Font-Size="15pt" ForeColor="#003366" OnClick="Button_SignUp_Click" Text="РЕГИСТРАЦИЯ" />
        </td>
    </tr>
    <tr runat="server">
        <td runat="server">
            <table style="width:100%;">
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style28">
                        <dx:ASPxCheckBox ID="cb_RememberSignIn" runat="server" CheckState="Unchecked" Font-Names="Agency FB Cyrillic" Font-Size="12pt" ForeColor="#006699" Text="ЗАПОМНИТЬ">
                        </dx:ASPxCheckBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style29"></td>
                    <td class="auto-style30"></td>
                    <td class="auto-style29"></td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>
