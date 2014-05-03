<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FrontEnd._Default" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">


<div class="container login">
    <div class="row">
		<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			    	<h3 class="panel-title">Please sign in</h3>
			 	</div>
			  	<div class="panel-body">
                    <fieldset>
			    	  	<div class="form-group">
                              <asp:TextBox ID="TxtUsername" runat="server" class="form-control" placeholder="Username"></asp:TextBox>
			    		</div>
			    		<div class="form-group">
                            <asp:TextBox ID="TxtPassword" TextMode="Password" runat="server" class="form-control" placeholder="Password"></asp:TextBox>
			    		</div>
			    		<div class="checkbox">
			    	    	<label>
			    	    		<input name="remember" type="checkbox" value="Remember Me"> Remember Me
			    	    	</label>
			    	    </div>
                        <asp:Button class="btn btn-lg btn-success btn-block" ID="ButtonSubmit" OnClick="Login" runat="server" Text="Login" />
			    	</fieldset>
			    </div>
			</div>
               <asp:Label ID="LblMsg" style="color: red" runat="server" Text=""></asp:Label>

		</div>
	</div>
</div>  






</asp:Content>
