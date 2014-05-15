<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="FrontEnd.Reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

   <div id="container">
       <h1>Reports</h1>

        <h3>Stored Reports</h3>
       <span><a href="Upload.aspx">Upload New Report</a></span>
       <asp:GridView ID="GridView1" CssClass="table" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" runat="server" AutoGenerateColumns="False" DataKeyNames="ReportID" DataSourceID="SqlDataSource1">
           <Columns>
               <asp:BoundField DataField="ReportID" HeaderText="ReportID" ReadOnly="True" InsertVisible="False" SortExpression="ReportID"></asp:BoundField>
               <asp:BoundField DataField="ReportName" HeaderText="ReportName" SortExpression="ReportName"></asp:BoundField>
               <asp:BoundField DataField="ReportHeader" HeaderText="ReportHeader" SortExpression="ReportHeader"></asp:BoundField>
               <asp:BoundField DataField="ReportQuery" HeaderText="ReportQuery" SortExpression="ReportQuery"></asp:BoundField>
               <asp:CommandField ShowSelectButton="True"></asp:CommandField>
           </Columns>
       </asp:GridView>
       <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ReportProjectDBConnectionString %>' SelectCommand="SELECT [ReportID], [ReportName], [ReportHeader], [ReportQuery] FROM [Reports]"></asp:SqlDataSource>
   </div>

</asp:Content>
