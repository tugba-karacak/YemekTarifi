<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="YorumDetay.aspx.cs" Inherits="YorumDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style10 {
        font-size: large;
        text-align: right;
    }
    .auto-style11 {
        font-size: large;
    }
    .auto-style12 {
        border: 2px solid #765942;
        border-radius: 10px;
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
                    <td class="auto-style10"><strong>Ad Soyad:</strong></td>
                    <td>
                        <asp:TextBox ID="txtadsoyad" runat="server" CssClass="tab5"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10"><strong>Mail:</strong></td>
                    <td>
                        <asp:TextBox ID="txtmail" runat="server" CssClass="tab5"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10"><strong>İçerik:</strong></td>
                    <td>
                        <asp:TextBox ID="txticerik" runat="server" CssClass="auto-style12" Height="66px" TextMode="MultiLine" Width="234px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10"><strong>Yemek:</strong></td>
                    <td>
                        <asp:TextBox ID="txtyemek" runat="server" CssClass="tab5"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><strong>
                        <asp:Button ID="btnonayla" runat="server" CssClass="auto-style11" OnClick="btnonayla_Click" Text="Onayla" Width="138px" />
                        </strong></td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>

