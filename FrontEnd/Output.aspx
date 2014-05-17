<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Output.aspx.cs" Inherits="FrontEnd.Output" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="container">
        <h3>Output</h3>
        <span><a href="Reports.aspx">Run a Stored Report</a></span>
        <div class="form-group">

            <asp:TextBox ID="TextBox1" CssClass="form-control" Rows="15" Columns="100" runat="server" TextMode="MultiLine"></asp:TextBox>


        </div>

        <div class="form-group">
            <asp:Button ID="ButtonExportToCsv" runat="server" class="form-control" Text="Export to CSV" CssClass="btn btn-default" OnClick="ButtonExportToCSV_Click" />
            <asp:Button ID="ButtonExportToText" runat="server" class="form-control" Text="Export to TXT" CssClass="btn btn-default" OnClick="ButtonExportToText_Click" />

        </div>


    </div>


</asp:Content>
