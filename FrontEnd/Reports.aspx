<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="FrontEnd.Reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <h1>Reports</h1>

        <h2>Stored Reports</h2>
    <asp:GridView ID="GridView1" CssClass="table" runat="server" OnRowCommand="GridView1_RowCommand" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="ReportID">
        <Columns>
            <asp:BoundField DataField="ReportID" HeaderText="ReportID" SortExpression="ReportID" InsertVisible="False" ReadOnly="True"></asp:BoundField>
            <asp:BoundField DataField="ReportHeader" HeaderText="ReportHeader" SortExpression="ReportHeader"></asp:BoundField>
            <asp:BoundField DataField="ReportName" HeaderText="ReportName" SortExpression="ReportName"></asp:BoundField>
            <asp:ButtonField Text="Submit" ButtonType="Button" HeaderText="Run Report"></asp:ButtonField>

        </Columns>
    </asp:GridView>

    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ReportProjectDBConnectionString %>' SelectCommand="SELECT [ReportHeader], [ReportName], [ReportID] FROM [Reports]"></asp:SqlDataSource>
    
    
    
    
    
    <h2>Upload New Report</h2>

    <asp:TextBox ID="TextBox1" Rows="10" Columns="100" runat="server" TextMode="MultiLine"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Submit" />
</asp:Content>
