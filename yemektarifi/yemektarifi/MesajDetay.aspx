<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="MesajDetay.aspx.cs" Inherits="MesajDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style10 {
        border: 2px solid #765942;
        border-radius: 10px;
    }
    .auto-style11 {
        text-align: right;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style7">
    <tr>
        <td>
            <table class="auto-style7">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11"><strong>Mesaj Gönderen:</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="tab5"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11"><strong>Başlık:</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="tab5"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11"><strong>Mail Adresi:</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="tab5"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11"><strong>İçerik:</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style10" Height="123px" TextMode="MultiLine" Width="230px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>

