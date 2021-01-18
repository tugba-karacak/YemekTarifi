<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Yorumlar.aspx.cs" Inherits="Yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style10 {
            background-color: #CCFFFF;
        }
        .auto-style13 {
            width: 40px;
        }
        .auto-style15 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style14 {
            width: 42px;
        }
        .auto-style12 {
            width: 187px;
        }
        .auto-style11 {
        text-align: right;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style10">
        <table class="auto-style7">
            <tr>
                <td class="auto-style13">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style15" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style14">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style15" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click1" />
                </td>
                <td>ONAYLANAN YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>

        <asp:Panel ID="Panel3" runat="server">
            <asp:DataList ID="DataList1" runat="server"  Width="412px" >
                <ItemTemplate>
                    <table class="auto-style7">
                        <tr>
                            <td class="auto-style12">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </td>
                            <td class="auto-style11">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/iconlar/updateee.png" Width="60px" />
                            </td>
                            <td class="auto-style11">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/delete.png" Width="60px" />
                            </td>
                         
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
     <asp:Panel ID="Panel2" runat="server"   style="margin-top:15px" CssClass="auto-style10">
         <table class="auto-style7">
             <tr>
                 <td class="auto-style13">
                     <asp:Button ID="Button3" runat="server" CssClass="auto-style15" Height="30px" Text="+" Width="30px" OnClick="Button3_Click"  />
                 </td>
                 <td class="auto-style14">
                     <asp:Button ID="Button4" runat="server" CssClass="auto-style15" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click" />
                 </td>
                 <td>ONAYSIZ YORUM LİSTESİ</td>
             </tr>
         </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="412px">
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style12">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style11">
                        <a href="YorumDetay.aspx?YorumId=<%# Eval("YorumId") %>">  <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/iconlar/updateee.png" Width="60px" /></a>  
                        </td>
                        <td class="auto-style11">
                            <asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/iconlar/delete.png" Width="60px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
</asp:Content>

