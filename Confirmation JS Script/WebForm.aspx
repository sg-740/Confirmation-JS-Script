<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm.aspx.cs" Inherits="Confirmation_JS_Script.WebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Confirmation Script</title>
    <script>
    function confirmation() 
    {
        var result = confirm("Are You Sure Of Submitting The Page To Server?")
        return result;
    }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label2" runat="server" Text="Username: "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter You Name"></asp:TextBox>
            <hr />
            <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" OnClientClick="return confirmation()" /><br />
            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
        </div>
    </form>
</body>
</html>
