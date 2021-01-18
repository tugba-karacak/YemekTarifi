<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="YemekDuzenle.aspx.cs" Inherits="YemekDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10 {
            text-align: right;
            font-size: large;
        }
        .auto-style11 {
            border: 2px solid #765942;
            border-radius: 10px;
        }
    .auto-style12 {
        border: 2px solid #777;
        border-radius: 10px;
        outline: none;
        font-size: large;
    }
    .auto-style13 {
        border: 2px solid #777;
        border-radius: 10px;
        outline: none;
        font-size: large;
        background-color: #FFCC99;
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
                        <td class="auto-style10">Yemek Ad:</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="tab5"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10">Malzemeler:</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style11" Height="87px" TextMode="MultiLine" Width="229px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10">Tarif:</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style11" Height="169px" TextMode="MultiLine" Width="226px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10">Resim:</td>
                        <td>
                            <asp:FileUpload ID="FileUpload1" runat="server" Width="235px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10">Kategori:</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="234px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style8">
                            <asp:Button ID="Button1" runat="server" CssClass="auto-style12" Height="35px" OnClick="Button1_Click" Text="Güncelle" Width="126px" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style8"><strong>
                            <asp:Button ID="Button2" runat="server" CssClass="auto-style13" OnClick="Button2_Click" Text="Günün Yemegi Seç" Width="210px" />
                            </strong></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

