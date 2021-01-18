<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.master" AutoEventWireup="true" CodeFile="anasayfam.aspx.cs" Inherits="anasayfam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            font-size: x-large;
            background-color: #FFFFFF;
        }
        .auto-style8 {
            text-align: center;
            background-color: #FFFFFF;
        }
        .auto-style9 {
            text-align: left;
        }
    .auto-style10 {
        height: 23px;
    }
    .auto-style11 {
        width: 387px;
        float: left;
        height: auto;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--  <p>
    
    </p>--%>
    <asp:DataList ID="DataList3" runat="server" Width="416px">
        <ItemTemplate>
            <table class="auto-style11">
                <tr>

                    <td class="auto-style8"><strong>
                       <a href="YemekDetay.aspx?YemekId=<%# Eval("YemekId") %>"> <asp:Label ID="Label4" runat="server" CssClass="auto-style6" Text='<%# Eval("YemekAd") %>'></asp:Label></a>
                        </strong></td>


                </tr>
                <tr>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td><strong><em>Malzemeler:</em></strong><asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9"><strong><em>Yemek Tarifi:</em></strong><asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><strong><em>Eklenma Tarihi:</em></strong> <em>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        </em>&nbsp;&nbsp; <em><strong>-&nbsp;&nbsp;&nbsp;&nbsp; Puanı:</strong></em>
                        &nbsp; <em>
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        </em>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

