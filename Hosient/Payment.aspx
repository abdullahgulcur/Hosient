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
                    <asp:Button ID="ButtonAddPaymentItem" runat="server" Text="Add Payment" OnClick="ButtonAddPaymentItem_Click"/>
                </td>
            </tr>
            
        </table>

        <asp:GridView ID="paymentItems" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="paymentItemID" HeaderText="Payment Item ID" />
                <asp:BoundField DataField="patientBillID" HeaderText="Patient Bill ID" />
                <asp:BoundField DataField="itemFormCode" HeaderText="Item Form Code" />
                <asp:BoundField DataField="itemDescription" HeaderText="Item Description" />
                <asp:BoundField DataField="chargeAmount" HeaderText="Charge Amount" />

            </Columns>
        </asp:GridView>

    <h2> Payment Method </h2>

    <table>
            <tr>
                <td>
                    <asp:Label ID="LabelPatientBillID1" runat="server" Text="Patient Bill ID"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtPatientBillID1" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LabelPaymentMethod" runat="server" Text="Payment Method"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtPaymentMethod" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LabelAmount" runat="server" Text="Amount"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtAmount" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <asp:Button ID="ButtonAddPaymentMethod" runat="server" Text="Add Payment Method" OnClick="ButtonAddPaymentMethod_Click"/>
                </td>
            </tr>
            
        </table>

        <asp:GridView ID="paymentMethods" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="paymentMethodID" HeaderText="Payment Method ID" />
                <asp:BoundField DataField="patientBillID" HeaderText="Patient Bill ID" />
                <asp:BoundField DataField="PaymentMethod" HeaderText="Payment Method" />
                <asp:BoundField DataField="amount" HeaderText="Amount" />

            </Columns>
        </asp:GridView>

    <h2> Debt Of Patient </h2>

    <asp:GridView ID="debtOfPatient" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="fName" HeaderText="First Name" />
                <asp:BoundField DataField="lName" HeaderText="Last Name" />
                <asp:BoundField DataField="Debt" HeaderText="Debt" />
                <asp:BoundField DataField="patientBillID" HeaderText="Patient Bill ID" />
            </Columns>
        </asp:GridView>

</asp:Content>