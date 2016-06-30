<%@ Page Title="" Language="C#" MasterPageFile="~/Usuarios.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Taller.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="row">
        <div class="col-md-6" itemid="u">

            <asp:Label ID="Label2" runat="server" Text="NOMBRE"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:Label ID="Label1" runat="server" Text="Contraseña"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Login in" OnClick="Button1_Click1"></asp:Button>
            <asp:Button ID="Button2" runat="server" Text="crear usuarios" OnClick="Button2_Click"></asp:Button>
            <asp:Label ID="Label3" runat="server" Text="cheque su usuario o contraseña" Visible="false"></asp:Label>
        </div>

    </section>
</asp:Content>
