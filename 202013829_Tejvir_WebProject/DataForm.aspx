<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataForm.aspx.cs" Inherits="_202013829_Tejvir_WebProject.DataForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Merriweather&family=Montserrat&family=Sacramento&display=swap" rel="stylesheet">

    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
            text-align: center;
        }

        .auto-style2 {
            width: 141px;
            height: 289px;
        }

        .auto-style3 {
            height: 289px;
        }

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
            border: solid 1px grey;
            padding: 1px 2px 1px 2px;
            border-radius: 8px;
            margin: 3px 2px;
            background-color:#66BFBF;
        }

    </style>
    <title>SMTI</title>
</head>
<body class="bdy">
    <h1 class="auto-style1">Saint Michel Technology Institution</h1>
    <form id="form1" runat="server">
        <div class="alert">
            <table align="center" class="auto-style">
                <tr>
                    <td class="auto-style2">

                        <asp:Label ID="lblName" runat="server" Text="Label"> Select a Teacher </asp:Label>
                        <br />
                        <asp:ListBox ID="lstTeacher" runat="server" AutoPostBack="true" OnSelectedIndexChanged="lstTeacher_OnSelectedIndexChanged" Width="100px"></asp:ListBox>

                        &nbsp;</td>

                    <td class="auto-style3">
                        <table class="auto-style4" align="center">

                            <tr>
                                <td class="auto-style8">
                                    <asp:Label ID="lblEmployeeId" runat="server" Text="Employee Id:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtEmployeeId" ReadOnly="true" runat="server"></asp:TextBox>
                                </td>
                            </tr>


                            <tr>
                                <td class="auto-style8">
                                    <asp:Label ID="lblCourseCode" runat="server" Text="Course Code:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtCourseCode" ReadOnly="true" runat="server"></asp:TextBox>
                                </td>
                            </tr>


                            <tr>
                                <td class="auto-style8">
                                    <asp:Label ID="lblGroupNumber" runat="server" Text="Group Number:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtGroupNumber" ReadOnly="true" runat="server"></asp:TextBox>
                                </td>
                            </tr>

                            <tr>
                                <td class="auto-style8">
                                    <asp:Label ID="lblAssignedDate" runat="server" Text="Assigned Date:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtAssignedDate" ReadOnly="true" runat="server"></asp:TextBox>
                                </td>
                            </tr>

                        </table>
                    </td>

                    <td class="auto-style3">
                        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" CssClass="btn" />
                        <br />
                        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" CssClass="btn"/>
                        <br />
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" CssClass="btn"/>
                    </td>





                </tr>


                <tr>
                    <td colspan="3" class="auto-style11">
                        <asp:GridView ID="gridresults" runat="server" BackColor="White" BorderColor="YellowGreen" BorderStyle="None"
                            BorderWidth="1px" CellPadding="5" GridLines="Vertical" CssClass="table table-condensed table-hover">
                        </asp:GridView>
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="2">&nbsp;</td>

                    <td class="auto-style11">&nbsp;</td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>
