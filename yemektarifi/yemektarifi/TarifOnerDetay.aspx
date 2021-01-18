<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="TarifOnerDetay.aspx.cs" Inherits="TarifOnerDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style10 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style6">
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <table class="auto-style7">
                        <tr>
                            <td class="auto-style10"><strong>Tarif Ad:</strong></td>
                            <td>
                                <asp:TextBox ID="txttarifad" runat="server" CssClass="tab5"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10"><strong>Malzemeler:</strong></td>
                            <td>
                                <asp:TextBox ID="txtmalzemeler" runat="server" CssClass="tab5"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10"><strong>Yapılış:</strong></td>
                            <td>
                                <asp:TextBox ID="txtyapilis" runat="server" CssClass="auto-style8" Height="67px" TextMode="MultiLine" Width="233px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10"><strong>Resim:</strong></td>
                            <td>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10"><strong>Tarif Öneren:</strong></td>
                            <td>
                                <asp:TextBox ID="txttarifoneren" runat="server" CssClass="tab5"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10"><strong>Mail Adresi:</strong></td>
                            <td>
                                <asp:TextBox ID="txtmail" runat="server" CssClass="tab5"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10">K<strong>ategori: </strong></td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="tab5">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button ID="Button2" runat="server" CssClass="fb8" Height="39px" OnClick="Button1_Click" Text="Onayla" Width="173px" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

