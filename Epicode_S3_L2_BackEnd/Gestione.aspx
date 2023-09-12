<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gestione.aspx.cs" Inherits="Epicode_S3_L2_BackEnd.Gestione" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" class="d-flex flex-column align-items-center" runat="server">
        <h1 class="mb-3">Epicode Multisala</h1>
        <div class="w-25">
            <div class="row mb-3 d-flex justify-content-center">
                <label for="inputNome" class="col-sm-2 col-form-label">Nome</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator1"
                        ControlToValidate="TextBox1"
                        runat="server"
                        ForeColor="Red"
                        ErrorMessage="Nome obbligatorio">
                    </asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row mb-3">
                <label for="inputCognome" class="col-sm-2 col-form-label">Cognome</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator2"
                        ControlToValidate="TextBox2"
                        ForeColor="Red"
                        runat="server"
                        ErrorMessage="Cognome obbligatorio">
                    </asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="col-auto mb-3">
                <label class="visually-hidden" for="autoSizingSelect">Preference</label>
                <select class="form-select" id="autoSizingSelect">
                    <option selected>Scegli la sala...</option>
                    <option value="1">SALA NORD</option>
                    <option value="2">SALA EST</option>
                    <option value="3">SALA SUD</option>
                </select>
            </div>
            <div class="col-auto mb-3">
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="autoSizingCheck" />
                    <label class="form-check-label" for="autoSizingCheck">
                        Ridotto
                    </label>
                </div>
            </div>
            <div class="col-auto d-flex justify-content-center mb-3">
                <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Prenota" OnClick="Button1_Click" />
            </div>
        </div>

        <div class="container mt-5 border border-dark rounded d-flex flex-column justify-content-around align-items-center" style="width: 50em; height: 10em;">
            <h3>Informazioni utenti</h3>
            <div class="d-flex justify-content-center align-items-center border border-dark rounded" style="width: 30em; height: 2em;">
                <asp:Label ID="Label7" runat="server" Text="Biglietti venduti SALA NORD: {0}, "></asp:Label><asp:Label ID="Label8" runat="server" Text="di cui ridotti: {0}"></asp:Label>
            </div>
            <div class="d-flex justify-content-center align-items-center border border-dark rounded" style="width: 30em; height: 2em;">
                <asp:Label ID="Label1" runat="server" Text="Biglietti venduti SALA NORD: {0}, "></asp:Label><asp:Label ID="Label2" runat="server" Text="di cui ridotti: {0}"></asp:Label>
            </div>
            <div class="d-flex justify-content-center align-items-center border border-dark rounded" style="width: 30em; height: 2em;">
                <asp:Label ID="Label3" runat="server" Text="Biglietti venduti SALA NORD: {0}, "></asp:Label><asp:Label ID="Label4" runat="server" Text="di cui ridotti: {0}"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
