<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Epicode_S3_L2_BackEnd.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" class="d-flex flex-column align-items-center" runat="server">
        <h1 class="mb-3">Epicode Multisala Login</h1>
        <div class="w-25">
            <div class="row mb-3 d-flex justify-content-center">
                <label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator1"
                        ControlToValidate="TextBox1"
                        runat="server"
                        ForeColor="Red"
                        ErrorMessage="Email obbligatoria">
                    </asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row mb-3">
                <label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator2"
                        ControlToValidate="TextBox2"
                        ForeColor="Red"
                        runat="server"
                        ErrorMessage="Password obbligatoria">
                    </asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-sm-10 offset-sm-2">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="Check" />
                        <label class="form-check-label" for="gridCheck1">
                            Accetti i termini e condizioni d'uso
                        </label>
                    </div>
                </div>
            </div>
            <div class="d-flex justify-content-center">
                <asp:Button ID="Button1" class="btn btn-primary mb-3" runat="server" Text="Login" OnClick="Button1_Click" />
            </div>
            <asp:ValidationSummary ID="ValidationSummary1" CssClass="alert alert-danger" runat="server" />
        </div>
    </form>
</body>
</html>
