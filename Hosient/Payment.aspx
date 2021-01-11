<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" MasterPageFile="~/Site.Master" Inherits="Hosient.Payment" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    
    <h2><%: Title %></h2>

    <style>
        table, th, td {
          padding: 5px;
        }
        table {
          border-spacing: 15px;
        }
    </style>

    <h2> Payment Item </h2>

    <table>
            <tr>
                <td>
                    <asp:Label ID="LabelPatientBillID" runat="server" Text="Patient Bill ID"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtPatientBillID" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LabelItemFormCode" runat="server" Text="Item Form Code"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtItemFormCode" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LabelItemDescription" runat="server" Text="Item Description"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtItemDescription" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LabelChargeAmount" runat="server" Text="ChargeAmount"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtChargeAmount" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <asp:Button ID="btnSave" runat="server" Text="Add Payment" OnClick="btnSave_Click"/>
                </td>
            </tr>
            
        </table>

</asp:Content>