<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Hosient.Login" %>

<!DOCTYPE html>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

.input {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

.button {
  background-color: #429bf5;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #429bf5;
}

.imgcontainer {
    width: 30%;
  text-align: center;
  margin: auto;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
    width: 25%;
  padding: 16px;
  margin: auto;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {

     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
</head>
<body>


<form runat="server">
  <div class="imgcontainer">
    <img src="Resources/avatar.png" alt="Avatar" class="avatar">
  </div>

  <div class="container" >

    <label for="uname"><b>Username</b></label>

    <asp:TextBox ID="txtUserName" runat="server" class="input" ></asp:TextBox>

    <label for="psw"><b>Password</b></label>

    <asp:TextBox ID="txtPassword" runat="server" class="input"></asp:TextBox>
        
    <asp:Button class="button" ID="LoginButton" runat="server" Text="Login" OnClick="Button1_Click"/>
  
  </div>

</form>

</body>
</html>
