<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="_202013829_Tejvir_WebProject.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        .bdy {
            background-color: #d6f3ff;
            text-align: center;
            font-family: 'Merriweather', serif;
        }

        h1 {
            font-size: 3.625rem;
            margin: 50px auto 0 auto;
            font-family: 'Sacramento', cursive;
            color: #66BFBF;
        }


        .btn {
            background: #11cdd4;
            background-image: -webkit-linear-gradient(top, #11cdd4, #11999e);
            background-image: -moz-linear-gradient(top, #11cdd4, #11999e);
            background-image: -ms-linear-gradient(top, #11cdd4, #11999e);
            background-image: -o-linear-gradient(top, #11cdd4, #11999e);
            background-image: linear-gradient(to bottom, #11cdd4, #11999e);
            -webkit-border-radius: 8;
            -moz-border-radius: 8;
            border-radius: 8px;
            font-family: 'Montserrat', sans-serif;
            color: #ffffff;
            font-size: 20px;
            padding: 10px 20px 10px 20px;
            text-decoration: none;
            margin: 10px auto 10px
        }

            .btn:hover {
                background: #30e3cb;
                background-image: -webkit-linear-gradient(top, #30e3cb, #2bc4ad);
                background-image: -moz-linear-gradient(top, #30e3cb, #2bc4ad);
                background-image: -ms-linear-gradient(top, #30e3cb, #2bc4ad);
                background-image: -o-linear-gradient(top, #30e3cb, #2bc4ad);
                background-image: linear-gradient(to bottom, #30e3cb, #2bc4ad);
                text-decoration: none;
            }

        .container {
            margin: 150px 70px 150px 70px;
            text-align: center;
        }

        .tbl{
            margin: 0 auto 0 auto;
        }

    </style>

    <title>Login Page</title>

</head>
<body class="bdy">

    <h1>Saint Michel Technology Institution</h1>

    <form runat="server">
        <div class="container">
            <table class="tbl">
                <tr>
                    <td>
                        <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn" OnClick="btnLogin_Click" />

        </div>
    </form>
</body>
</html>
