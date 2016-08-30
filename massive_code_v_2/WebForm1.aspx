<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="massive_code_v_2.WebForm1" %>

<%@ Register assembly="DevExpress.Web.v15.1, Version=15.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxPopupControl ID="ASPxPopupControl1" runat="server" Modal="True" PopupElementID="Button1" CssClass="auto-style1" Height="285px" Width="354px">

            <ContentCollection>
<dx:PopupControlContentControl runat="server">
    <asp:Button ID="Button2" runat="server" Text="Button" />
    <asp:Button ID="Button3" runat="server" Text="Button" />
    <asp:Button ID="Button4" runat="server" Text="Button" />
    <asp:Button ID="Button5" runat="server" Text="Button" />
                </dx:PopupControlContentControl>
</ContentCollection>

        </dx:ASPxPopupControl>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    </div>
    </form>
</body>
</html>
