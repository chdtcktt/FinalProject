<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Output.aspx.cs" Inherits="FrontEnd.Output" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="container">
        <h3>Output</h3>
            <asp:TextBox ID="TextBox1" Rows="30" Columns="100" runat="server" TextMode="MultiLine"></asp:TextBox>

    </div>
</asp:Content>
