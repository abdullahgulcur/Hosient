<%@ Page Title="Doctors" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" EnableEventValidation="false"  CodeBehind="Doctors.aspx.cs" Inherits="Hosient.Doctors" %>


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
                    <asp:Label ID="LabelDateOfBirth" runat="server" Text="Date Of Birth"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtDateOfBirth" runat="server" Width="300px"></asp:TextBox>
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
                    <asp:Label ID="LabelTitle" runat="server" Text="Title"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtTitle" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LabelSpecialty" runat="server" Text="Specialty"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtSpecialty" runat="server" Width="300px"></asp:TextBox>
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
                    <asp:Button ID="btnSave" runat="server" Text="Add Doctor" OnClick="btnSave_Click"/>
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


    <asp:GridView ID="gvContact" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="personID" HeaderText="ID" />
                <asp:BoundField DataField="title" HeaderText="Title" />
                <asp:BoundField DataField="specialty" HeaderText="Specialty" />
                <asp:BoundField DataField="FullName" HeaderText="Full Name" />

             

                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="deleteButton" runat="server" Text="Delete" 
                                    OnClick="DeleteButtonClick" />
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
        </asp:GridView>
</asp:Content>
