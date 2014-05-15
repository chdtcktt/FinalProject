<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="FrontEnd.Upload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

       <div id="container">
           <h3>Upload New Report</h3>
           <span><a href="Reports.aspx">Run a Stored Report</a></span>

           <div class="form-group">
               <label>Name</label>
               <asp:TextBox ID="TextBoxName" CssClass="form-control" runat="server"></asp:TextBox>

           </div>

           <div class="form-group">
               <label>Header</label>
               <asp:TextBox ID="TextBoxHeader" CssClass="form-control" runat="server"></asp:TextBox>
           </div>
           <div class="form-group">
               <label>Connection String(Data Source=.\sqlexpress;Initial Catalog=northwind;Integrated Security=True)</label>
               <asp:TextBox ID="TextConString" CssClass="form-control" runat="server"></asp:TextBox>
           </div>

           <div class="form-group">
               <label>SQL</label>
               <asp:TextBox ID="TextBoxSQL" Rows="15" Columns="50" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
           </div>



           <asp:Button ID="Button1" runat="server" CssClass="btn btn-default" Text="Submit" OnClick="Button1_Click" />

       </div>


    
</asp:Content>
