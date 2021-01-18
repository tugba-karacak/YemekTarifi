<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style7 {
        width: 100%;
    }
    .auto-style8 {
        text-align: right;
        width: 110px;
    }
    .auto-style9 {
        width: 110px;
    }
    .auto-style10 {
        font-size: x-large;
        text-align: center;
    }
    .auto-style11 {
        border: 2px solid #765942;
        border-radius: 10px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style7">
    <tr>
        <td class="auto-style10" colspan="2"><strong>MESAJ PANELİ</strong></td>
    </tr>
    <tr>
        <td class="auto-style8">Ad Soyad:</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="tab5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Mail Adresiniz:</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="tab5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Konu:</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="tab5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Mesajınız:</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style11" Height="106px" TextMode="MultiLine" Width="230px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style2">
            <asp:Button ID="Button1" runat="server" CssClass="fb8" Height="35px" OnClick="Button1_Click" Text="GÖNDER" Width="156px" />
        </td>
    </tr>
</table>
</asp:Content>

