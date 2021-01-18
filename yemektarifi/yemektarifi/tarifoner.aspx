<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.master" AutoEventWireup="true" CodeFile="tarifoner.aspx.cs" Inherits="tarifoner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style7 {
        width: 100%;
    }
    .auto-style8 {
        border: 2px solid #765942;
        border-radius: 10px;
    }
        .auto-style9 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style7">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Tarif Ad:</strong></td>
        <td>
            <asp:TextBox ID="txttarifad" runat="server" CssClass="tab5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Malzemeler:</strong></td>
        <td>
            <asp:TextBox ID="txtmalzemeler" runat="server" CssClass="tab5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Yapılış:</strong></td>
        <td>
            <asp:TextBox ID="txtyapilis" runat="server" CssClass="auto-style8" Height="67px" TextMode="MultiLine" Width="233px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Resim:</strong></td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Tarif Öneren:</strong></td>
        <td>
            <asp:TextBox ID="txttarifoneren" runat="server" CssClass="tab5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Mail Adresi:</strong></td>
        <td>
            <asp:TextBox ID="txtmail" runat="server" CssClass="tab5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" CssClass="fb8" Height="39px" OnClick="Button1_Click" Text="Tarif Öner" Width="173px" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

