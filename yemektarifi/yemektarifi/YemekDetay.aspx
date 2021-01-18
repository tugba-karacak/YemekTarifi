<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.master" AutoEventWireup="true" CodeFile="YemekDetay.aspx.cs" Inherits="YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style5 {
            font-size: x-large;
            background-color: #CCCCFF;
        }

        .auto-style6 {
            width: 100%;
        }

        .auto-style8 {
            font-size: large;
        }

        .auto-style9 {
            font-size: small;
        }
        .auto-style10 {
            background-color: #FFFFCC;
        }
        .auto-style11 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <strong>&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" CssClass="auto-style5" ForeColor="Black" Text="Label"></asp:Label>
        &nbsp;&nbsp;&nbsp; </strong>
    <br />
    <asp:DataList ID="DataList3" runat="server" Height="361px" Width="413px">
        <ItemTemplate>
            <table class="auto-style6">
                <tr>
                    <td><strong>
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style8" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </strong></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style8" Text='<%# Eval("YorumIcerik") %>'></asp:Label>
                        &nbsp; -<strong><asp:Label ID="Label7" runat="server" CssClass="auto-style9" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <div class="auto-style10">YORUM YAPILACAK PANEL</div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style6">
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <table class="auto-style6">
                        <tr>
                            <td class="auto-style11"><strong>Ad Soyad:</strong></td>
                            <td>
                                <asp:TextBox ID="txtadsoyad" runat="server" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11"><strong>Mail:</strong></td>
                            <td>
                                <asp:TextBox ID="txtmail" runat="server" TextMode="Email" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11"><strong>Yorumunuz:</strong></td>
                            <td>
                                <asp:TextBox ID="txtyorum" runat="server" Height="50px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style2">
                                <asp:Button ID="Button1" runat="server" BackColor="#CC33FF" Height="34px" OnClick="Button1_Click" Text="Yorum Yap" Width="122px" />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

