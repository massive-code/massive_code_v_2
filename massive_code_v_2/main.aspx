<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="massive_code_v_2.main" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
        }
        .auto-style2 {
            width: 22px;
            height: 42px;
        }
        .auto-style3 {
            height: 42px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="3">
                <asp:Label ID="Label_MainText" runat="server" Font-Size="13pt" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <iframe src="https://www.youtube.com/embed/vbGFRzzs4Hw" style="height: 180px; width: 250px" id="I1" name="I1"></iframe>
                </td>
            <td class="auto-style3">
                <asp:LinkButton ID="LinkButton3" runat="server" Font-Names="Rod" Font-Size="13pt" ForeColor="#0066FF" OnClick="LinkButton3_Click">Разработка бесполезного архиватора</asp:LinkButton>
                <br />
                <asp:Label ID="Label_01" runat="server" Font-Size="13pt" Text="Label"></asp:Label>
            </td>
            <td class="auto-style3"></td>
        </tr>
    </table>
</asp:Content>
