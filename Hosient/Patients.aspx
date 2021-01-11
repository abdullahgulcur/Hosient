<%@ Page Title="Patients" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Patients.aspx.cs" Inherits="Hosient.Patients" %>


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

    <h3> Register Patient </h3>
    
    <table>
            <tr>
                <td>
                    <asp:Label ID="LabelFirstName" runat="server" Text="First Name"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtFirstName" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LabelLastName" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtLastName" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LabelGender" runat="server" Text="Gender"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:RadioButtonList ID="RadioButtonListGender" runat="server" Font-Strikeout="false" RepeatDirection="Horizontal" Width="300px"> 
                        <asp:ListItem> Male </asp:ListItem>
                        <asp:ListItem> Female </asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LabelDateOfBirth" runat="server" Text="Date Of Birth"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtDateOfBirth" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LabelHeight" runat="server" Text="Height"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtHeight" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LabelWeight" runat="server" Text="Weight"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtWeight" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LabelBloodType" runat="server" Text="Blood Type"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtBloodType" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LabelPhoneDescription" runat="server" Text="Phone Description"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtPhoneDescription" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LabelPhone" runat="server" Text="Phone"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtPhone" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LabelAddressDescription" runat="server" Text="Address Description"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtAddressDescription" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LabelAdddress" runat="server" Text="Adddress"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Height="65px" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    
                </td>
                <td colspan="2">
                    <asp:Button ID="btnSave" runat="server" Text="Add Patient" OnClick="btnSave_Click"/>
                </td>
            </tr>
            <tr>
                <td>
                    
                </td>
                <td colspan="2">
                    <asp:Label ID="lblSuccessMessage" runat="server" Text="" ForeColor="Green"></asp:Label>
                </td>
                <tr>
                <td>
                    
                </td>
                <td colspan="2">
                    <asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            </tr>
        </table>

    <h3> Hospitalized Patients </h3>

    <asp:GridView ID="hospitalizedPatients" runat="server" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField DataField="roomNumber" HeaderText="Room Number" />
            <asp:BoundField DataField="patientName" HeaderText="Patient First Name" />
            <asp:BoundField DataField="patientSurname" HeaderText="Patient Last Name" />
            <asp:BoundField DataField="doctorName" HeaderText="Doctor Last Name" />
            <asp:BoundField DataField="doctorPhoneNumber" HeaderText="Doctor Phone NUmber" />
        </Columns>
    </asp:GridView>

     <h3> Patient With Kins </h3>

    <asp:GridView ID="patientWithKins" runat="server" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField DataField="Patient Full Name" HeaderText="Patient Name" />
            <asp:BoundField DataField="Patient's Kin Full Name" HeaderText="Kin Name" />
            <asp:BoundField DataField="Kin's Phone Number" HeaderText="Kin Phone" />
        </Columns>
    </asp:GridView>
</asp:Content>
